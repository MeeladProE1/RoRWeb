// Dev tool: drives a headless Chrome page via CDP, waits, then captures
// the on-screen error overlay, the game's log tail and a screenshot.
// Usage: node tools/cdp_capture.mjs <url> <waitSeconds> <screenshotPath> [logPath]
const url = process.argv[2];
const waitSeconds = parseInt(process.argv[3] || '120', 10);
const shotPath = process.argv[4] || 'shot.png';
const logPath = process.argv[5];

if (typeof WebSocket === 'undefined') {
  console.error('Node >= 22 required (global WebSocket)');
  process.exit(1);
}

const targets = await (await fetch('http://localhost:9333/json/list')).json();
const page = targets.find(t => t.type === 'page');
if (!page) { console.error('no page target'); process.exit(1); }

const ws = new WebSocket(page.webSocketDebuggerUrl);
let nextId = 1;
const pending = new Map();
function send(method, params = {}) {
  return new Promise((resolve, reject) => {
    const id = nextId++;
    pending.set(id, { resolve, reject });
    ws.send(JSON.stringify({ id, method, params }));
  });
}
ws.onmessage = (ev) => {
  const msg = JSON.parse(ev.data);
  if (msg.id && pending.has(msg.id)) {
    const p = pending.get(msg.id);
    pending.delete(msg.id);
    if (msg.error) p.reject(new Error(msg.error.message)); else p.resolve(msg.result);
  }
};
await new Promise(r => { ws.onopen = r; });

await send('Page.enable');
await send('Runtime.enable');
await send('Emulation.setDeviceMetricsOverride', { width: 1280, height: 720, deviceScaleFactor: 1, mobile: false });
await send('Page.navigate', { url });
await new Promise(r => setTimeout(r, waitSeconds * 1000));

const shot = await send('Page.captureScreenshot', { format: 'png' });
const fs = await import('node:fs');
fs.writeFileSync(shotPath, Buffer.from(shot.data, 'base64'));
console.log('screenshot ->', shotPath);

const err = await send('Runtime.evaluate', {
  expression: `JSON.stringify({
    errVisible: document.getElementById('errbox') ? getComputedStyle(document.getElementById('errbox')).display : 'n/a',
    errMsg: document.getElementById('errmsg') ? document.getElementById('errmsg').textContent : 'n/a',
    hud: document.getElementById('hud') ? document.getElementById('hud').textContent : 'n/a',
    title: document.title
  })`,
  returnByValue: true
});
console.log('overlay:', err.result.value);

if (logPath) {
  const log = await send('Runtime.evaluate', {
    expression: `window.__rorLog ? window.__rorLog.join('\\n') : ''`,
    returnByValue: true
  });
  fs.writeFileSync(logPath, log.result.value || '');
  console.log('log tail ->', logPath, '(' + ((log.result.value || '').split('\n').length) + ' lines)');
}
ws.close();
process.exit(0);
