#!/bin/bash 

PID=()
cd ~/github/Algorithm-training/

git add *

git commit -m "$(date)"

git push origin master &

PID+=("$!")

cd ~/github/linux/

git add *

git commit -m "$(date)"

git push origin master &

PID+=("$!")

cd ~/.emacs.d/

git add *

git commit -m "$(date)"

git push origin master &

PID+=("$!")

cd ~/github/zhongqian97.github.io/

git add *

git commit -m "$(date)"

git push origin master &

PID+=("$!")

wait ${PID[@]}
