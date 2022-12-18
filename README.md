# DLS_FINAL_DINO

Part of Final Project for 2021 Intro to Deep Learning System. DINO algorithm implementation, from DINO official.

Author: Yuanzhe Liu yl9539

For the official implementation, follow this link: https://github.com/facebookresearch/dino

For the official README, README_DINO.md is the one file.

## Illustration

In my Intro to Deep Learning System Final Project, I used MoBY to train Swin Transformer as the backbone. 

In this repo, I use DINO to train ResNet-50 as a backbone.

For Swin Transformer with MoBY, check out this repo below:

https://github.com/ggflow123/DLS_Final_Project


## Usage

For the program, first make a director called resnet-50, then run:

```
python -m torch.distributed.launch --nproc_per_node=1 main_dino.py --arch resnet50 --data_path /scratch/yl9539/Transformer-SSL/imagenet/train --output_dir ./resnet-50/MODEL_NAME
```



On NYU HPC Greene or similar Linux Environment cloud computing platform, for 4GPU, 24 hours training, do:

```
sbatch run_resnet.slurm
```

For testing whether the code can run on the platform, for 4GPU, 1 hours testing, do:

```
sbatch run_test.slurm
```
