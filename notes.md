# notes

## Neovim/vcpkg
To create the compile_commands.json:
cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=1

Manually adding the include paths: 
-Ibuild/vcpkg_installed/x64-linux/include

## vcpkg
Install/setup steps
- ./vcpkg/bootstrap-vcpkg.sh -disableMetrics
- ./vcpkg/vcpkg integrate install
- ./vcpkg/vcpkg integrate zsh (or bash, etc.)
