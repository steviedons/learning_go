#!/bin/bash

tmux new-session -d 
tmux split-window -v 
tmux split-window -h 
tmux -2 attach-session -d
