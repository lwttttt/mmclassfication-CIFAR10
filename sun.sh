#!/bin/bash
module load anaconda/2021.05
module load cuda/11.6
module load gcc/11.2

source activate mmlab2
export PYTHONUNBUFFERED=1
python 	tools/train.py \
	configs/resnet50_8xb32_in1k.py \
	--work-dir work
