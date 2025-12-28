#!/bin/bash

#SBATCH -t 03:00 

#SBATCH --account=bsc31
#SBATCH --qos=gp_debug


module purge
module load intel

./compilation-icx.sh
