#!/bin/bash
#SBATCH --nodelist=romer3
#SBATCH -J sv3d-mini    # job name
#SBATCH --gres=gpu:1    # or you can specify gpu type: --gres=gpu:rtx2080ti:1
#SBATCH --output=/home/erce/sv3d-%j.out # output file
#SBATCH --error=/home/erce/sv3d-%j.err  # error file

echo "$CUDA_VISIBLE_DEVICES"

source activate sv3d

python scripts/sampling/simple_video_sample.py --input_path /home/erce/mini-imagenet-tools/processed_images/val/ --output_folder /dl_scratch1/erce/imagenet1k-multiview/val --version sv3d_u