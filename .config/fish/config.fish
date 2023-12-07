if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

zoxide init fish | source

starship init fish | source

fish_add_path /opt/homebrew/bin

alias ls="eza"

alias pn=pnpm
# pnpm
set -gx PNPM_HOME "Users/austin/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end