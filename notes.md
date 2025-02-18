# notes

Add to `.bashrc`

```
alias vim="nvim"
export PS1="channing:\W "
```

Add to `.zshrc`
```
alias vim="nvim"
export PS1="channing:%1~ "
```

## vcpkg
Install/setup steps
- ./vcpkg/bootstrap-vcpkg.sh -disableMetrics
- ./vcpkg/vcpkg integrate install
- ./vcpkg/vcpkg integrate zsh (or bash, etc.)

### neovim/vcpkg
To create the compile_commands.json:
cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=1

Manually adding the include paths: 
-Ibuild/vcpkg_installed/x64-linux/include

## go

### Install go on rpi

Check rpi arch with `uname -m`, it may be arm64 or armv7l
Download the binary release go from go release site, ex. `wget https://go.dev/dl/go1.22.3.linux-arm64.tar.gz`
Extract it `sudo tar -C /usr/local -xzf go1.14.4.linux-arm64.tar.gz` (then delete it)
Add go path to `.bashrc` using `PATH=$PATH:/usr/local/go/bin`
