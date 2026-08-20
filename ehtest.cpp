#include <cstdio>
#include <stdexcept>
int main() {
    try {
        throw std::runtime_error("boom");
    } catch (std::exception& e) {
        printf("CAUGHT: %s\n", e.what());
    }
    printf("done\n");
    return 0;
}
