#!/bin/bash

# create an empty folder for experimental results
# mkdir -p experiments/Carla
# mkdir -p experiments/Fastec
mkdir -p experiments/IMU_test

cd deep_unroll_net


# python inference_drsc_metrics.py \
#             --model_label='pretrained_carla' \
#             --log_dir=../experiments/pretrained_models \
#             --net_type='netMiddle' \
#             --results_dir=../experiments/Carla \
#             --data_dir='../Carla_rs_test/Carla_town05'

# python inference_drsc_metrics.py \
#             --model_label='pretrained_fastec' \
#             --log_dir=../experiments/pretrained_models \
#             --net_type='netMiddle' \
#             --results_dir=../experiments/Fastec \
#             --data_dir='../Fastec_rs_test/'

python inference_drsc_metrics.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/IMU_test \
            --data_dir='../input/imu-test/IMU_test'
