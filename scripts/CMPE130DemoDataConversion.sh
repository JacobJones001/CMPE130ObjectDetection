#!/bin/bash

export PYTHONPATH=$PYTHONPATH:~/UnderWaterROV/third_party_libraries/models/research:~/UnderWaterROV/third_party_libraries/models/research/slim

python /home/jacobjones/UnderWaterROV/training/experiments/CMPE130Demo/scripts/create_pascal_tf_record.py \
        --data_dir=/home/jacobjones/UnderWaterROV/training/experiments/CMPE130Demo \
        --output_name=CMPE130Demo
