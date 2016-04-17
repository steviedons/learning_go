#!/bin/bash

tmux new-session -d 'vim'
tmux split-window -v 'ipython'
tmux split-window -h
tmux -2 attach-session -d
