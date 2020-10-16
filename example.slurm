#!/bin/sh

#SBATCH -J job_name
#SBATCH -p dgx-only
#SBATCH -G 1
#SBATCH -t 7-24
#SBATCH -o ./outputfilename-%A.out
#SBATCH -e ./errorfilename-%A.err
#SBATCH --mem 70G
#SBATCH -c 16

hostname
scl enable rh-python36 'python code.py'
