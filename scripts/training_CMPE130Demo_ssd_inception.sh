#!/bin/bash

export PYTHONPATH=$PYTHONPATH:~/UnderWaterROV/third_party_libraries/models/research:~/UnderWaterROV/third_party_libraries/models/research/slim

PIPELINE_CONFIG_PATH=/home/jacobjones/UnderWaterROV/training/experiments/CMPE130Demo/ssd_inception_v2_cmpe_130_demo.config
MODEL_DIR=/home/jacobjones/UnderWaterROV/training/experiments/CMPE130Demo/models/ssd_inception_v2_test_4/
NUM_TRAIN_STEPS=1500 # Increase this number to interate on a current training session?
SAMPLE_1_OF_N_EVAL_EXAMPLES=1
python ~/UnderWaterROV/third_party_libraries/models/research/object_detection/model_main.py \
    --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
    --model_dir=${MODEL_DIR} \
    --num_train_steps=${NUM_TRAIN_STEPS} \
    --sample_1_of_n_eval_examples=$SAMPLE_1_OF_N_EVAL_EXAMPLES \
    --alsologtostderr
