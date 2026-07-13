#!/usr/bin/env fish

# Cycles the wallpaper on an interval, picking randomly from a day or
# night subfolder of the given wallpapers directory based on the
# current local hour.

if test (count $argv) -lt 1
    echo 'Usage: ./wallpaper-cycle.fish <wallpapers-dir> [interval-seconds]'
    exit 1
end

set -l base_dir $argv[1]
set -l interval 10800
if test (count $argv) -ge 2
    set interval $argv[2]
end

sleep 2

while true
    set -l hour (date +%H)
    set -l period nocturno
    if test $hour -ge 8; and test $hour -lt 18
        set period diurno
    end

    caelestia wallpaper -r $base_dir/$period

    sleep $interval
end
