# Local Configuration + Overrides

Create files `prehook.zsh` and `posthook.zsh` to inject custom zsh configurations or override existsing configurations at various points during the setup process. `prehook.zsh` will be sourced before sourcing any other zsh configuration files, and `posthook.zsh` will be sourced as the very last step. Neither of these files are checked into source control, so feel free to include machine-specific configurations.

## Disabling Zsh Features
To disable zsh featuers on this machine, add the following to your `prehook.zsh`:
```zsh
ZSH_FEATURES[p10k]=0
ZSH_FEATURES[syntax-highlighting]=0
# etc...
```

