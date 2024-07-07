if status is-interactive
    alias vv=" \
        python -m venv .venv \
        source .venv/bin/activate.fish \
        pip install --upgrade pip \
        cp ~/Code/default-pyproject/* . --recursive
    "
    alias icat="kitty +kitten icat"
    starship init fish | source
end
