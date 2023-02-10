export MICRO_TRUECOLOR=1
export EDITOR=micro
export VISUAL=micro
export GPG_TTY=(tty)


contains /home/$USER/.local/bin $PATH; or set -x PATH "/home/$USER/.local/bin" $PATH
contains /home/$USER/.local/share/bin $PATH; or set -x PATH "/home/$USER/.local/share/bin" $PATH
contains /home/$USER/.cargo/bin $PATH; or set -x PATH "/home/kuri/.cargo/bin" $PATH
contains /usr/bin $PATH; or set -x PATH "/usr/bin" $PATH
contains /usr/local/bin $PATH; or set -x PATH "/usr/local/bin" $PATH
contains /usr/sbin $PATH; or set -x PATH "/usr/sbin" $PATH
contains /usr/local/sbin $PATH; or set -x PATH "/usr/local/sbin" $PATH
contains /var/lib/snapd/snap/bin $PATH; or set -x PATH "/var/lib/snapd/snap/bin" $PATH
contains /usr/bin/core_perl $PATH; or set -x PATH "/usr/bin/core_perl" $PATH
contains /usr/bin/vendor_perl $PATH; or set -x PATH "/usr/bin/vendor_perl" $PATH
contains /usr/bin/site_perl $PATH; or set -x PATH "/usr/bin/site_perl" $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

# Hook for desk activation
test -n "$DESK_ENV"; and . "$DESK_ENV"; or true
