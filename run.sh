#!/bin/bash

# Navigate to the training directory
cd /scratch/vn2263/step-grouding/ego4d-goalstep/step_grounding

# Train VSLNet on GoalStep using nohup to keep it running in the background
nohup bash train.sh experiments/vslnet/goalstep_128_stacked_1/ > training_logs.out 2>&1 &

# Get the PID of the training process
TRAINING_PID=$!

# Monitor GPU usage every 5 seconds and save to gpu_usage.out using nohup
nohup watch -n 5 nvidia-smi > gpu_usage.out 2>&1 &

# Print out information
echo "Training process started with PID: $TRAINING_PID"
echo "Training logs are being saved to: training_logs.out"
echo "GPU usage is being monitored and logged to: gpu_usage.out"
