# if not running interactively
# don't do anything
[[ $- != *i* ]] && return

# firefox scrolling fix on arch 
export MOZ_USE_XINPUT2=1 

# opencode
export PATH=/home/evan/.opencode/bin:$PATH

# starship prompt
eval "$(starship init bash)"

# Use bash-completion, if available, and avoid double-sourcing
[[ $PS1 &&
  ! ${BASH_COMPLETION_VERSINFO:-} &&
  -f /usr/share/bash-completion/bash_completion ]] &&
    . /usr/share/bash-completion/bash_completion
