#!/bin/bash
cd deep_unroll_net

dataset='Carla_rs_test'
python inference_drsc_metrics.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/metrics/$dataset \
            --data_dir=../dataset/RS_clean/$dataset/rs

dataset='Fastec_rs_test'
python inference_drsc_metrics.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/metrics/$dataset \
            --data_dir=../dataset/RS_clean/$dataset/rs

dataset='IMU_test'
python inference_drsc_metrics.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/metrics/$dataset \
            --data_dir=../dataset/RS_clean/$dataset/rs

dataset='rscd_test'
python inference_drsc_metrics.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/metrics/$dataset \
            --data_dir=../dataset/RS_clean/$dataset/rs

dataset='rsvi_t1_fast'
python inference_drsc_metrics.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/metrics/$dataset \
            --data_dir=../dataset/RS_clean/$dataset/rs