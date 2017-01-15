#!/bin/bash

tmux new-session -d 
tmux split-window -v 'ssh master.steviedons.com'
tmux split-window -h 'vagrant ssh'
tmux -2 attach-session -d
