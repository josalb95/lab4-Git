#!/bin/bash
#
#SBATCH -p pacioli-q
#SBATCH --chdir=/home/alumno03/Lab4
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=lab4_pacioli-alumno03.sh
#SBATCH --output=%u-%j.out

./file-cut.sh