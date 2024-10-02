if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

    starship init fish | source

    set -x VISUAL nvim
    set -x EDITOR nvim
    set -x ANKI_WAYLAND 1
    alias ls "eza -l"
end
