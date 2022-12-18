#!/bin/bash -e
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=14
#SBATCH --time=23:59:58
#SBATCH --mem=128GB
#SBATCH --job-name=dino
#SBATCH --output=/scratch/yl9539/dino/resnet-50/slurm_24_%j.out
#SBATCH --gres=gpu:4
module purge

# Enter required modules

python -m torch.distributed.launch --nproc_per_node=4 main_dino_resume.py --arch resnet50 --data_path /scratch/yl9539/Transformer-SSL/imagenet/train --output_dir ./resnet-50/model-24h

