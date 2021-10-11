#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# source wal colors.
source ~/.cache/wal/colors.sh

# export envar with alpha set.
export color0_alpha="#cf${color0/'#'}"

# Launch Polybar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload side &
  done
else
  polybar --reload side &
fi
