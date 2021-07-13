#!/bin/sh
#taq=$1
sudo git fetch --all
sudo git reset --hard origin/main
sudo git pull
sudo systemctl restart creality_printer.service
sudo systemctl restart creality_video_monitoring.service
#git checkout "$tag" 
