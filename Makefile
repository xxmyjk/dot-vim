install: .vimrc
	cp .vimrc ${HOME} && vim -c "PluginInstall"
