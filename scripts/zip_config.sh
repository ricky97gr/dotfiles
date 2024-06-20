# **********************************************************
# * Author           : ricky97gr
# * Email            : ricky97gr@163.com
# * Github           : https://github.com/ricky97gr
# * Create Time      : 2023-07-07 13:39
# * FileName         : zip_config.sh
# * Description      : 
# **********************************************************

print_info(){
	printf '%s\n' "start zip nvim config"
}

zip_nvim(){
	printf '%s\n' "start zip nvim config"
	tar -zcvf ~/tmp/nvim.tar.gz ~/.local/share/nvim
}

zip_dotfiles(){
	printf '%s\n' "start zip dotfiles config"

	tar -zcvf ~/tmp/dotfiles.tar.gz --exclude=".git" ~/dotfiles 
}

zip_tmux(){
	printf '%s\n' "start zip tmux config"
	tar -zcvf ~/tmp/tmux.tar.gz ~/.tmux
}

zip_oh_my_zsh(){
	printf '%s\n' "start zip oh_my_zsh config"
	tar -zcvf ~/tmp/ohmyzsh.tar.gz ~/.oh-my-zsh
}

zip_go_lsp(){
	printf '%s\n' "start zip go_lsp config"
	tar -zcvf ~/tmp/go_lsp.tar.gz ~/go/bin/
}

zip_all_config(){
	tar -zcvf ~/tmp/all_config.tar.gz ~/tmp/ohmyzsh.tar.gz ~/tmp/tmux.tar.gz ~/tmp/dotfiles.tar.gz ~/tmp/nvim.tar.gz
}

# zip_dotfiles
# zip_nvim
# zip_tmux
# zip_oh_my_zsh
#
# sleep 1
# zip_all_config
zip_go_lsp
