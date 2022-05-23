#!/bin/bash

echo "start setup..."

# Homebrew
echo "installing Homebrew ..."
which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "run brew doctor ..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update ..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade ..."
brew upgrade

brew bundle

brew cleanup

# Volta
echo "installing Volta ..."
which brew >/dev/null 2>&1 || /bin/bash -c "$(curl https://get.volta.sh | bash)"

# Starship
echo "installing Starship..."
which starship >/dev/null 2>&1 || /bin/bash -c "$(curl -sS https://starship.rs/install.sh | sh)"

# dotfiles
for file in .gitconfig .zprofile .zshrc
do
    [ ! -e $file ] && ln -s $HOME/dotfiles/$file $HOME/$file
done

# config kitty
mkdir -p $HOME/.config/kitty
ln -s $HOME/dotfiles/kitty/config.yml $HOME/.config/kitty/config.yml
ln -s $HOME/dotfiles/kitty/theme.yml $HOME/.config/kitty/theme.yml

# config karabiner
mkdir -p $HOME/.config/karabiner
ln -s $HOME/dotfiles/karabiner/karabiner.json $HOME/.config/karabiner/karabiner.json
mkdir -p $HOME/.config/karabiner/assets/complex_modifications
cp $HOME/dotfiles/karabiner/assets/complex_modifications/1618627087.json $HOME/.config/karabiner/assets/complex_modifications/1618627087.json
cp $HOME/dotfiles/karabiner/assets/complex_modifications/1618797884.json $HOME/.config/karabiner/assets/complex_modifications/1618797884.json
