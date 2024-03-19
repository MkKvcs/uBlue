#!/usr/bin/env bash
set -oue pipefail
BLUE_MOD_FILE="/etc/modprobe.d/99-bluetooththunder.conf"
sh -c 'echo "install bluetooth /sbin/modprobe --ignore-install bluetooth" >> "$1"' _ "$BLUE_MOD_FILE"
sh -c 'echo "install btusb /sbin/modprobe --ignore-install btusb" >> "$1"' _ "$BLUE_MOD_FILE"
sh -c 'echo "install btusb /sbin/modprobe --ignore-install btusb" >> "$1"' _ "$BLUE_MOD_FILE"
sh -c 'echo "install thunderbolt /sbin/modprobe --ignore-install thunderbolt" >> "$1"' _ "$BLUE_MOD_FILE"
chmod 644 $BLUE_MOD_FILE
