export PS1='-> '
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export PATH=$PATH:/home/benike/.local/bin

printf "Start Wayland (Sway)? [y/N]: "
read -r answer
if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    pipewire &
    pipewire-pulse &

    dbus-run-session sway
else
    echo "Not starting Wayland."
fi

