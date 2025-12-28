#!/bin/bash
#SBATCH --job-name=hello_py      # Job name
#SBATCH --output=hello_py.out    # Standard output file
#SBATCH --error=hello_py.err     # Error file
#SBATCH --ntasks=1               # Number of tasks
#SBATCH --cpus-per-task=1        # CPUs per task
#SBATCH --time=00:02:00          # Time limit
#SBATCH --account=bsc31          # Project Account
#SBATCH --qos=gp_debug           # QoS (Queue)

# 1. Load dependencies first
module load intel
module load mkl

# 2. Load Python module
module load python

# 3. Execute the script
# srun ensures SLURM manages the process creation
srun python hello_node.py
