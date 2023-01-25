# notes

## Neovim/vcpkg
To create the compile_commands.json:
cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=1

Manually adding the include paths: 
-Ibuild/vcpkg_installed/x64-linux/include
