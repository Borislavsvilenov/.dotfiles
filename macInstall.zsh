echo "installing brew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/malcho/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "brew installed"
echo "installing apps"

brew bundle install --file=~/.dotfiles/Brewfile

echo "apps installed"
echo "creating symlinks"

ln -sfv ~/.dotfiles/.zshrc ~/.zshrc
ln -sfv ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sfv ~/.dotfiles/.tmux.conf ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/BorislavSvilenov/nvim.git ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim


echo "done"


