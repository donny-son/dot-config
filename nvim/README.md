# My init.vim

## How to 
After installing neovim clone this repo into ```~/.config/nvim```. 
```
git clone git@github.com:donny-son/nvim-config.git ~/.config/nvim
```

## Dependencies

### Languages
Need to install python and golang.

### Plugin Manager
Install plugin mananger ```vim-plug``` with the following command.
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
Install all plugins by ```:PlugInstall``` in nvim.

### Coc Settings 
Install python language server in the python environment prior to installing all Coc plugins. 
```
pip install -U jedi-language-server
```
Install coc dependencies. 
```
:CocInstall coc-jedi coc-json coc-pairs
```




