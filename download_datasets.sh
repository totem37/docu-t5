#!/bin/bash
PATH=~/.local/bin:$PATH
. ~/.profile
pip install gdown

mkdir -p dataset_files/ori_dataset
cd dataset_files
mkdir statistics
gdown "1_AckYkinAnhqmRQtGsQgUKAnTHxxX5J0&confirm=t"
gdown "1yQ_mTwF4VzBB1_v5MB48odyXEGao2LrH&confirm=t"
gdown "1XZHXCHiA3qYRsHjF68oo5gtzU_gbGMjo&confirm=t"
gdown "1WlxXLFWpDSrCvCAIXDABSHQxIxXUdlp-&confirm=t"
gdown "1Vi3VX7tp9rClYZS3_VDNVH_yZzf5bVeg&confirm=t"

cd ..
unzip dataset_files/spider.zip -d dataset_files/ori_dataset/
unzip dataset_files/spider-dk.zip -d dataset_files/ori_dataset/
mv dataset_files/ori_dataset/spider-dk dataset_files/ori_dataset/spider_dk
unzip dataset_files/spider-syn.zip -d dataset_files/ori_dataset/
mv dataset_files/ori_dataset/spider-syn dataset_files/ori_dataset/spider_syn
unzip dataset_files/spider-realistic.zip -d dataset_files/ori_dataset/
mv dataset_files/ori_dataset/spider-realistic dataset_files/ori_dataset/spider_realistic
unzip dataset_files/spider-dates.zip -d dataset_files/ori_dataset/
mv dataset_files/ori_dataset/spider-dates dataset_files/ori_dataset/spider_dates
chmod -R 777 dataset_files/
