install: .vimrc
	cp .vimrc ${HOME} \

vundle:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
	&& vim -c "PluginInstall"

install-vim:
	echo "To Be Done."
	
