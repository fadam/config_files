HISTSIZE=10000000
HISTFILESIZE=20000000
set -o vi
# input vi style
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
alias ls='ls --color=auto'
alias 1='ls -1'
alias grep='grep --color=auto'
alias gdb='gdb -q'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias lts='ls -lrth'
alias clean='/bin/rm -f *.[od]'
alias ping='ping -c 4'
alias rmd='/bin/rm -rf'
alias rm='rm -f'
alias trash='mv -t ~/.local/share/Trash/files/'
alias count='ls -1 $@| wc -l'
alias c='cd ~/code/c++_code/'
alias data='cd /cygdrive/f//'
alias vi='/usr/bin/vim' # it used to be /usr/bin/vi
alias m='more'
alias cpi='cp -i'
alias geo='gdal_translate -a_srs +proj=utm +zone=32 +datum=WGS84 +units=m +no_defs  -a_ullr 688709.000, 5338213 694459.000, 5333913'
# set variables fro the envi.
export dump=$HOME/dump
export PS1="\[\e[1;30m\] \h\[\e[1;34m\][\w]\[\e[m\] "
export PATH=~/bin:/usr/local/bin:$PATH:.
export kopierer=/media/Kopierer/adam_fa
export dimi=$kopierer/Dimitris/
export BOOST_ROOT=/usr/include/boost
export groofs="greenroofs-test01:/mnt/data1/testGufRef/synthetic_data"
export data="/media/data/"
#export PATH=/bin:/sbin:/usr/sbin:/usr/local/sbin:/usr/bin:~/bin:/usr/local/bin:.
#export PYLEARN2_DATA_PATH=/home/adam_fa/data
#export PYLEARN2_VIEWER_COMMAND='eog --new-instance'
#export LANG='en_US.UTF-8'
fortune | cowsay -f tux
