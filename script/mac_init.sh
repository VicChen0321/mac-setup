#!/bin/bash

echo "Change screenshot location"
mkdir -p ~/Desktop/screenshot
defaults write com.apple.screencapture location ~/Desktop/screenshot
killall SystemUIServer
