#!/command/with-contenv sh
# shellcheck shell=sh

nginx_exe="$( command -v nginx )"

exec "${nginx_exe}" "-g" "daemon off;"
