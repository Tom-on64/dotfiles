#!/bin/sh

echo "Updating system..."
yay -Syu

echo "Clearing pacman cache..."
pm_cache="$(du -sh /var/cache/pacman/pkg)"
paccache -r
echo "Cleaned $pm_cache!"

echo "Removing orphan packages..."
yay -Qdtq | yay -Rns -

echo "Clearing ~/.cache..."
home_cache="$(du -sh ~/.cache)"
rm -fr ~/.cache
echo "Cleaned $home_cache!"

echo "Cleaning system logs..."
sudo journalctl --vacuum-time=7d

