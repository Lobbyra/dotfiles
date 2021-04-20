#!/bin/bash

tmux new-window \; \
    send-keys 'lf' C-m \; \
    split-window -h -p 91 \; \
    send-keys 'vim +E' C-m \; \
    split-window -h -p 66 \; \
    send-keys 'vim +E' C-m \; \
    split-window -h -p 50 \; \
    send-keys 'vim +E' C-m \; \
    select-pane -t 1 \; \
    split-window -v -p 30 \; \
