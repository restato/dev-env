export LC_ALL=ko_KR.utf-8
export TMOUT=0
PROMPT_COMMAND=
#if [[ "$TERM" == screen* ]]; then
#  screen_set_window_title () {
#    local HPWD="$PWD"
#    case $HPWD in
#      $HOME) HPWD="~";;
#      $HOME/*) HPWD="~${HPWD#$HOME}";;
#    esac
#    printf '\ek%s\e\\' "$HPWD"
#  }
#  PROMPT_COMMAND="screen_set_window_title; $PROMPT_COMMAND"
#fi

if [[ $TERM == xterm ]]; then
    TERM=xterm-256color
fi
 
export HADOOP_HOME=/opt/cloudera/parcels/CDH 
export hdpstr="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/jars/hadoop-streaming-2.6.0-cdh5.10.0.jar"
export TMUX_HOME=~/jslee/applications/tmux
export PATH=${TMUX_HOME}:$PATH

alias tn='tmux -f $CONFIG_HOME/solidpple/tmux.conf new -s sol'
alias ta='tmux attach -t sol'

alias gd='git diff'
alias gp='git pull'
alias gs='git status'
alias gb='git branch'
alias gc='git commit -a --author="Lee"'

unalias vi
function vi {
  command vim -u "$CONFIG_HOME/solidpple/vimrc" $1
}

alias dit='cd /home/direcision/'
alias act='. /home1/direcision/jslee/env/bin/activate'
alias act3='source /home1/direcision/jslee/env3/bin/activate'
alias msg="python ${CONFIG_HOME}/solidpple/send_log_to_slack.py" $1
 
YESTERDAY=$(date -d '1 day ago' '+%Y%m%d')
