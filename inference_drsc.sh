#!/bin/bash

# create an empty folder for experimental results
mkdir -p experiments/results_drsc

cd deep_unroll_net

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/results_drsc \
            --data_dir='../dataset/Drsc'
