#!bin/bash

sudo lsof /dev/snd/*

fuser -v /dev/snd/*

pactl list clients
