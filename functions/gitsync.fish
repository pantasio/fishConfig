function gitsync -d "copy all change file before shutdown computer"
	cp ~/.gitconfig ~/Workspace/dotfile/
	and cp ~/.gitignore ~/Workspace/dotfile/
	and cp ~/.tmux.conf ~/Workspace/dotfile/
	and cp ~/.tmux-powerlinerc ~/Workspace/dotfile/
	and cp ~/.viminfo ~/Workspace/dotfile/
	and cp ~/.vimrc ~/Workspace/dotfile/
	and cp ~/.nvidia-settings-rc ~/Workspace/dotfile/
	and cp ~/.bashrc ~/Workspace/dotfile/
	and cp ~/.sdirs ~/Workspace/dotfile/
	and echo "Pls update submodules to github"
end