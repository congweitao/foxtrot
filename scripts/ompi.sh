#!/bin/bash

export PATH=/proj/ArmCompiler/bin:$PATH
export LD_LIBRARY_PATH=/proj/ArmCompiler/lib:$LD_LIBRARY_PATH

CC=armclang CXX=armclang++ FC=armflang ../configure --prefix=/proj/openmpi_ArmCompiler --enable-mpirun-prefix-by-default --enable-mpi1-compatibility

make -j129 V=1 all && make install

export PATH=/proj/openmpi_ArmCompiler/bin:$PATH
