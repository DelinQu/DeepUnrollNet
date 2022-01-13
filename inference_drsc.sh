#!/bin/bash

# create an empty folder for experimental results
mkdir -p experiments/results_drsc_origin
mkdir -p experiments/results_drsc_v1
mkdir -p experiments/results_drsc_carcam

cd deep_unroll_net

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/results_drsc_origin \
            --data_dir='/kaggle/input/rs2view/origin'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/results_drsc_v1 \
            --data_dir='/kaggle/input/rs2view/v1'
            
            
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/results_drsc_carcam \
            --data_dir='/kaggle/input/rs2view/carcam'
