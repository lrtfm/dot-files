#!/bin/sh

# install dot files in your home directory

script_name="install.sh"

# get base path of the script
tmp_name=$(basename dumy/$0)
if [ "$tmp_name" = "$script_name" ]
then
    base_path=$(cd `dirname $0`;pwd)
else
    base_path=$(cd $(dirname `history 1 | awk '{print $3}'`); pwd)
fi

# vim_dir=$base_path/vim
# emacs_dir=$base_path/emacs

usage()
{
    echo "install.sh   ---   Install vim or emacs dot files in your home directory"
    echo "    -h             print this doc"
    echo "    -e editor      install dot file for editor, editor can be vim or emacs,"
    echo "                   default:all"
    echo "    -y             enable youcompleteme for vim, default disable"
    echo ""
}



editor="all"
while getopts "hye:" opt
do
    case $opt in
	h) 
	    usage  
	    exit 0 
	    ;;
	y) 
	    ycm=1 
	    ;;
	e)
	    editor=$OPTARG ;;
	*) 
	    exit 1
	    ;;
    esac
done

# shift $(($OPTIND-1))

dest_dir="$HOME"
suffix=.bak-`date +%Y%m%d%H%M%S`
backup()
{
    name="$1"
    suffix="$2"
    if [ -f "$name" -o -d "$name" ]
    then
	mv "$name" "$name$suffix"
    fi
}

# install dot vim files
install_vim ()
{
    vundle_url=https://github.com/VundleVim/Vundle.vim.git
    
    echo "Install vim dot files begin"
    backup "$dest_dir/.vimrc" "$suffix"
    if [ s$ycm = s1 ]
    then
        sed 's/^"[\t ]*\([^>"]*"<<<<ycm.*\)/\1/' "$base_path/vim/dot-vimrc" > \
            "$dest_dir/.vimrc"
    else    
	    cp "$base_path/vim/dot-vimrc" "$dest_dir/.vimrc"
    fi
    
    backup "$dest_dir/.vim" "$suffix"
    cp -T -r "$base_path/vim/dot-vim" "$dest_dir/.vim"
    
    git clone "$vundle_url" "$dest_dir/.vim/bundle/Vundle.vim"
    vim +PluginInstall +qall
    echo "Install vim dot files end"
}

install_emacs()
{
    echo "Install emacs dot files begin"
    echo "Here We Just Copy Files to DEST."
    
    backup "$dest_dir/.emacs.d" "$suffix"
    cp -T -r "$base_path/emacs/dot-emacs.d" "$dest_dir/.emacs.d"
    echo "Install emacs dot files end"
}

if [ $editor = all -o $editor = emacs ]
then 
    install_emacs
fi

if [ $editor = all -o $editor = vim ]
then 
    install_vim
fi
