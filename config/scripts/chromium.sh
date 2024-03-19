#!/usr/bin/env bash
set -oue pipefail
sed 's/--enable-features=/--enable-features=TouchpadOverscrollHistoryNavigation,/' /etc/chromium/chromium.conf
