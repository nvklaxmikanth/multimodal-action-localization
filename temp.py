import torch

checkpoint_path = "/scratch/vn2263/step-grouding/ego4d-goalstep/step_grounding/experiments/vslnet/goalstep_1280/checkpoints/vslnet_ego4d_goalstep_omnivore_video_swinl_1280_bert/model/vslnet_9367.t7"
checkpoint = torch.load(checkpoint_path, map_location='cpu')
print(checkpoint.keys())
