1. Clone repo
```
git clone --recursive git@github.com:jasonyzhang/oh-my-zsh.git
```

2. Symlink conf
```
ln -sf ~/.oh-my-zsh/.zshrc ~/.zshrc
```

3. Change default shell
```
chsh -s /bin/zsh
```


To repull submodules:
```
git submodule update --recursive
```
May need `--init` flag
