# ==============================
# Aliases
# ==============================

# General
# ---------------

alias c="clear"
alias up="cd .."

# Git
# ---------------

alias lg="git log --graph --pretty=oneline --abbrev-commit"

# Xcode
# ---------------

alias fuxcode="rm -rf ~/Library/Developer/Xcode/DerivedData"
alias sketchplugins="cd ~/Library/Containers/com.bohemiancoding.sketch3/Data/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins"
alias xc="open -a 'Xcode'"
alias xcsim="open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app"
alias xcdevices="cd ~/Library/Developer/CoreSimulator/Devices"
alias xcprovision="cd ~/Library/MobileDevice/Provisioning\ Profiles"

# =============================
# Loading
# =============================

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh # which j
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Loads RVM into a shell session *as a function*
export NVM_DIR="/Users/jasonprasad/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # Loads node version manager
# eval "$(register-python-argcomplete conda)" # Loads autocomplete for conda

# ==============================
# MISC
# ==============================

# Git Syncing 
# ---------------

fuction git-auto-push() {
  if [ -x ~/.dotfiles/git-auto-push.sh ]; then
  	~/.dotfiles/git-auto-push.sh ${1:?"Provide git repos to sync."}
  fi
}

# ==============================
# Path Variables
# ==============================

export SWIFTTOOLS="/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin"
export RVM="$HOME/.rvm/bin"  
export ANACONDA="$HOME/anaconda/bin:$PATH"
export PATH="$RVM:$ANACONDA:$SWIFTTOOLS:$ZSH:$PATH"
