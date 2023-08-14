#!/bin/bash

if [ "$1" = "-h" ] || [ "$1" = "" ]
then
	printf "Usage:\t$0 [dataset path]\n"
	printf "\t$0 [dataset path] [arguments]\n"
	exit
fi

dataset_path=$1

if [ "$dataset_path" = "" ] || [ ! -d "$dataset_path" ]
then
	echo "[ERROR]: Invalid dataset path \"$dataset_path\". Quit."
	exit
fi


for dataset_path_segment in $(ls -d $dataset_path/segment-*/)
do
    ../../install/amd64/depth_clustering/release/bin/depth_clustering $dataset_path_segment ../../config/depth_clustering.json
done
