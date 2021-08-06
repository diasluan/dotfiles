git config --global user.name "Luan Dias"
git config --global user.email lucandidoan@gmail.com

# install homebrew and packages
if [[ $(which brew) == "brew not found" ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew install fzf
brew install macvim
brew install zsh-syntax-highlighting
brew install thefuck
brew install tmux

# install zsh
if [[ $(which zsh) == "zsh not found" ]]; then
    brew install zsh
fi


# install oh-my-zsh and plugins
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k\

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions && zsh && autoload -U compinit && compinit


# install colorls
gem install colorls


# install language envs
brew install node
brew install pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
brew install rbenv
