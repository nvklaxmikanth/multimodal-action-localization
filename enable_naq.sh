#!/bin/bash

# Add anaconda path
export PATH="$PATH:/scratch/vn2263/nlp-project/miniconda3/bin"
# Activate conda environment
source activate naq

# Add cuda, cudnn paths
export CUDA_HOME="/usr/local/cuda-11.8"
export CUDNN_PATH="/usr/local/cuda-11.8"
export CUDNN_INCLUDE_DIR="$CUDNN_PATH/include"
export CUDNN_LIBRARY="$CUDNN_PATH/lib64"
export CUDACXX="$CUDA_HOME/bin/nvcc"

export NAQ_ROOT="/scratch/vn2263/step_grounding/NaQ"