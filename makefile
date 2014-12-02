help:
	@echo "install - installs vim setup"

install: clean linkrc clone pluginstall
	@echo "installing vim environment"

clone:
	@git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim	

pluginstall:
	@vim +PluginInstall +qall

linkrc:
	@ln -s `pwd`/vimrc ~/.vimrc

clean:
	@rm -rf ~/.vim/bundle/
	@touch ~/.vimrc && mv ~/.vimrc ~/.vimrc.backup
