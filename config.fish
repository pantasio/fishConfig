#### Load fishmarks (http://github.com/techwizrd/fishmarks)
. $HOME/.fishmarks/marks.fish
set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

#### Load fish theme with bobthefish

set -g theme_display_git yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_vagrant yes
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_display_vi yes
set -g theme_display_vi_hide_mode default
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
#set -g default_user your_normal_user
set -g default_user pantasio

#### Set $EDITOR=vim
set -g -x $EDITOR vim

# Reload config.fish
function reloadfish 
	. .config/fish/config.fish
	clear
	echo "the config.fish have been reload"
	echo "Happy coding !!!"
end

# edit single line snippet
function cfg-snippetrc 
   vim ~/.snippetrc 
end

# edit multiline snippet
function cfg-multisnippetrc
	ls ~/.multisnippet | fzf -e -i | xclip -selection clipboard
	set tmpvar (xclip -selection clipboard -o)
	vim ~/.multisnippet/$tmpvar
end

#create new multiline snippet
function multisnippet 
	vim ~/.multisnippet/"$1"
end
#multisnippet() { $EDITOR ~/.multisnippet/"$1" ;}

