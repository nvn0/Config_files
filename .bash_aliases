

# Create custom commands or commands shortcuts
# alias {custom name to the command}='{comand}'

# Adicionar os comandos em /home/$USER/.bashrc ou em /home/$USER/.bash_aliases



### Comandos

alias myip="echo $(ifconfig | grep broadcast | awk '{print $2}')"

alias ips='ip -c -br a'

alias p='pgrep'

alias ..='cd ..'

alias mkdir='mkdir -pv'

alias update='sudo apt update && sudo apt upgrade -y'

alias clean='sudo apt autoremove -y && sudo apt autoclean'
