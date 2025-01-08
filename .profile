export PS1='-> '
export XDG_RUNTIME_DIR=/run/user/$(id -u)

printf 'start wayland?'
! read -r || exec sway
