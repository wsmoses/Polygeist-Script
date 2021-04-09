#!/bin/bash
for i in {24..95}; do
   echo "Disabling logical HT core $i."
   echo 0 > /sys/devices/system/cpu/cpu${i}/online;
done

echo "1" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo

sudo systemctl mask snapd.service
sudo killall snapd
sudo systemctl mask amazon-ssm-agent
sudo killall amazon-ssm-agent

sudo apt purge snapd -y

sudo systemctl mask unattended-upgrades.service
sudo systemctl stop unattended-upgrades.service

sudo systemctl mask accounts-daemon.service
sudo systemctl stop accounts-daemon.service

sudo systemctl mask networkd-dispatcher.service
sudo systemctl stop networkd-dispatcher.service

