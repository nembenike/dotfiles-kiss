export PS1='-> '
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export PATH=$PATH:/home/benike/.local/bin

pipewire &

printf 'start wayland?'
! read -r || dbus-run-session sway
