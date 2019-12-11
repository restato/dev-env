# vimrc

### Vim plugin manager 설치

* 다운로드
  * https://github.com/VundleVim/Vundle.vim
  * git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

* Install Plugins:
  * vim을 실행하고 :PluginInstall
  * $ vim +PluginInstall +qall

# bashrc

# tmux.conf

### tmux.conf

https://github.com/tmux-plugins/tmux-yank
에서 각 os에 맞는 clipboard를 설치를 하자

### 최신 버전의 tmux를 설치
    
  If you use Debian/Ubuntu, you can just run apt-get install tmux, and voila. 
  
  Since the title was about centos 7, then do the following step to install tmux.
  
  (1). tmux has a library dependency on libevent which, of course, isn’t installed by default. 
    $ wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
    $ tar xzvf libevent-2.0.21-stable.tar.gz
    $ cd libevent-2.0.21-stable
    $ ./configure && make
    $ sudo make install
  (2). To get and build the latest from version control:
  https://github.com/tmux/tmux/tree/2.3

    $ git clone https://github.com/tmux/tmux.git
    $ cd tmux
    $ sh autogen.sh
    $ ./configure && make

Tips:

 (1). During the second step, if you encounter with "libevent not found” error"
 You should install the libevent development package, by running the following command.
    $ yum install libevent-devel

(2). If you run with "curses not found" error
  To compile the code you need the devel packages, run the following comamnd
  $ yum install ncurses-devel
  $ yum install glibc-static


https://gist.github.com/Root-shady/d48d5282651634f464af


### protocol version mismatch (client 8, server 7)

현재 실행중인 tmux를 종료하자
$ pkill tmux
https://unix.stackexchange.com/questions/122238/protocol-version-mismatch-client-8-server-6-when-trying-to-upgrade

### tmux 명령어

* tmux show-buffers
* tmux save-buffer foo.txt
https://awhan.wordpress.com/2010/06/20/copy-paste-in-tmux/

[참고] 
* https://github.com/tmux-plugins/tpm
* https://github.com/coeuvre/dotfiles/blob/master/tmux.conf
* https://gist.github.com/Root-shady/d48d5282651634f464af


export TMUX_HOME=/home1/irteam/deploy/tmux >> ~/.bashrc
export PATH=$PATH:${TMUX_HOME} ~/.bashrc
source ~/.bashrc

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
