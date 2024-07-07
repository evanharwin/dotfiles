if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vv='
        python -m venv .venv
        source .venv/bin/activate.fish
        pip install --upgrade pip
        cp ~/Code/default-pyproject/* . --recursive
    '
    alias icat='kitty +kitten icat'
    starship init fish | source
end
