#!/bin/bash -l
#SBATCH -J metapy   #jobname
#SBATCH  --cpus-per-task=16
#SBATCH --mem=45GB

source ~/.bash_profile
conda activate python36

cd /home/pthorpe/scratch/kenya_metab/

python run_metapy.py
