default:
  @just --list

install:
  stow --help || yay -S stow
  stow -v -R -t ~ git
  stow -v -R -t ~ zsh
  stow -v -R -t ~ tmux
  mkdir -p ~/.config/alacritty
  stow -v -R -t ~/.config/alacritty alacritty
  mkdir -p ~/.config/k9s
  stow -v -R -t ~/.config/k9s k9s
  mkdir -p ~/.config/Code/User
  stow -v -R --ignore=extensions -t ~/.config/Code/User vscode
