#!/bin/bash

output_path="output/stage1_250"
model_path="output_init/ori2"
iters=15000

python train_frames.py --read_config --config_path test/flame_steak_suite/cfg_args.json \
    -o ${output_path} -m ${model_path} -v /local_datasets/3dgs/flame_steak \
    --first_load_iteration ${iters} --quiet --eval
