#!/bin/bash

if [ "$1" = "-h" ] || [ "$1" = "" ]
then
	printf "Usage:\t$0 [segment path]\n"
	exit
fi

segment_path=$1

if [ "$segment_path" = "" ] || [ ! -d "$segment_path" ]
then
	echo "[ERROR]: Invalid segment path \"$segment_path\". Quit."
	exit
fi

../../install/amd64/depth_clustering/release/bin/visualizer $segment_path ../../config/depth_clustering.json ../../config/visualizer.json