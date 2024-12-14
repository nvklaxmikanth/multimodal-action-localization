# SBATCH --job-name=ego_4d
# SBATCH --open-mode=append
# SBATCH --output=./%j_%x.out
# SBATCH --error=./%j_%x.err
# SBATCH --export=ALL
# SBATCH --time=00:15:00
# SBATCH --gres=gpu:1
# SBATCH --requeue

singularity exec --nv --overlay /scratch/vn2263/overlay-25GB-500K.ext3:rw /scratch/vn2263/cuda11.8.86-cudnn8.7-devel-ubuntu22.04.2.sif /bin/bash"

source /ext3/miniconda3/etc/profile.d/conda.sh
export PATH=/ext3/miniconda3/bin:$PATH

conda activate naq

cd /scratch/vn2263/step-grouding/ego4d-goalstep/step_grounding
bash train.sh experiments/vslnet/goalstep_1280/
"