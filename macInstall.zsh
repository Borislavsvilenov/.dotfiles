echo "installing brew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "brew installed"
echo "installing apps"

brew bundle --file=~/.dotfiles/Brewfile

echo "apps installed"
echo "creating symlinks"

ln -sfv ~/.dotfiles/.zshrc ~/.zshrc
ln -sfv ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sfv ~/.dotfiles/.tmux.conf ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/BorislavSvilenov/nvim.git ~/.config/nvim
