set -gx EDITOR nvim
set -gx VISUAL nvim

if status is-interactive
    set -g fish_greeting
    fish_vi_key_bindings

    # Use Vim-like cursor shapes in supported terminals.
    set -g fish_cursor_default block
    set -g fish_cursor_insert line
    set -g fish_cursor_replace_one underscore
    set -g fish_cursor_replace underscore
    set -g fish_cursor_visual block

    # Commands to run in interactive sessions can go here
    if type -q starship
        starship init fish | source
    end
end
