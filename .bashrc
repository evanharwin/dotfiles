# if not running interactively
# don't do anything
[[ $- != *i* ]] && return

# firefox scrolling fix on arch 
export MOZ_USE_XINPUT2=1 

# drop into fish
exec fish
