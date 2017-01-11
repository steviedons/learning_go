#!/bin/bash

tmux new-session -d 'vim'
tmux split-window -v 'ssh master.steviedons.com'
tmux split-window -h
tmux -2 attach-session -d
