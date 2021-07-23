# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias clc='clear'
alias ssh_office_fedora='ssh louy@172.27.39.191'
alias ssh_devserver='ssh -Yl louy louy.sb.facebook.com'
alias sftp_office_fedora='sftp louy@louy-fedora-IT2251470'
alias mount_protoline='sudo mount -t cifs //snc-isiarchive01-smb/frl_redmondprotoline_smb_001 /mnt/protoline -o username=louy,domain=thefacebook.com,uid=louy,iocharset=utf8,file_mode=0777,dir_mode=0777,noperm'
alias check_buck_cache='ping6 -c1 buckcache-native.internal.tfbnw.net'
alias format_buck='~/ovrsource/tools/third-party/buildifier/run_buildifier.py -i'
alias scp_ariane_calib_package='scp -r louy@louy.sb.facebook.com:ovrsource/Manufacturing/tyr-core/buck-out/gen/ariane/ariane_calib_package ~/flashdrive/ArianeFiles/AlgServerTransfer/'
alias vrsplayer='~/ArianeTempCode/AlgServerTest/bin/vrsplayer'
alias vrstool='~/ArianeTempCode/AlgServerTest/bin/vrstool'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Enable and disable touchpad
alias query_touchpad='gsettings get org.gnome.desktop.peripherals.touchpad send-events'
alias enable_touchpad='gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled'
alias disable_touchpad='gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled'
alias disable_touchpad_on_external='gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled-on-external-mouse'

# Buck related functions
bro() {
    buck run @mode/linux/surreal/opt $1 -- ${@:2}
}

brd() {
    buck run @mode/linux/surreal/dev $1 -- ${@:2}
}

bbo() {
    buck build @mode/linux/surreal/opt $1 ${@:2}
}

bbd() {
    buck build @mode/linux/surreal/dev $1 ${@:2}
}

# arc pull every morning
function goodmorning() {
  hg pull
}

set -o vi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/louy/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/louy/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/louy/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/louy/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

