# Description
This is the vim configuration that I am using. Feel free to use it.

# Installation
If you have current vim setup, make a backup first.

	mv ~/.vim ~/vim_backup  
	mv ~/.vimrc ~/vim_backup/vimrc  

Then clone the repo into your .vim folder.

	git clone git@github.com:emoosx/dotvim.git ~/.vim  
	cd ~/.vim  

The plugin system is managed by [NeoBundle](http://github.com/Shougo/neobundle.vim). Launch `vim` and run `:NeoBundleInstall!`.

And create a symbolic link so that ~/.vimrc points to the ~/.vim/vimrc file.

	ln -s ~/.vim/vimrc ~/.vimrc
    
