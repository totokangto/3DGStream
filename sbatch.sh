#!/usr/bin/bash

#SBATCH -J 3DGStream
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=8
#SBATCH --mem-per-gpu=20G
#SBATCH -p batch_eebme_ugrad
#SBATCH -w moana-y2
#SBATCH -t 1-0
#SBATCH -o logs/slurm-%A.out

# initialize with 3DGS
#bash train.sh

# train 3DGStream
bash train_frame.sh

exit 0

