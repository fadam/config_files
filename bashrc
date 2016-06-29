HISTSIZE=10000000
HISTFILESIZE=20000000
set -o vi
# input vi style
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
alias 1='ls -1'
#alias grep='grep --color=auto'
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
alias cs='cd ~/src/c++_code/cs_mask'
alias data='cd /media/data//'
alias datasets='cd /media/data/cloud_removal/datasets//'
alias dataset1='cd /media/data/cloud_removal/datasets/dataset1'
alias m='more'
alias cpi='cp -i'
alias geo='gdal_translate -a_srs +proj=utm +zone=32 +datum=WGS84 +units=m +no_defs  -a_ullr 688709.000, 5338213 694459.000, 5333913'
# set variables fro the envi.
export dump=$HOME/dump
export PS1="\[\e[1;30m\] \h\[\e[1;34m\][\w]\[\e[m\] "
export PATH=~/bin:/usr/local/bin:$PATH:.
#export PATH="/media/data/anaconda2/bin:$PATH"
#export PYTHONPATH=/media/data/anaconda2
#export LD_LIBRARY_PATH=/media/data/anaconda2/lib
export kopierer=/media/Kopierer/adam_fa
export dimi=$kopierer/Dimitris/
export BOOST_ROOT=/usr/include/boost
export groofs="greenroofs-test01:/mnt/data1/testGufRef/synthetic_data"
export data="/media/data/"
export EDITOR=vim
#export PATH=/bin:/sbin:/usr/sbin:/usr/local/sbin:/usr/bin:~/bin:/usr/local/bin:.
#export PYLEARN2_DATA_PATH=/home/adam_fa/data
#export PYLEARN2_VIEWER_COMMAND='eog --new-instance'
#export LANG='en_US.UTF-8'
alias src='cd /users/adam_fa/src'
alias xml='rm *xml */*xml */*/*xml */*/*/*xml'

# added by Anaconda2 2.4.0 installer

# added by Anaconda2 2.4.0 installer
# for python to be able to import caffe
export PYTHONPATH=/users/adam_fa/caffe/caffe-master/python
export OPENBLAS_NUM_THREADS=8
export costa_ip="192.33.89.199"
export tosta_ip="192.33.89.138"
alias tosta="ssh  dmarmanis@192.33.89.138"
# These are only to disable XML files genertion by gdal everytime I close a raster file (they hold temporary stats)
# I got the tip from http://gis.stackexchange.com/questions/136366/turn-off-the-setting-of-qgis-to-produce-xml-when-closing
#GDAL_PAM_ENABLED=NO
GDAL_PAM_PROXY_DIR=~/.gdal_temp_dir

# added for the GPU server cvDeepLearn
export LD_LIBRARY_PATH=/usr/local/lib/cuda:$LD_LIBRARY_PATH
# Add <installpath> to your build and link process by adding -I<installpath> to your compile
#    line and -L<installpath> -lcudnn to your link line.
# logins to servers
#alias ssh=' ssh -X'
alias deeplearn=' ssh -i ~/.ssh/id_rsa cvDeepLearn'
alias feeder='ssh -i ~/.ssh/id_rsa cvfeeder'
alias master='ssh -i ~/.ssh/id_rsa cvmaster'
alias greenroofs='ssh greenroofs-test01'

# CALOPUS environment setup
function set_calvalus {
    export CALOPUS_INST=/opt/calopus-inst
    export CALOPUS_LOG=$CALOPUS_INST/log
    export CALOPUS_PRODUCTION_JAR=$CALOPUS_INST/lib/cpt.jar
    export CALOPUS_BEAM_VERSION=beam-5.0.1
    export CALOPUS_CALVALUS_VERSION=calvalus-2.4-SNAPSHOT
    export PYTHONPATH=$CALOPUS_INST:$CALOPUS_INST/lib:$PYTHONPATH
    export PATH=$CALOPUS_INST/bin:$CALOPUS_PROCESSING_DIR/bin:$JAVA_DIR/bin:$PATH
    #aliases
    alias calc='cd /calvalus/home/adam_fa/inputDir'
}

# the python-caffe setting for cvDeepLearn
function set_deeplearn {
    export PYTHONPATH=/mnt/data1/src/caffe/python:/mnt/data1/src/caffe/
    export PS1="\[\e[1;32m\] \h\[\e[1;35m\][\w]\[\e[m\] "
}
# check if we are somewhere in calvalus (either mater or feeder)
if [ $(hostname) = cvmaster ] || [ $(hostname) = cvfeeder ]; then
    set_calvalus
elif [ $(hostname) = cvdeeplearn ] || [ $(hostname) = cvDeepLearn ]; 
    then 
        set_deeplearn
	echo "I am cvDeepLearn"
fi



