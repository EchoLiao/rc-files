# .bashrc

#source /etc/profile

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#export CLASSPATH=$CLASSPATH:/media/N/l2this/.rt/book/lang/java/JSP/JSP_wlkfrmysj/src/chap07/mysql/mysql_gjt.jar

## 对所有用户都有效的环境变量保存在 /etc/profile 中.
export PATH=$HOME/bin:$PATH
export CATALINA_HOME=/usr/share/tomcat6/
export EDITOR=vim #set for svn
export SVN_EDITOR=vim #set for svn
## fcitx环境变量
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=xim
export VIM=/usr/local/share/vim

export  LANG=zh_CN.UTF-8;
export  LC_CTYPE="zh_CN.UTF-8";
export  LC_NUMERIC="zh_CN.UTF-8";
export  LC_TIME="zh_CN.UTF-8";
export  LC_COLLATE="zh_CN.UTF-8";
export  LC_MONETARY="zh_CN.UTF-8";
export  LC_MESSAGES="zh_CN.UTF-8";
export  LC_PAPER="zh_CN.UTF-8";
export  LC_NAME="zh_CN.UTF-8";
export  LC_ADDRESS="zh_CN.UTF-8";
export  LC_TELEPHONE="zh_CN.UTF-8";
export  LC_MEASUREMENT="zh_CN.UTF-8";
export  LC_IDENTIFICATION="zh_CN.UTF-8";
export  LC_ALL=

## 命令提示符
#export PS1='[\!\#\u\$\\\d\h\n\nnn\s\t\W\w]$'
if [ `whoami` == "root" ]; then
    # export PS1='\[\033[31m\][\u \W]# \[\033[m\]'
    # "\033k...\033\134" is SET for screen
    export PS1='\[\033[31m\][\u \W\033k:\W\033\134]# \[\033[m\]'
else
    export PS1='\[\033[31m\][\u \W\033k:\W\033\134]$ \[\033[m\]'
fi
## history
# see: bash_history.txt
export HISTSIZE=100000
export HISTTIMEFORMAT='%F %T ' #命令历史前显示时间
export HISTFILE=/home/scr/.bash_history #设置历史命令存储的文件
export HISTIGNORE='pwd:ls:lx:ls -ltr:ll:la:du:ds:df:h:..:l:j:sl:ip a:' #使用 HISTIGNORE 忽略历史中的特定命令
shopt -s histappend # 使用追加而不是覆盖的方式将命令写入文件
PROMPT_COMMAND="history -a; $PROMPT_COMMAND" # bash每执行完一条命令, 都把其保存到命令历史里
### see also ~/.inputrc
### 作用:
# 当命令行上没有输入时, 上下方向键的作用和以前一样, 但是当输入了内容, 如ssh -l,
# 之后, bash只会列出以该字符串开头的命令, 这样极大地缩小了搜索范围, 非常高效.
export HISTCONTROL=ignoredups #从命令历史中剔除连续重复的条目
#export HISTCONTROL=erasedups #清除整个命令历史中的重复条目 # 该选项要放在最后边才可以生效
#export HISTCONTROL=ignorespace # 注意, 命令以空格开头, 历史记录中就不会记录这条命令

## for wget 
#export http_proxy="10.3.10.19:808"
#export ftp_proxy="10.3.10.19:808"


## grep
# NOTE: 一定不要设置下面的选项!!! 因为会影响grep的输出!
# export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;32'

#/media/N/l2this/.rt

alias arp1='arp -n | sort | grep "1\."'
alias ,,='cd ..'
alias ,,,='cd ../../'
alias ,,,,='cd ../../../'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias cd19='cd /media/N/l2this/.rt/book/lang/java/JSP/JSP_wlkfrmysj/src/chap19/JDBC_Driver/JavaLibrary'
alias cd2dai128='cd /home/sre/work/ls/zzb/2dai/test-128/00-new/max21-erpdrink/'
alias cd2dai='cd /home/sre/work/ls/zzb/2dai/max21net'
alias cd3dai='cd /home/sre/work/ls/zzb/3dai/src/samsung2.1'
alias cd8rt='cd /media/lb/N/l2this/.rt'
alias cdab='cd /media/E/lang/sap/0abap/all'
alias cdav='cd /home/scr/.aMule/Incoming'
alias cdb='cd /home/scr/bin'
alias cdbo='cd /home/scr/.rt/linux/computor'
alias cdbosh='cd /home/scr/.rt/linux/computor/lang/shell'
alias cdbost='cd /media/N/l2this/.rt/book/lang/java/strust'
alias cdbot='cd /home/scr/.rt/linux/computor/tools'
alias cdbotvm='cd /media/N/l2this/.rt/book/tools/vm'
alias cdbotvmn='cd /media/N/l2this/.rt/book/tools/vm/note/'
alias cdbs='cd /home/scr/bin/stsc'
alias cdbst='cd /media/N/l2this/.rt/book/lang/java/strust'
alias cd-='cd -'
alias cd..='cd ..'
alias cdif='cd /etc/sysconfig/network-scripts/'
alias cdjs='cd /usr/share/tomcat6/webapps/ROOT/sy/'
alias cdlc='cd /home/scr/.rt/lang/c-cpp/c'
alias cdlc='cd /home/scr/.rt/lang/c-cpp/c'
alias cdl='cd /home/scr/.rt/lang/'
alias cdlcm='cd /home/scr/.rt/lang/c-cpp/c/minix/'
alias cdlcn='cd /home/scr/.rt/langs/note/linux/note/cmd'
alias cdldd='cd /home/scr/.rt/lang/linux-src/kernel/driver/ldd/examples/'
alias cdlib='cd /var/lib/tomcat6/webapps/JavaLibrary'
alias cdlk='cd /home/scr/.rt/lang/linux-src/kernel/'
alias cdlnc='cd /home/scr/.rt/langs/note/linux/note/cmd'
alias cdln='cd /home/scr/.rt/langs/note/linux/note/note'
alias cdlsw='cd /home/sre/work/ls-work'
alias cdlswold='cd /opt/sre/ls-work/zzb/2dai/net/max21-olddrink'
alias cdlswoldn='cd /opt/sre/ls-work/zzb/2dai-ass/net/max21-olddrink'
alias cdlswoldqb='cd /opt/sre/ls-work/zzb/2dai/net/max21-olddrink-QB'
alias cdlv='cd /home/scr/.rt/lang/vim'
alias cdm='cd /media'
alias cdme='cd /media/E'
alias cdmf='cd /media/F'
alias cdmib='cd /media/N/l2this/.rt/minix/note/book/'
alias cdmi='cd /media/N/l2this/.rt/minix/'
alias cdmin='cd /media/N/l2this/.rt/minix/note/'
alias cdmis='cd /media/N/l2this/.rt/minix/src-new/minix_svn/'
alias cdmn='cd /media/N'
alias cdn='cd /media/N/l2this/.rt/notes/note'
alias cdnvim='cd /media/N/l2this/.rt/notes/note/vim'
alias cdrk='cd /media/N/l2this/.rt/book/html/man.lupaworld.com/content/manage/ringkee'
alias cdrt='cd /home/scr/.rt/'
alias cds='cd /media/N/l2this/.rt/notes/soft'
alias cdse='cd ~/bin/stsc'
alias cdsls='cd /home/sre/work/ls'
alias cdsvnn='cd /media/N/l2this/.rt/book/tools/svn/note'
alias cdtin='cd /media/N/l2this/.rt/book/TCP-IP_I1/note/'
alias cdtis='cd /media/N/l2this/.rt/book/TCP-IP_I1/src/'
alias cdtrash='cd /home/scr/.local/share/Trash/files'
alias cdue3='cd /media/N/l2this/.rt/book/tools/shell/UPT/e3'
alias cdun='cd /media/N/l2this/.rt/book/TCP-IP/unpv1/unpv13e/src/unpv13e'
alias cdv='cd /usr/local/share/vim'
alias cdvcrc='cd ~/.rt/vercol/git/rc-files'
alias cdvcrtbo='cd /home/scr/.rt/vercol/git/rt-notes/linux/computor'
alias cdvcrtbot='cd /home/scr/.rt/vercol/git/rt-notes/linux/computor/tools'
alias cdvcrt='cd ~/.rt/vercol/git/rt-notes'
alias cdvf='cd /usr/local/share/vim/vimfiles/'
alias cdvmn='cd /media/N/l2this/.rt/book/tools/vm/note/'
alias cdvp='cd /usr/local/share/vim/vimfiles/plugin/'
alias cdvrf='cd /home/scr/.rt/vercol/git/rc-files'
alias cdvt='cd /media/F/notes/blog/vim/01tutorial'
alias cdx='cd /home/scr/xiazai'
alias chklg='chkconfig --list | grep --color=always'
alias chmdo='chmod'
alias chm='gnochm'
alias chmodd='find . -type d | xargs chmod 755'
alias chmodf='find . -type f | xargs chmod 644'
alias chms='gnochm /media/E/liaocaiyuan/Documents/0电子书/0现修课程/第3学期/操作系统设计与实现/aybook第三版\(英文\).chm&'
alias chx='chmod +x'
alias chxx='chmod -x'
alias cmd='gnome-terminal --geometry=100x38'
alias df='date >> /tmp/df.tmp.log; df -h >> /tmp/df.tmp.log;echo >> /tmp/df.tmp.log; df  -h'
alias ds='du -hs'
alias du='du -h'
alias e='e.sh'
alias ex='nautilus'
alias exv='nautilus trash:'
alias fd='fdisk -l'
alias ffbs='firefox /home/scr/.rt/linux/computor/lang/shell/bash/abs-guide/abs-guide/HTML/index.html'
alias ff='firefox 2>/dev/null'
alias fflatex='firefox /media/N/l2this/.rt/book/tools/latex/edt1023.sayya.org/tex/latex123/index.html'
alias ffsvn='firefox /media/N/l2this/.rt/notes/note/develop/svn/svn-book-html/svn-book.html'
alias fgd='find . -type d | grep --color=always'
alias fgf='find . -type f | grep --color=always'
alias fg.='find . | grep --color=always'
alias fgx='find . -type f | grep -v svn | xargs grep --color=always'
alias fich='find .   -type f -name "*.c" -o -name "*.h" | xargs grep -n --color=ALWAYS '
alias fichi='find .  -type f -name "*.c" -o -name "*.h" | xargs grep -n --color=ALWAYS '
alias fichiw='find . -type f -name "*.c" -o -name "*.h" | xargs grep -n --color=ALWAYS -w '
alias fichw='find .  -type f -name "*.c" -o -name "*.h" | xargs grep -n --color=ALWAYS -w '
alias fiq='find . -type f | xargs grep --color=always '?????''
alias fl='fdisk -l'
alias gedit='gedit 2>/dev/null'
alias ge='gedit 2>/dev/null'
alias g='gvim 2>/dev/null'
alias gitdf='git diff'
alias gitd='git diff'
alias gitdl='git diff'
alias gitl='git log'
alias gitlo='git log --pretty=oneline'
alias gitlp='git log -p'
alias gitls='git log --stat'
alias gitpl='git pull origin master'
alias gitps='git push origin master'
alias gits='git status'
alias gitsl='git status | less'
alias gitst='git status'
alias got='gnome-terminal --hide-menubar --geometry=100x32 --working-directory=~ --title=GOT'
alias gt='gnome-terminal --hide-menubar --geometry=100x32 --working-directory=~'
alias gto='gnome-terminal --hide-menubar --geometry=100x32 --working-directory=~ --title=GOT'
alias gtw='gnome-terminal --hide-menubar --geometry=100x32 --working-directory=~ --title=GOT'
alias gvbkf='gvim /home/scr/bin/bk/app_new_filelists.txt'
alias gvbs='gvim ~/.bashrc'
alias gvfi='gvim /media/N/l2this/.rt/notes/note/linux/note/note/02files_introduce.txt'
alias gvfl='gvim /media/N/l2this/.rt/notes/soft/yum/fedora_log.txt'
alias gvhi='gvim ~/.bash_history'
alias gvhosts='gvim /etc/hosts'
alias gvht='gvim /home/scr/.rt/linux/computor/bookmark/html.txt'
alias gvim='gvim 2>/dev/null'
alias gvip='gvim /etc/sysconfig/network-scripts/ifcfg-eth0'
alias gvlc='gvim /home/scr/.rt/linux/computor/tools/devel/cmd/cmd.txt'
alias gvnc='gvim /media/N/l2this/.rt/notes/note/network/cmd_network.txt'
alias gvns='gvim /media/N/l2this/.rt/notes/note/lang/java/struts/struts-note.txt'
alias gvnt='gvim /home/scr/.rt/linux/note.txt'
alias gvnw='gvim /home/scr/sys/notes/computor/network/cmd_network.txt'
alias gvsp='gvim /media/N/l2this/.rt/notes/note/study_process.txt'
alias gvvl='gvim /media/N/l2this/.rt/notes/note/vim/log.txt'
alias h='history | tac | less'
alias ifse='ifconfig eth0; ifconfig eth0:0'
alias ifs='ifconfig'
alias i='info --vi-keys'
alias ipa='ip a'
alias jj='ll'
alias j='jobs -l'
alias killl='kill -l'
alias kk='ll'
alias la='ls -a'
alias l='clear'
alias lc='ls -lcr'		# sort by change time
alias lla='ll -a'
alias llf='ll --full-time'
alias ll.='l. -l'
alias llr='ll -R'
alias lls='ll -Sr'
alias llsr='ll -S'
alias llx='ll -X'
alias llxr='ll -Xr'
alias lm='ll | less'
alias lr='ls -R'
alias ls='ls -h --color'
alias lt='ls -ltr'              # sort by date
alias lu='ls -lur'		# sort by access time
alias lx='ls -X'
alias mab='make -B'
alias mab='make -B'
alias mab='make -B'
alias mac2='ifconfig eth0 down; ifconfig eth0 hw ether 00:1E:90:13:e0:26; ifconfig eth0 up'
alias mac='sudo ifconfig eth0 down; ifconfig eth0 hw ether 00:1E:90:13:e0:25; ifconfig eth0 up; sudo service network restart; mentohust'
alias mai='make install'
alias ma='make'
alias mar='make run'
alias maui='make uninstall'
alias mca='make cleanall'
alias mcd='make distclean'
alias mc='make clean'
alias mdkir='mkdir'
alias mdkri='mkdir'
alias mkidr='mkdir'
alias m='man'
alias moc='mount /dev/sda1 /media/C'
alias mod='mount /dev/sda3 /media/D'
alias moe='mount /dev/sda5 /media/E'
alias mon='mount /dev/sda8 /media/N'
alias ms='cd /home/scr/bin/stsc/'
alias p6='ping6'
alias path='echo -e ${PATH//:/\\n} | sort'
alias pdf='okular --icon okular -caption Okular 2>/dev/null'
alias pdfs='okular --icon okular -caption Okular /media/E/liaocaiyuan/Documents/0电子书/0现修课程/第3学期/操作系统设计与实现/2上册\(解密\).pdf&'
alias pkau='pkill pulseaudio*'
alias pl='pdflatex'
alias po='popd'
alias p='ping'
alias pu='pushd'
alias pwdp='pwd -P'
alias r6='route -A inet6'
alias rasun='route add -net 172.18.13.0/24 gw sun'
alias rn6='route -n -A inet6'
alias rn='route -n'
alias r='route'
alias sl='ls'
alias s='sdcv'
alias .s='source ~/.bashrc'
alias svndl='svn diff | less'
alias svnd='svn diff'
alias svni='svn info'
alias svnl='svn log | less'
alias svnlv='svn log -v | less'
alias svns='svn st'
alias svnup='svn up'
alias svnu='svn up'
alias tma='tomcat6 start'
alias tmo='tomcat6 stop'
alias tree='tree -Csu'		# nice alternative to 'ls'
alias t='top'
alias umoc='umount /dev/sda1'
alias umod='umount /dev/sda3'
alias umoe='umount /dev/sda5'
alias umon='umount /dev/sda8'
alias vbkf='vim /media/N/l2this/.rt/bin/bk/app_new_filelists.txt'
alias vbs='vim   /home/scr/.bashrc'
alias vfi='vim /media/N/l2this/.rt/notes/note/linux/note/note/02files_introduce.txt'
alias vfl='vim /media/N/l2this/.rt/notes/soft/yum/fedora_log.txt'
alias vhi='vim ~/.bash_history'
alias vhosts='vim /etc/hosts'
alias vht='vim /media/N/l2this/.rt/notes/note/bookmark/html.txt'
alias vife00='vim /etc/sysconfig/network-scripts/ifcfg-eth0:0'
alias vife0='vim /etc/sysconfig/network-scripts/ifcfg-eth0'
alias vife1='vim /etc/sysconfig/network-scripts/ifcfg-eth1'
alias vi='vim'
alias vi='vim'
alias vlc='vim /home/scr/.rt/linux/computor/tools/devel/cmd/cmd.txt'
alias vns='vim /media/N/l2this/.rt/notes/note/lang/java/struts/struts-note.txt'
alias vnt='vim /home/scr/.rt/linux/note.txt'
alias vrc='vim /etc/rc.d/rc.local'
alias v='vim'
alias v='vim'
alias v='vim 2>/dev/null'
alias vvl='vim ~/.vim/log.txt'
alias wh='type -all'
alias ,y='p2v.sh'


hg(){ history | grep $* | sort -k 2 | uniq -s 7 | sort -g | less; } #过虑命令历史

# Find a file with a pattern in name:
function fif() { find . -type f -iname '*'$*'*' -ls  | column -t; }
# Find a file with pattern $1 in name and Execute $2 on it:
function fie() { find . -type f -iname '*'$1'*' -exec "${2:-file}" {} \;  ; }
function fstr()
{
    OPTIND=1
    local case=""
    local usage="fstr: find string in files.
Usage: fstr [-i] \"pattern\" [\"filename pattern\"] "
    while getopts :it opt
    do
        case "$opt" in
        i) case="-i " ;;
        *) echo "$usage"; return;;
        esac
    done
    shift $(( $OPTIND - 1 ))
    if [ "$#" -lt 1 ]; then
        echo "$usage"
        return;
    fi
    local SMSO=$(tput smso)
    local RMSO=$(tput rmso)
    find . -type f -name "${2:-*}" -print0 | xargs -0 grep -sn ${case} "$1" 2>&- | \
sed "s/$1/${SMSO}\0${RMSO}/gI" | less
}

function cuttail() # cut last n lines in file, 10 by default # QQQQQ
{
    nlines=${2:-10}
    sed -n -e :a -e "1,${nlines}!{P;N;D;};N;ba" $1
}

function pg()
{
    ps aux | grep --color=always "$1" | grep -v grep
}

function lowercase()  # move filenames to lowercase
{
    for file ; do
        filename=${file##*/} # 只保留最短的文件名
        case "$file" in
        */*) dirname=${file%/*} ;; # 取得目录名
        *) dirname=.;;
        esac
        nf=$(echo $filename | tr A-Z a-z)
        newname="${dirname}/${nf}"
        if [ "$nf" != "$filename" ]; then
            mv "$file" "$newname"
            echo "lowercase: $file --> $newname"
        else
            echo "lowercase: $file not changed."
        fi
    done
}

function mkcd()
{
    echo "mkdir \"$1\"" >  /tmp/mkcd.tmp.123
    echo "cd    \"$1\"" >> /tmp/mkcd.tmp.123
    . /tmp/mkcd.tmp.123
}

function bce()
{
    echo "scale=4; $1" | bc
}

#function bcb2h()
#{
    #echo "ibase=2; obase=16; $1" | bc
#}

function bcc2h()
{
    echo "ibase=10; obase=16; $1" | bc
}

function bch2c()
{
    hex=`echo "$1" | tr a-z A-Z`
    echo "ibase=16; $hex" | bc
}

function bch2b()
{
    hex=`echo "$1" | tr a-z A-Z`
    echo "ibase=16; obase=2; $hex" | bc
}

function chmodd()
{
    find "$1" -type d -exec chmod 755 {} \;
}

function chmodf()
{
    find "$1" -type f -exec chmod 644 {} \;
}

function swap()         # swap 2 filenames around
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}


#-----------------------------------
# Process/system related functions:
#-----------------------------------

function myps() { ps $@ -u $USER -o pid,%cpu,%mem,bsdtime,command ; } # my_ps
function pp() { my_ps f | awk '!/awk/ && $0~var' var=${1:-".*"} ; } # ps like tree

function myip() # get IP adresses
{
    MY_IP=$(ip addr s eth1 | awk '/inet / { print $2 } ' | sed -e s/addr://)
    MY_ISP=$(/sbin/ifconfig eth2 | awk '/P-t-P/ { print $3 } ' | sed -e s/P-t-P://)
}

function myfreem() #
{
    freetmp=/tmp/free.out.tmp.12534
    # free > $freetmp
    free -m > $freetmp
    a1=`sed -n '2p' $freetmp | awk '{ print $4 }'`
    a2=`sed -n '2p' $freetmp | awk '{ print $6 }'`
    a3=`sed -n '2p' $freetmp | awk '{ print $7 }'`
    a=`expr $a1 + $a2 + $a3`
    cat $freetmp
    echo "(($a1 + $a2 + $a3 = $a))"
}

function ii()   # get current host related info
{
    echo -e "\nYou are logged on ${RED}$HOST"
    echo -e "\nAdditionnal information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Machine stats :$NC " ; uptime2.sh
    echo -e "\n${RED}Memory stats :$NC " ; myfreem
    myip 2>&- ;
    echo -e "\n${RED}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
    echo -e "\n${RED}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
    echo
}


function repeat()       # repeat n times command
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do  # --> C-like syntax
        eval "$@";
    done
}

function ask()
{
    echo -n "$@" '[y/n] ' ; read ans
    case "$ans" in
        y*|Y*) return 0 ;;
        *) return 1 ;;
    esac
}


#=========================================================================
#
# PROGRAMMABLE COMPLETION - ONLY SINCE BASH-2.04
# Most are taken from the bash 2.05 documentation and from Ian McDonalds
# 'Bash completion' package (http://www.caliban.org/bash/index.shtml#completion)
# You will in fact need bash-2.05a for some features
#
#=========================================================================

if [ "${BASH_VERSION%.*}" \< "2.05" ]; then
    echo "You will need to upgrade to version 2.05 for programmable completion"
    return
fi






#(2010年 03月 05日 星期五 18:55:55 CST)
##=========================================================================
#note:
#   !2  执行第二条历史命令

#    #!!:$ 将为当前的命令获得上一条命令的参数:
#    $ ls anaconda-ks.cfg
#    anaconda-ks.cfg
#    $ vi !!:$
#    vi anaconda-ks.cfg
#    #补充: 使用 !$ 可以达到同样的效果, 而且更简单.

#    #!^ 从上一条命令获得第一项参数:
#    $ cp anaconda-ks.cfg anaconda-ks.cfg.bak
#    anaconda-ks.cfg
#    $ vi -5 !^
#    vi anaconda-ks.cfg


#PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\\$ " #^_^ or 0_0
#PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u.\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"' #遇错误命令改变颜色
#PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u.\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;:`pwd`\007"' #遇错误命令改变颜色
#PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ " #七彩提示符
#PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]" #显示完整路径
#PS1='\[\e[1;32m\]\u@\H:\[\e[m\] \[\e[1;37m\]\w\[\e[m\]\n\[\e[1;33m\]hist:\! \[\e[0;33m\] \[\e[1;31m\]jobs:\j \$\[\e[m\] ' #显示后台任务数量
#PS1='$ '
