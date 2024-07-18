#Installing WSL:
wsl --install


# Installing Build Essentials:
sudo apt update
sudo apt install build-essential


# Installing NVM & Node.js:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 20

Bash:
export PS1="\[\033[01;32m\](\u)\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\] "

ZSH:
export PS1="%F{green}(%n)%f ➜ %F{blue}%c%f "