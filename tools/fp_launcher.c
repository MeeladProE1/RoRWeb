#include <windows.h>
#include <shellapi.h>
#include <stdio.h>
#include <stdlib.h>
#include <wchar.h>

#define PYTHON L"C:\\a1e\\Tests\\c1e\\C2e\\emsdk\\python\\3.13.3_64bit\\python.exe"
#define SCRIPT L"C:\\a1e\\Tests\\c1e\\C2e\\emsdk\\upstream\\emscripten\\tools/file_packager.py"

static void append_arg(wchar_t *dst, const wchar_t *arg)
{
    if (wcschr(arg, L' ') || wcschr(arg, L'"') || wcschr(arg, L'\t'))
    {
        wcscat(dst, L"\"");
        for (const wchar_t *p = arg; *p; ++p)
        {
            if (*p == L'"')
                wcscat(dst, L"\\\"");
            else
                wcsncat(dst, p, 1);
        }
        wcscat(dst, L"\"");
    }
    else
    {
        wcscat(dst, arg);
    }
}

int main(void)
{
    int argc = 0;
    LPWSTR *argv = CommandLineToArgvW(GetCommandLineW(), &argc);
    if (!argv)
        return 1;

    size_t len = wcslen(PYTHON) + wcslen(SCRIPT) + 16;
    for (int i = 1; i < argc; ++i)
        len += wcslen(argv[i]) + 8;

    wchar_t *cmd = (wchar_t *)calloc(len + 4, sizeof(wchar_t));
    if (!cmd)
        return 1;

    wcscat(cmd, L"\"");
    wcscat(cmd, PYTHON);
    wcscat(cmd, L"\" \"");
    wcscat(cmd, SCRIPT);
    wcscat(cmd, L"\"");

    for (int i = 1; i < argc; ++i)
    {
        wcscat(cmd, L" ");
        append_arg(cmd, argv[i]);
    }

    STARTUPINFOW si;
    PROCESS_INFORMATION pi;
    memset(&si, 0, sizeof(si));
    memset(&pi, 0, sizeof(pi));
    si.cb = sizeof(si);

    BOOL ok = CreateProcessW(NULL, cmd, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);
    if (!ok)
    {
        fprintf(stderr, "emcc_launcher: CreateProcessW failed (%lu)\n", GetLastError());
        LocalFree(argv);
        free(cmd);
        return 2;
    }

    WaitForSingleObject(pi.hProcess, INFINITE);
    DWORD code = 0;
    GetExitCodeProcess(pi.hProcess, &code);
    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);
    LocalFree(argv);
    free(cmd);
    return (int)code;
}
