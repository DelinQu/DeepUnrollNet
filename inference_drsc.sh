#!/bin/bash

# create an empty folder for experimental results
## RS2View
# mkdir -p experiments/Carcam
# mkdir -p experiments/3GS_sequence
# mkdir -p experiments/Grant_Park
# mkdir -p experiments/W890i_sequence
# mkdir -p experiments/Sequence77

## Sequence77
# mkdir -p experiments/Sequence77_Translation

## RS2View2
mkdir -p experiments/House_Rot1_B0
mkdir -p experiments/House_Rot1_B40
mkdir -p experiments/House_Rot2_B40
mkdir -p experiments/House_Trans1_B40
mkdir -p experiments/House_Trans_Rot1_B40

mkdir -p experiments/IMU_Seq1
mkdir -p experiments/IMU_Seq3
mkdir -p experiments/IMU_Seq6
mkdir -p experiments/IMU_Seq7
mkdir -p experiments/Carla
mkdir -p experiments/Fastec

cd deep_unroll_net

# python inference_drsc.py \
#             --model_label='pretrained_fastec' \
#             --log_dir=../experiments/pretrained_models \
#             --net_type='netMiddle' \
#             --results_dir=../experiments/Carcam \
#             --data_dir='/kaggle/input/rs2view/Carcam'

# python inference_drsc.py \
#             --model_label='pretrained_fastec' \
#             --log_dir=../experiments/pretrained_models \
#             --net_type='netMiddle' \
#             --results_dir=../experiments/3GS_sequence \
#             --data_dir='/kaggle/input/rs2view/3GS_sequence'
            
            
# python inference_drsc.py \
#             --model_label='pretrained_fastec' \
#             --log_dir=../experiments/pretrained_models \
#             --net_type='netMiddle' \
#             --results_dir=../experiments/Grant_Park \
#             --data_dir='/kaggle/input/rs2view/Grant_Park'
            

# python inference_drsc.py \
#             --model_label='pretrained_fastec' \
#             --log_dir=../experiments/pretrained_models \
#             --net_type='netMiddle' \
#             --results_dir=../experiments/W890i_sequence \
#             --data_dir='/kaggle/input/rs2view/W890i_sequence'
            
            
# python inference_drsc.py \
#             --model_label='pretrained_fastec' \
#             --log_dir=../experiments/pretrained_models \
#             --net_type='netMiddle' \
#             --results_dir=../experiments/Sequence77 \
#             --data_dir='/kaggle/input/rs2view/Sequence77'

## Sequence77
# python inference_drsc.py \
#             --model_label='pretrained_fastec' \
#             --log_dir=../experiments/pretrained_models \
#             --net_type='netMiddle' \
#             --results_dir=../experiments/Sequence77_Translation \
#             --data_dir='/kaggle/input/sequence77translation/Sequence77_Translation'

## RS2View2
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/House_Rot1_B0 \
            --data_dir='/kaggle/input/rs2view2/House_Rot1_B0'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/House_Rot1_B40 \
            --data_dir='/kaggle/input/rs2view2/House_Rot1_B40'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/House_Rot1_B0 \
            --data_dir='/kaggle/input/rs2view2/House_Rot1_B0'
            
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/House_Trans1_B40 \
            --data_dir='/kaggle/input/rs2view2/House_Trans1_B40'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/House_Trans_Rot1_B40 \
            --data_dir='/kaggle/input/rs2view2/House_Trans_Rot1_B40'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/IMU_Seq1 \
            --data_dir='/kaggle/input/rs2view2/IMU_Seq1'
            
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/IMU_Seq3 \
            --data_dir='/kaggle/input/rs2view2/IMU_Seq3'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/IMU_Seq6 \
            --data_dir='/kaggle/input/rs2view2/IMU_Seq6'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/IMU_Seq7 \
            --data_dir='/kaggle/input/rs2view2/IMU_Seq7'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/Carla \
            --data_dir='/kaggle/input/rs2view2/Carla'

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/Fastec \
            --data_dir='/kaggle/input/rs2view2/Fastec'
