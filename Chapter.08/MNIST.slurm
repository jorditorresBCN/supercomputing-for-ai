#!/bin/bash
#SBATCH --chdir .
#SBATCH --job-name=MNIST    


#SBATCH --output=%x.%j.out     
#SBATCH --error=%x.%j.err     

#SBATCH --nodes 1                   
#SBATCH --ntasks-per-node 1                                       
#SBATCH --cpus-per-task 80  

#SBATCH --time 00:15:00     

#SBATCH --account <account>       
#SBATCH --qos <queue>     

echo " "
echo "Job Name: $SLURM_JOB_NAME"
echo "Job ID: $SLURM_JOB_ID"
echo "Submit Directory: $SLURM_SUBMIT_DIR"
echo "Partition: $SLURM_JOB_PARTITION"
echo "Account: $SLURM_JOB_ACCOUNT"
echo " "

module purge
module load singularity

SINGULARITY_CONTAINER=/<path_to_container>/MN5-NGC-TensorFlow-23.03.sif
singularity exec --nv $SINGULARITY_CONTAINER python MNIST.py 
