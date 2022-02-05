#!/bin/bash

# create an empty folder for experimental results
# mkdir -p experiments/Carcam
# mkdir -p experiments/3GS_sequence
# mkdir -p experiments/Grant_Park
# mkdir -p experiments/W890i_sequence
# mkdir -p experiments/Sequence77
mkdir -p experiments/Sequence77_Translation

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

python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/Sequence77_Translation \
            --data_dir='/kaggle/input/sequence77translation/Sequence77_Translation'
