# Additional variables for KXStudio

# Define Audio Plugins Path
#if [ -f ~/.kxstudio/dssi.paths ]; then
#DSSI_PATH_DIRS=`cat ~/.kxstudio/dssi.paths | grep "/" | awk '{printf$0":"}'`
#DSSI_PATH=`echo "$DSSI_PATH_DIRS KKK" | awk 'sub(": KKK","")'`
#export DSSI_PATH=$DSSI_PATH
#else
#export DSSI_PATH=$HOME/dssi/:/usr/lib/dssi/:/usr/local/lib/dssi/:/usr/lib32/dssi/
#fi

#if [ -f ~/.kxstudio/ladspa.paths ]; then
#LADSPA_PATH_DIRS=`cat ~/.kxstudio/ladspa.paths | grep "/" | awk '{printf$0":"}'`
#LADSPA_PATH=`echo "$LADSPA_PATH_DIRS KKK" | awk 'sub(": KKK","")'`
#export LADSPA_PATH=$LADSPA_PATH
#else
#export LADSPA_PATH=$HOME/ladspa/:/usr/lib/ladspa/:/usr/local/lib/ladspa/:/usr/lib32/ladspa/
#fi

#if [ -f ~/.kxstudio/lv2.paths ]; then
#LV2_PATH_DIRS=`cat ~/.kxstudio/lv2.paths | grep "/" | awk '{printf$0":"}'`
#LV2_PATH=`echo "$LV2_PATH_DIRS KKK" | awk 'sub(": KKK","")'`
#export LV2_PATH=$LV2_PATH
#else
#export LV2_PATH=$HOME/lv2/:/usr/lib/lv2/:/usr/local/lib/lv2/
#fi

#if [ -f ~/.kxstudio/vst.paths ]; then
#VST_PATH_DIRS=`cat ~/.kxstudio/vst.paths | grep "/" | awk '{printf$0":"}'`
#VST_PATH=`echo "$VST_PATH_DIRS KKK" | awk 'sub(": KKK","")'`
#export VST_PATH=$VST_PATH
#else
#export VST_PATH=$HOME/vst/:/usr/lib/vst/:/usr/local/lib/vst/:/usr/lib32/vst/
#fi


# Set 'history' format to show more useful info
export HISTTIMEFORMAT="%d/%m/%y %T "


# Wine Real-Time Schedulling
#export WINE_RT=15
#export WINE_SVR_RT=10

# CGroups hack
#if [ "$PS1" ] ; then  
#   mkdir -p -m 0700 /dev/cgroup/cpu/user/$$ > /dev/null 2>&1
#   echo $$ > /dev/cgroup/cpu/user/$$/tasks
#   echo "1" > /dev/cgroup/cpu/user/$$/notify_on_release
#fi



alias psg='ps aux | grep -v grep | grep'

#alias light-theme='env GTK2_RC_FILES=.gtkrc-light'
#alias wipy='/home/zyl/.wine/drive_c/Python27/python.exe'
alias findi='find . -follow -iname'
alias evil='emacs -nw'
alias sl=ls

alias p8='ping 8.8.8.8'
