#!/bin/bash

# !! Updata the path to the dataset and directory to 
# !! save your trained models with your own local path !!
# dataset
carla_dataset_type=Carla
carla_root_path_test_data=../Carla_rs_test/

fastec_dataset_type=Fastec
fastec_root_path_test_data=../Fastec_rs_test/

# model
model_dir=../experiments/pretrained_models/

# result
mkdir -p experiments/Carla
mkdir -p experiments/Fastec

results_dir_Carla=../experiments/Carla/
results_dir_Fastec=../experiments/Fastec/

# inference
cd deep_unroll_net

python inference.py \
          --dataset_type=$carla_dataset_type \
          --dataset_root_dir=$carla_root_path_test_data \
          --log_dir=$model_dir \
          --net_type='netMiddle' \
          --results_dir=$results_dir_Carla \
          --model_label=pretrained_carla \
          --compute_metrics 

python inference.py \
          --dataset_type=$fastec_dataset_type \
          --dataset_root_dir=$fastec_root_path_test_data \
          --log_dir=$model_dir \
          --net_type='netMiddle' \
          --results_dir=$results_dir \
          --model_label=results_dir_Fastec \
          --compute_metrics 
          
