install: .vimrc
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
	&& cp .vimrc ${HOME} \
	&& vim -c "PluginInstall"
install-vim:
	echo "To Be Done."
	
