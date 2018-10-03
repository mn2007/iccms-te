memo-181002-作業メモ-第２回計算物質科学イノベーションキャンプ-181002

構築されたEigenKernelのapp
/home/guest06/practice/eigenkernel/bin/eigenkernel_app



----------------------------------------------------
Practice EigenKernel
Writer： mfukuda (2018/09/26)
上記をトレース

    2  mkdir practice
    3  cd practice
    5  git clone https://github.com/eigenkernel/eigenkernel.git
    7  cd eigenkernel/

   11  vim  Makefile.inc

=======================================
[guest06@gauss eigenkernel]$ vim  Makefile.inc
FC = mpif90
MACRO_PREFIX = -D
CPPFLAG = -cpp
FFLAGS = -O2 -warn all -fopenmp -xHost -mkl=parallel -I/home/public/ -I/home/public/include/elpa_openmp-2014.06.001/modules/
LDFLAGS = $(FFLAGS)
WITH_EIGENEXA=1
WITH_ELPA=1
LIBS = -L/home/public/lib/ -L/home/public/lib/ -lelpa_openmp -lEigenExa -lmkl_scalapack_lp64 -lmkl_blacs_openmpi_lp64 -liomp5 -lpthread -lm -ldl
WNO_UNUSED_DUMMY_ARGUMENT_FLAG = -Wno-unused-dummy-argument
=======================================

   12  make
   13  ll bin/

=======================================
[guest06@gauss eigenkernel]$ ll bin/
total 1688
-rwxr-xr-x 1 guest06 guest 1725950 Oct  2 16:53 eigenkernel_app
=======================================






----------------------------------------------------
K-ep

   19  git clone https://github.com/lee-djl/k-ep.git
   21  cd k-ep/
   23  cp Makefile.inc Makefile.inc.org
   24  vim Makefile.inc

=======================================
[guest06@gauss k-ep]$ vim Makefile.inc
# Fortran compiler and its options
FC = mpif90
FFLAGS = -O3
#FC = gfortran
#FFLAGS = -fimplicit-none -O3

# MUMPS
MUMPSPATH =
MUMPSFLAGS = -L/home/public/lib -ldmumps -lmumps_common
#MUMPSPATH = set_path_if_necessary_/MUMPS_5.0.1/lib
#MUMPSFLAGS = -L$(MUMPSPATH) -ldmumps -lmumps_common

# METIS
METISPATH =
METISFLAGS = -lmetis
#METISPATH = set_path_if_necessary_/metis-5.1.0/lib
#METISFLAGS = -L$(METISPATH) -lmetis

# PORD (MUMPS built-in library)
PORDPATH =
PORDFLAGS = -lpord
#PORDPATH = set_path_if_necessary_/MUMPS_5.0.1/PORD/lib
#PORDFLAGS = -L$(PORDPATH) -lpord

# MPI for MUMPS (Sequential version of MUMPS requires MPI)
MPIPATH =
MPIFLAGS = -lmkl_scalapack_lp64 -lmkl_blacs_openmpi_lp64 -liomp5 -lpthread -lm -ldl
#MPIPATH = set_path_if_necessary/MUMPS_5.0.1/libseq
#MPIFLAGS = -L$(MPIPATH) -lmpiseq

# LAPACK
LAPACKPATH =
LAPACKFLAGS =
#LAPACKPATH = set_path_if_necessary_/lib
#LAPACKFLAGS = -L$(LAPACKPATH) -llapack

# BLAS
BLASPATH =
BLASFLAGS = -mkl
#BLASPATH = set_path_if_necessary_/lib
#BLASFLAGS = -L$(BLASPATH) -lblas

OTHERFLAGS = -lpthread -lm

LIBS = $(MUMPSFLAGS) $(METISFLAGS) $(PORDFLAGS) $(MPIFLAGS) $(LAPACKFLAGS) $(BLASFLAGS) $(OTHERFLAGS)
#LIBS = $(MUMPSFLAGS) $(METISFLAGS) $(PORDFLAGS) $(MPIFLAGS) $(LAPACKFLAGS) $(BLASFLAGS) $(OTHERFLAGS)

# For MUMPS
INCMPI = set_path_if_necessary_/MUMPS_5.0.1/libseq
INCMUMPS = set_path_if_necessary_/MUMPS_5.0.1/include
INCLUDES = -I. -I$(INCMPI) -I$(INCMUMPS)
#INCMPI = set_path_if_necessary_/MUMPS_5.0.1/libseq
#INCMUMPS = set_path_if_necessary_/MUMPS_5.0.1/include
#INCLUDES = -I. -I$(INCMPI) -I$(INCMUMPS)
=======================================

   25  make
   26  cd example/
   27  ll

=======================================
[guest06@gauss example]$ ll
total 4776
-rw-r--r-- 1 guest06 guest    3578 Oct  2 20:10 example.f90
-rwxr-xr-x 1 guest06 guest 4594789 Oct  2 20:21 example.out
-rw-r--r-- 1 guest06 guest    2638 Oct  2 20:10 example_utility.f90
-rw-r--r-- 1 guest06 guest    9976 Oct  2 20:21 example_utility.o
-rw-r--r-- 1 guest06 guest     609 Oct  2 20:10 Makefile
-rw-r--r-- 1 guest06 guest   29262 Oct  2 20:10 mmio.f
-rw-r--r-- 1 guest06 guest   82656 Oct  2 20:21 mmio.o
-rw-r--r-- 1 guest06 guest    1236 Oct  2 20:21 mod_example_readmtx.mod
-rw-r--r-- 1 guest06 guest      39 Oct  2 20:10 s_eval00002343.txt
-rw-r--r-- 1 guest06 guest  135894 Oct  2 20:10 s_evec00002343.txt
-rw-r--r-- 1 guest06 guest    2979 Oct  2 20:10 s_output.txt
=======================================





----------------------------------------------------
komega



   17  wget http://www.openmx-square.org/openfft/openfft1.2.tar.gz
   18  cd practice/Komega-2.0.0/
   19  mkdir install_dir
   28  ./configure --prefix=/home/guest06/practice/Komega-2.0.0/install_dir/ --with-mpi
   29  make
   30  make install
   31  ll install_dir/

=======================================
[guest06@gauss Komega-2.0.0]$ ll install_dir/
total 16
drwxr-xr-x 2 guest06 guest 4096 Oct  2 21:37 bin
drwxr-xr-x 2 guest06 guest 4096 Oct  2 21:37 include
drwxr-xr-x 2 guest06 guest 4096 Oct  2 21:37 lib
drwxr-xr-x 3 guest06 guest 4096 Oct  2 21:37 share
=======================================

----------------------------------------------------
----------------------------------------------------
