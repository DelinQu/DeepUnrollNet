#!/bin/bash
cd deep_unroll_net

dataset='Carcam'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='3GS_sequence'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='W890i_sequence'
python inference_drsc.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='Sequence77'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset


dataset='Sequence77_Rotation'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='Sequence77_Translation'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='House_Rot1_B0'
python inference_drsc.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='House_Rot1_B40'
python inference_drsc.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='House_Rot2_B40'
python inference_drsc.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='House_Trans1_B40'
python inference_drsc.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='House_Trans_Rot1_B40'
python inference_drsc.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='IMU_Seq1'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='IMU_Seq3'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='IMU_Seq6'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='IMU_Seq7'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='Carla'
python inference_drsc.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='Fastec'
python inference_drsc.py \
            --model_label='pretrained_fastec' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset

dataset='RSVi_T1_FAST'
python inference_drsc.py \
            --model_label='pretrained_carla' \
            --log_dir=../experiments/pretrained_models \
            --net_type='netMiddle' \
            --results_dir=../experiments/inliner/$dataset \
            --data_dir=../dataset/RS_inliner/$dataset