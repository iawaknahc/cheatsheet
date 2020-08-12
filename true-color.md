# A guide to enable true color in VIM with tmux and iTerm2.

## Install an up-to-date terminfo database

```sh
# The following command install to $HOME/.terminfo
curl -sSL http://invisible-island.net/datafiles/current/terminfo.src.gz | gunzip >/tmp/terminfo.src
TERMINFO="$HOME/.terminfo" tic /tmp/terminfo.src
```

## Verify the installation is successful.

```sh
infocmp iterm2
```

## Tell iTerm2 to set TERM to `iterm2`.

## Set `default-terminal` and `terminal-overrides` to proper value in tmux.

```sh
# By default `default-terminal` is screen.
# Setting it to `tmux` enables features like italic.
set-option -g default-terminal "tmux"

# Tell tmux that `iterm2` (the terminal emulator outside tmux) supports true color.
set-option -g terminal-overrides ",iterm2:Tc"
```

## Turn on `termguicolors` in VIM.

```vimscript
" In vanilla VIM, according to :h xterm-true-color
" t_8f and t_8b are only set when $TERM is xterm*
" In tmux, $TERM is screen by default.
" Therefore, we have to set them explicitly here.
if !has('nvim')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set termguicolors
syntax on
colorscheme some_true_colorscheme
```
