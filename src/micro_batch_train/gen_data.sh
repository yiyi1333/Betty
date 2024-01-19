#!/bin/bash

File=gen_data.py

# data=ogbn-products
# data=cora
# data=pubmed
# data=reddit
pwd

data=ogbn-arxiv
fan_out=10
# 判断目录是否存在
if [ ! -d "../../dataset/fan_out_10" ]; then
  mkdir ../../dataset/fan_out_10
fi
python $File --fan-out=$fan_out --num-layers=1 --num-epochs=180 --num-hidden=1 --dataset=$data

num_epoch=5

fan_out=10,25
if [ ! -d "../../dataset/fan_out_10,25" ]; then
  mkdir ../../dataset/fan_out_10,25
fi

python $File --fan-out=$fan_out --num-layers=2 --num-epochs=$num_epoch --num-hidden=1 --dataset=$data
#--------------------------------------------------------------------------------------------------------
data=ogbn-products

fan_out=10
python $File --fan-out=$fan_out --num-layers=1 --num-epochs=$num_epoch --num-hidden=1 --dataset=$data


fan_out=10,25
python $File --fan-out=$fan_out --num-layers=2 --num-epochs=$num_epoch --num-hidden=1 --dataset=$data


fan_out=10,25,30
if [ ! -d "../../dataset/fan_out_10,25,30" ]; then
  mkdir ../../dataset/fan_out_10,25,30
fi
#mkdir ../../dataset/fan_out_10,25,30
python $File --fan-out=$fan_out --num-layers=3 --num-epochs=$num_epoch --num-hidden=1 --dataset=$data


fan_out=10,25,30,40
if [ ! -d "../../dataset/fan_out_10,25,30,40" ]; then
  mkdir ../../dataset/fan_out_10,25,30,40
fi
#mkdir ../../dataset/fan_out_10,25,30,40
python $File --fan-out=$fan_out --num-layers=4 --num-epochs=$num_epoch --num-hidden=1 --dataset=$data


fan_out=10,25,30,40,50
if [ ! -d "../../dataset/fan_out_10,25,30,40,50" ]; then
  mkdir ../../dataset/fan_out_10,25,30,40,50
fi
#mkdir ../../dataset/fan_out_10,25,30,40,50
python $File --fan-out=$fan_out --num-layers=5 --num-epochs=$num_epoch --num-hidden=1 --dataset=$data


