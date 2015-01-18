
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

##
# Your previous /Users/allentran/.bash_profile file was backed up as /Users/allentran/.bash_profile.macports-saved_2014-02-25_at_15:52:32
##

# MacPorts Installer addition on 2014-02-25_at_15:52:32: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Finished adapting your PATH environment variable for use with MacPorts.

export PREMISE="$HOME/premise"
export PATH=$PATH:$PREMISE/commons/src/main/unix
source $PREMISE/config/.aws.env




# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true

export PATH=/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/Users/allentran/premise/commons/src/main/unix:/Users/allentran/premise/commons/src/main/unix:/usr/local/mysql/bin:$PREMISE/arcanist/bin
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin

# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh
source /Users/allentran/premise/config/.aws.env
source /Users/allentran/premise/config/.aws.env

# enable the git bash completion commands
source ~/.git-prompt.sh
source ~/.git-completion.sh
 
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)
 
# set the prompt to show current working directory and git branch name, if it exists
 
# this prompt is a green username, black @ symbol, cyan host, magenta current working directory and white git branch (only shows if you're in a git branch)
# unstaged and untracked symbols are shown, too (see above)
# this prompt uses the short colour codes defined above
 PS1='\w`__git_ps1 " (%s)"`\$ '
 
# this is a cyan username, @ symbol and host, magenta current working directory and white git branch
# it uses the shorter , but visibly more complex, codes for text colours (shorter because the colour code definitions aren't needed)
# PS1='\[33[0;36m\]\u@\h\[33[01m\]:\[33[0;35m\]\w\[33[00m\]\[33[1;30m\]\[33[0;37m\]`__git_ps1 " (%s)"`\[33[00m\]\[33[0;37m\]\$ '
 
# return the prompt prefix for the second line
function set_prefix {
    BRANCH=`__git_ps1`
    if [[ -z $BRANCH ]]; then
        echo "${NORMAL}o"
    else
        echo "${UNDERLINE}+"
    fi
}
 
# and here's one similar to Paul Irish's famous prompt ... not sure if this is the way he does it, but it works  <span class="wp-smiley emoji emoji-smile" title=":)">:)</span>
# 33[s = save cursor position
# 33[u = restore cursor position
 

