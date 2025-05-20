# notes

Add to `.bashrc`

```
alias vim='nvim'
export PS1="channing:\W "
```

Add to `.zshrc`
```
alias vim='nvim'
export PS1="channing %1~ $ "
autoload -U +X bashcompinit && bashcompinit
```

## go

### Install go on rpi

Check rpi arch with `uname -m`, it may be arm64 or armv7l
Download the binary release go from go release site, ex. `wget https://go.dev/dl/go1.22.3.linux-arm64.tar.gz`
Extract it `sudo tar -C /usr/local -xzf go1.14.4.linux-arm64.tar.gz` (then delete it)
Add go path to `.bashrc` using `PATH=$PATH:/usr/local/go/bin`
