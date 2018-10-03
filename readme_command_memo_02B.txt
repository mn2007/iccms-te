memo-181002-作業-第２回計算物質科学イノベーションキャンプ-181002




----------------------------------------------------
FFTW3
再Configure(参考程度ですGuest17の配下のものを本番では使用してください)
   80  cd ~/practice/
   82  tar -xvzof fftw-3.3.8.tar.gz
   83  cd ~/practice/fftw-3.3.8
   86  CC=mpicc F77=mpifort CFLAGS="-O3 -fno-tree-vectorize -fexceptions -m64 -mfpmath=sse -msse4.1 -march=native" FFLAGS="-O3 -fno-tree-vectorize -fexceptions -m64 -mfpmath=sse -msse4.1 -march=native" ./configure --prefix=/$HOME/practice/local --enable-threads --enable-shared --enable-static --enable-long-double
   87  make
   88  make check

動作テスト
#http://auewe.hatenablog.com/entry/2013/06/19/221946

   69  mkdir worktest
  116  cd ~/worktest/
  117  vim test181003
  118  ls
  119  gcc test181003.c -lm -lfftw3
  120  ./a.out

=======================================
[guest06@gauss worktest]$ ls
test181003.c
[guest06@gauss worktest]$ gcc test181003.c -lm -lfftw3
[guest06@gauss worktest]$ ./a.out
b_0 = +11.000000 +0.000000*i
b_1 = -4.000000 +1.000000*i
b_2 = +1.000000 +0.000000*i
b_3 = -4.000000 -1.000000*i
=======================================






=======================================
[guest06@gauss fftw-3.3.8]$ mpicc --version
icc (ICC) 16.0.2 20160204
Copyright (C) 1985-2016 Intel Corporation.  All rights reserved.

[guest06@gauss fftw-3.3.8]$ mpifort --version
ifort (IFORT) 16.0.2 20160204
Copyright (C) 1985-2016 Intel Corporation.  All rights reserved.

[guest06@gauss fftw-3.3.8]$
[guest06@gauss fftw-3.3.8]$ CC=mpicc F77=mpifort CFLAGS="-O3 -fno-tree-vectorize -fexceptions -m64 -mfpmath=sse -msse4.1 -march=native" FFLAGS="-O3 -fno-tree-vectorize -fexceptions -m64 -mfpmath=sse -msse4.1 -march=native" ./configure --prefix=/$HOME/practice/local --enable-threads --enable-shared --enable-static --enable-long-double
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether to enable maintainer-specific portions of Makefiles... no
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking for gcc... mpicc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether mpicc accepts -g... yes
checking for mpicc option to accept ISO C89... none needed
checking whether mpicc understands -c and -o together... yes
checking for style of include used by make... GNU
checking dependency style of mpicc... gcc3
checking for C compiler vendor... intel
checking for mpicc option to accept ISO C99... none needed
checking for mpicc option to accept ISO Standard C... (cached) none needed
checking whether ln -s works... yes
checking whether make sets $(MAKE)... (cached) yes
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for fgrep... /bin/grep -F
checking for ld used by mpicc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... /usr/bin/nm -B
checking the name lister (/usr/bin/nm -B) interface... BSD nm
checking the maximum length of command line arguments... 1966080
checking how to convert x86_64-pc-linux-gnu file names to x86_64-pc-linux-gnu format... func_convert_file_noop
checking how to convert x86_64-pc-linux-gnu file names to toolchain format... func_convert_file_noop
checking for /usr/bin/ld option to reload object files... -r
checking for objdump... objdump
checking how to recognize dependent libraries... pass_all
checking for dlltool... dlltool
checking how to associate runtime and link libraries... printf %s\n
checking for ar... ar
checking for archiver @FILE support... @
checking for strip... strip
checking for ranlib... ranlib
checking command to parse /usr/bin/nm -B output from mpicc object... ok
checking for sysroot... no
checking for a working dd... /bin/dd
checking how to truncate binary pipes... /bin/dd bs=4096 count=1
checking for mt... no
checking if : is a manifest tool... no
checking how to run the C preprocessor... mpicc -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking for dlfcn.h... yes
checking for objdir... .libs
checking if mpicc supports -fno-rtti -fno-exceptions... yes
checking for mpicc option to produce PIC... -fPIC -DPIC
checking if mpicc PIC flag -fPIC -DPIC works... yes
checking if mpicc static flag -static works... no
checking if mpicc supports -c -o file.o... yes
checking if mpicc supports -c -o file.o... (cached) yes
checking whether the mpicc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... yes
checking for ranlib... (cached) ranlib
checking for ocamlbuild... no
checking whether C compiler accepts -no-gcc... yes
checking for ANSI C header files... (cached) yes
checking fcntl.h usability... yes
checking fcntl.h presence... yes
checking for fcntl.h... yes
checking fenv.h usability... yes
checking fenv.h presence... yes
checking for fenv.h... yes
checking limits.h usability... yes
checking limits.h presence... yes
checking for limits.h... yes
checking malloc.h usability... yes
checking malloc.h presence... yes
checking for malloc.h... yes
checking stddef.h usability... yes
checking stddef.h presence... yes
checking for stddef.h... yes
checking sys/time.h usability... yes
checking sys/time.h presence... yes
checking for sys/time.h... yes
checking altivec.h usability... no
checking altivec.h presence... no
checking for altivec.h... no
checking for an ANSI C-conforming const... yes
checking for inline... inline
checking for size_t... yes
checking for uint32_t... yes
checking for uint64_t... yes
checking whether time.h and sys/time.h may both be included... yes
checking for long double... yes
checking for hrtime_t... no
checking size of int... 4
checking size of unsigned int... 4
checking size of long... 8
checking size of unsigned long... 8
checking size of long long... 8
checking size of unsigned long long... 8
checking size of size_t... 8
checking size of ptrdiff_t... 8
checking for ptrdiff_t... yes
checking for uintptr_t... yes
checking size of float... 4
checking size of double... 8
checking size of fftw_r2r_kind... 4
checking for working alloca.h... yes
checking for alloca... yes
checking for working strtod... yes
checking for vprintf... yes
checking for _doprnt... no
checking for sin in -lm... yes
checking for BSDgettimeofday... no
checking for gettimeofday... yes
checking for gethrtime... no
checking for read_real_time... no
checking for time_base_to_time... no
checking for drand48... yes
checking for sqrt... yes
checking for memset... yes
checking for posix_memalign... yes
checking for memalign... yes
checking for _mm_malloc... yes
checking for _mm_free... yes
checking for clock_gettime... yes
checking for mach_absolute_time... no
checking for sysctl... yes
checking for abort... yes
checking for sinl... yes
checking for cosl... yes
checking for snprintf... yes
checking for memmove... yes
checking for strchr... yes
checking for getpagesize... yes
checking whether sinl is declared... yes
checking whether cosl is declared... yes
checking whether sinq is declared... no
checking whether cosq is declared... no
checking whether memalign is declared... yes
checking whether drand48 is declared... yes
checking whether srand48 is declared... yes
checking whether posix_memalign is declared... yes
checking for _rtc intrinsic... no
checking for cosl... (cached) yes
checking for sinl... (cached) yes
checking for tanl... yes
checking for isnan... yes
checking whether C compiler accepts -mpreferred-stack-boundary=4... yes
checking whether the stack is at least 8-byte aligned by gcc... checking whether C compiler accepts -malign-double... yes
yes
checking whether we are using the GNU Fortran 77 compiler... no
checking whether mpifort accepts -g... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... yes
checking for mpifort option to produce PIC... -fPIC
checking if mpifort PIC flag -fPIC works... yes
checking if mpifort static flag -static works... no
checking if mpifort supports -c -o file.o... yes
checking if mpifort supports -c -o file.o... (cached) yes
checking whether the mpifort linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking dynamic linker characteristics... (cached) GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking how to get verbose linking output from mpifort... -v
checking for Fortran 77 libraries of mpifort...  -L/home/public/lib -L/opt/intel/compilers_and_libraries_2016.2.181/linux/ipp/lib/intel64 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/compiler/lib/intel64 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/mkl/lib/intel64 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/tbb/lib/intel64/gcc4.4 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/lib/intel64_lin -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/../tbb/lib/intel64_lin/gcc4.4 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/../compiler/lib/intel64_lin -L/opt/intel/compilers_and_libraries_2016.2.181/linux/compiler/lib/intel64_lin -L/home/public/lib/gcc/x86_64-pc-linux-gnu/7.3.0/ -L/home/public/lib/gcc/x86_64-pc-linux-gnu/7.3.0/../../../../lib64 -L/home/public/lib/gcc/x86_64-pc-linux-gnu/7.3.0/../../../../lib64/ -L/lib/../lib64 -L/lib/../lib64/ -L/usr/lib/../lib64 -L/usr/lib/../lib64/ -L/opt/intel/compilers_and_libraries_2016.2.181/linux/ipp/lib/intel64/ -L/opt/intel/compilers_and_libraries_2016.2.181/linux/compiler/lib/intel64/ -L/opt/intel/compilers_and_libraries_2016.2.181/linux/mkl/lib/intel64/ -L/opt/intel/compilers_and_libraries_2016.2.181/linux/tbb/lib/intel64/gcc4.4/ -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/lib/intel64_lin/ -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/../tbb/lib/intel64_lin/gcc4.4/ -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/../compiler/lib/intel64_lin/ -L/home/public/lib/gcc/x86_64-pc-linux-gnu/7.3.0/../../../ -L/lib64 -L/lib/ -L/usr/lib64 -L/usr/lib -limf -lm -lmpi_usempif08 -lmpi_usempi_ignore_tkr -lmpi_mpifh -lmpi -lifport -lifcore -lsvml -lipgo -lirc -lpthread -lirc_s -ldl
checking for dummy main to link with Fortran 77 libraries... none
checking for Fortran 77 name-mangling scheme... lower case, underscore, no extra underscore
checking for Win32 threads... no
checking for the pthreads library -lpthreads... no
checking whether pthreads work without any flags... yes
checking for joinable pthread attribute... PTHREAD_CREATE_JOINABLE
checking if more special flags are required for pthreads... no
checking whether a cycle counter is available... yes
checking that generated files are newer than configure... done
configure: creating ./config.status
config.status: creating Makefile
config.status: creating support/Makefile
config.status: creating genfft/Makefile
config.status: creating kernel/Makefile
config.status: creating simd-support/Makefile
config.status: creating dft/Makefile
config.status: creating dft/scalar/Makefile
config.status: creating dft/scalar/codelets/Makefile
config.status: creating dft/simd/Makefile
config.status: creating dft/simd/common/Makefile
config.status: creating dft/simd/sse2/Makefile
config.status: creating dft/simd/avx/Makefile
config.status: creating dft/simd/avx-128-fma/Makefile
config.status: creating dft/simd/avx2/Makefile
config.status: creating dft/simd/avx2-128/Makefile
config.status: creating dft/simd/avx512/Makefile
config.status: creating dft/simd/kcvi/Makefile
config.status: creating dft/simd/altivec/Makefile
config.status: creating dft/simd/vsx/Makefile
config.status: creating dft/simd/neon/Makefile
config.status: creating dft/simd/generic-simd128/Makefile
config.status: creating dft/simd/generic-simd256/Makefile
config.status: creating rdft/Makefile
config.status: creating rdft/scalar/Makefile
config.status: creating rdft/scalar/r2cf/Makefile
config.status: creating rdft/scalar/r2cb/Makefile
config.status: creating rdft/scalar/r2r/Makefile
config.status: creating rdft/simd/Makefile
config.status: creating rdft/simd/common/Makefile
config.status: creating rdft/simd/sse2/Makefile
config.status: creating rdft/simd/avx/Makefile
config.status: creating rdft/simd/avx-128-fma/Makefile
config.status: creating rdft/simd/avx2/Makefile
config.status: creating rdft/simd/avx2-128/Makefile
config.status: creating rdft/simd/avx512/Makefile
config.status: creating rdft/simd/kcvi/Makefile
config.status: creating rdft/simd/altivec/Makefile
config.status: creating rdft/simd/vsx/Makefile
config.status: creating rdft/simd/neon/Makefile
config.status: creating rdft/simd/generic-simd128/Makefile
config.status: creating rdft/simd/generic-simd256/Makefile
config.status: creating reodft/Makefile
config.status: creating threads/Makefile
config.status: creating api/Makefile
config.status: creating mpi/Makefile
config.status: creating libbench2/Makefile
config.status: creating tests/Makefile
config.status: creating doc/Makefile
config.status: creating doc/FAQ/Makefile
config.status: creating tools/Makefile
config.status: creating tools/fftw_wisdom.1
config.status: creating tools/fftw-wisdom-to-conf
config.status: creating m4/Makefile
config.status: creating fftw.pc
config.status: creating config.h
config.status: executing depfiles commands
config.status: executing libtool commands
[guest06@gauss fftw-3.3.8]$




[guest06@gauss fftw-3.3.8]$ make check
Making check in support
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/support'
make[1]: Nothing to be done for `check'.
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/support'
Making check in kernel
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/kernel'
make[1]: Nothing to be done for `check'.
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/kernel'
Making check in simd-support
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/simd-support'
make[1]: Nothing to be done for `check'.
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/simd-support'
Making check in dft
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft'
Making check in scalar
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/scalar'
Making check in codelets
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/scalar/codelets'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/scalar/codelets'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/scalar/codelets'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/scalar/codelets'
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/scalar'
make[3]: Nothing to be done for `check-am'.
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/scalar'
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/scalar'
Making check in simd
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd'
Making check in common
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/common'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/common'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/common'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/common'
Making check in sse2
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/sse2'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/sse2'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/sse2'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/sse2'
Making check in avx
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx'
Making check in avx-128-fma
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx-128-fma'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx-128-fma'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx-128-fma'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx-128-fma'
Making check in avx2
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx2'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx2'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx2'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx2'
Making check in avx2-128
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx2-128'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx2-128'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx2-128'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx2-128'
Making check in avx512
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx512'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx512'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx512'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/avx512'
Making check in kcvi
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/kcvi'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/kcvi'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/kcvi'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/kcvi'
Making check in altivec
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/altivec'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/altivec'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/altivec'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/altivec'
Making check in vsx
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/vsx'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/vsx'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/vsx'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/vsx'
Making check in neon
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/neon'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/neon'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/neon'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/neon'
Making check in generic-simd128
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/generic-simd128'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/generic-simd128'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/generic-simd128'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/generic-simd128'
Making check in generic-simd256
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/generic-simd256'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd/generic-simd256'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/generic-simd256'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd/generic-simd256'
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft/simd'
make[3]: Nothing to be done for `check-am'.
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd'
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft/simd'
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/dft'
make[2]: Nothing to be done for `check-am'.
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/dft'
Making check in rdft
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft'
Making check in scalar
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar'
Making check in r2cf
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2cf'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2cf'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2cf'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2cf'
Making check in r2cb
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2cb'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2cb'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2cb'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2cb'
Making check in r2r
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2r'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2r'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2r'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar/r2r'
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar'
make[3]: Nothing to be done for `check-am'.
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar'
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/scalar'
Making check in simd
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd'
Making check in common
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/common'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/common'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/common'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/common'
Making check in sse2
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/sse2'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/sse2'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/sse2'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/sse2'
Making check in avx
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx'
Making check in avx-128-fma
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx-128-fma'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx-128-fma'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx-128-fma'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx-128-fma'
Making check in avx2
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx2'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx2'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx2'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx2'
Making check in avx2-128
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx2-128'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx2-128'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx2-128'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx2-128'
Making check in avx512
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx512'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx512'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx512'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/avx512'
Making check in kcvi
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/kcvi'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/kcvi'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/kcvi'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/kcvi'
Making check in altivec
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/altivec'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/altivec'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/altivec'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/altivec'
Making check in vsx
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/vsx'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/vsx'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/vsx'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/vsx'
Making check in neon
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/neon'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/neon'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/neon'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/neon'
Making check in generic-simd128
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/generic-simd128'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/generic-simd128'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/generic-simd128'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/generic-simd128'
Making check in generic-simd256
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/generic-simd256'
make  check-am
make[4]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/generic-simd256'
make[4]: Nothing to be done for `check-am'.
make[4]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/generic-simd256'
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd/generic-simd256'
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft/simd'
make[3]: Nothing to be done for `check-am'.
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd'
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft/simd'
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/rdft'
make[2]: Nothing to be done for `check-am'.
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/rdft'
Making check in reodft
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/reodft'
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/reodft'
make[2]: Nothing to be done for `check-am'.
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/reodft'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/reodft'
Making check in api
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/api'
make  check-am
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/api'
make[2]: Nothing to be done for `check-am'.
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/api'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/api'
Making check in libbench2
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/libbench2'
make[1]: Nothing to be done for `check'.
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/libbench2'
Making check in .
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8'
Making check in threads
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/threads'
make[1]: Nothing to be done for `check'.
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/threads'
Making check in tests
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/tests'
make  check-local
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/tests'
perl -w ./check.pl  -r -c=30 -v `pwd`/bench
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofc3x21x3x9' --verify 'ifc3x21x3x9' --verify 'okd9o00x4o11x9o10x13e01' --verify 'ikd9o00x4o11x9o10x13e01' --verify 'obr3x7x3v9' --verify 'ibr3x7x3v9' --verify 'ofr3x7x3v9' --verify 'ifr3x7x3v9' --verify '//obc3x7x3v9' --verify '//ibc3x7x3v9' --verify '//ofc3x7x3v9' --verify '//ifc3x7x3v9' --verify 'obc3x7x3v9' --verify 'ibc3x7x3v9' --verify 'ofc3x7x3v9' --verify 'ifc3x7x3v9' --verify 'ok10e00x4o10x6o10*9' --verify 'ik10e00x4o10x6o10*9' --verify 'obr4*123' --verify 'ibr4*123' --verify 'ofr4*123' --verify 'ifr4*123' --verify '//obc4*123' --verify '//ibc4*123' --verify '//ofc4*123' --verify '//ifc4*123' --verify 'obc4*123' --verify 'ibc4*123' --verify 'ofc4*123' --verify 'ifc4*123' --verify 'ok7020e10' --verify 'ik7020e10' --verify 'obrd14x7x7x6v1' --verify 'ibrd14x7x7x6v1' --verify 'ofrd14x7x7x6v1' --verify 'ifrd14x7x7x6v1' --verify '//obcd14x7x7x6v1' --verify '//ibcd14x7x7x6v1' --verify '//ofcd14x7x7x6v1' --verify '//ifcd14x7x7x6v1' --verify 'obcd14x7x7x6v1' --verify 'ibcd14x7x7x6v1' --verify 'ofcd14x7x7x6v1' --verify 'ifcd14x7x7x6v1'"
ofc3x21x3x9 1.8519e-19 3.36487e-19 3.58176e-19
ifc3x21x3x9 1.92484e-19 4.20609e-19 3.78746e-19
okd9o00x4o11x9o10x13e01 1.98708e-19 9.61735e-18 2.8095e-19
ikd9o00x4o11x9o10x13e01 1.89347e-19 1.18282e-17 2.28611e-19
obr3x7x3v9 2.18971e-19 2.42838e-19 1.90676e-19
ibr3x7x3v9 1.89982e-19 2.42838e-19 1.8996e-19
ofr3x7x3v9 2.24326e-19 1.51774e-19 3.67711e-19
ifr3x7x3v9 1.6426e-19 1.82129e-19 3.53041e-19
//obc3x7x3v9 1.86129e-19 2.42838e-19 3.0185e-19
//ibc3x7x3v9 1.44648e-19 1.82129e-19 3.03603e-19
//ofc3x7x3v9 1.38123e-19 2.42838e-19 2.78062e-19
//ifc3x7x3v9 1.56802e-19 2.42838e-19 2.65029e-19
obc3x7x3v9 1.90952e-19 2.42838e-19 2.70137e-19
ibc3x7x3v9 1.46278e-19 2.42838e-19 2.98352e-19
ofc3x7x3v9 1.73264e-19 3.03548e-19 2.6322e-19
ifc3x7x3v9 2.00927e-19 2.42838e-19 2.9703e-19
ok10e00x4o10x6o10*9 1.64201e-19 2.07805e-18 1.79885e-19
ik10e00x4o10x6o10*9 1.54489e-19 1.89735e-18 1.18451e-19
obr4*123 1.1677e-19 0 1.61411e-20
ibr4*123 1.05381e-19 0 1.5924e-20
ofr4*123 1.00601e-19 0 1.27732e-19
ifr4*123 1.18756e-19 0 1.2589e-19
//obc4*123 1.27029e-19 0 2.05904e-19
//ibc4*123 1.65409e-19 0 1.82536e-19
//ofc4*123 9.94094e-20 0 1.86533e-19
//ifc4*123 1.16954e-19 0 1.94781e-19
obc4*123 1.2232e-19 0 1.92261e-19
ibc4*123 1.85716e-19 0 1.98483e-19
ofc4*123 1.25117e-19 0 1.85085e-19
ifc4*123 1.31915e-19 0 2.00368e-19
ok7020e10 2.54365e-19 1.64257e-17 2.33201e-19
ik7020e10 2.723e-19 1.34983e-17 2.16723e-19
obrd14x7x7x6v1 2.0522e-19 4.32626e-19 2.48499e-19
ibrd14x7x7x6v1 2.64876e-19 5.40782e-19 2.23989e-19
ofrd14x7x7x6v1 2.27764e-19 4.32626e-19 3.453e-19
ifrd14x7x7x6v1 1.90746e-19 4.32626e-19 3.30199e-19
//obcd14x7x7x6v1 2.21813e-19 4.32626e-19 2.95929e-19
//ibcd14x7x7x6v1 1.89743e-19 4.32626e-19 3.27836e-19
//ofcd14x7x7x6v1 1.91072e-19 4.32626e-19 3.42204e-19
//ifcd14x7x7x6v1 2.16852e-19 4.32626e-19 3.61734e-19
obcd14x7x7x6v1 2.14438e-19 4.32626e-19 3.34212e-19
ibcd14x7x7x6v1 2.15013e-19 5.40782e-19 3.08452e-19
ofcd14x7x7x6v1 2.19506e-19 5.40782e-19 3.88422e-19
ifcd14x7x7x6v1 2.10102e-19 4.32626e-19 3.28126e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofcd7280' --verify 'ifcd7280' --verify 'ok3o01x7o11x5o00v1' --verify 'ik3o01x7o11x5o00v1' --verify 'obrd15x10x8v15' --verify 'ibrd15x10x8v15' --verify 'ofrd15x10x8v15' --verify 'ifrd15x10x8v15' --verify '//obcd15x10x8v15' --verify '//ibcd15x10x8v15' --verify '//ofcd15x10x8v15' --verify '//ifcd15x10x8v15' --verify 'obcd15x10x8v15' --verify 'ibcd15x10x8v15' --verify 'ofcd15x10x8v15' --verify 'ifcd15x10x8v15' --verify 'ok7e01x7e00x8o10x6e01*1' --verify 'ik7e01x7e00x8o10x6e01*1' --verify 'obr5x11v27' --verify 'ibr5x11v27' --verify 'ofr5x11v27' --verify 'ifr5x11v27' --verify '//obc5x11v27' --verify '//ibc5x11v27' --verify '//ofc5x11v27' --verify '//ifc5x11v27' --verify 'obc5x11v27' --verify 'ibc5x11v27' --verify 'ofc5x11v27' --verify 'ifc5x11v27' --verify 'ok2240o10' --verify 'ik2240o10' --verify '//obr3x21x3x9' --verify '//ofr3x21x3x9' --verify 'obr3x21x3x9' --verify 'ibr3x21x3x9' --verify 'ofr3x21x3x9' --verify 'ifr3x21x3x9' --verify '//obc3x21x3x9' --verify '//ibc3x21x3x9' --verify '//ofc3x21x3x9' --verify '//ifc3x21x3x9' --verify 'obc3x21x3x9' --verify 'ibc3x21x3x9'"
ofcd7280 2.69807e-19 4.06625e-19 2.79452e-19
ifcd7280 2.32881e-19 4.87951e-19 2.79438e-19
ok3o01x7o11x5o00v1 2.23283e-19 8.04659e-19 2.29104e-19
ik3o01x7o11x5o00v1 1.80362e-19 1.09106e-18 2.31754e-19
obrd15x10x8v15 1.79779e-19 3.20494e-19 1.98034e-19
ibrd15x10x8v15 1.99127e-19 3.20494e-19 1.97454e-19
ofrd15x10x8v15 1.58276e-19 3.20494e-19 3.45427e-19
ifrd15x10x8v15 1.78912e-19 3.20494e-19 3.35062e-19
//obcd15x10x8v15 1.8215e-19 3.20494e-19 3.15351e-19
//ibcd15x10x8v15 2.10581e-19 3.20494e-19 3.51996e-19
//ofcd15x10x8v15 2.10755e-19 3.20494e-19 3.25761e-19
//ifcd15x10x8v15 1.9449e-19 3.20494e-19 3.42281e-19
obcd15x10x8v15 2.11372e-19 3.20494e-19 3.42982e-19
ibcd15x10x8v15 1.74193e-19 2.67078e-19 3.18593e-19
ofcd15x10x8v15 1.9534e-19 4.27325e-19 3.22153e-19
ifcd15x10x8v15 1.74002e-19 3.20494e-19 3.39998e-19
ok7e01x7e00x8o10x6e01*1 1.87565e-19 1.97731e-17 2.4265e-19
ik7e01x7e00x8o10x6e01*1 1.94939e-19 1.9353e-17 2.5943e-19
obr5x11v27 1.58606e-19 2.42573e-19 1.88803e-19
ibr5x11v27 1.53926e-19 2.42573e-19 1.86517e-19
ofr5x11v27 1.92486e-19 2.42573e-19 2.55123e-19
ifr5x11v27 1.54737e-19 2.42573e-19 2.68938e-19
//obc5x11v27 1.97996e-19 2.42573e-19 3.12349e-19
//ibc5x11v27 1.78984e-19 2.42573e-19 3.08888e-19
//ofc5x11v27 1.69398e-19 2.42573e-19 2.73397e-19
//ifc5x11v27 1.74694e-19 2.42573e-19 2.66123e-19
obc5x11v27 2.30994e-19 2.42573e-19 3.04615e-19
ibc5x11v27 1.71533e-19 2.42573e-19 2.82812e-19
ofc5x11v27 1.7718e-19 2.42573e-19 3.00567e-19
ifc5x11v27 1.84791e-19 2.42573e-19 3.30347e-19
ok2240o10 2.19797e-19 8.67362e-18 2.00185e-19
ik2240o10 2.00827e-19 6.83047e-18 1.92608e-19
//obr3x21x3x9 1.77757e-19 5.0473e-19 2.5234e-19
//ofr3x21x3x9 2.08549e-19 2.52365e-19 4.30817e-19
obr3x21x3x9 2.04766e-19 3.36487e-19 3.02458e-19
ibr3x21x3x9 2.36296e-19 4.20609e-19 2.72913e-19
ofr3x21x3x9 2.11614e-19 4.20609e-19 4.46837e-19
ifr3x21x3x9 2.09577e-19 2.52365e-19 3.99689e-19
//obc3x21x3x9 1.88247e-19 3.36487e-19 4.21318e-19
//ibc3x21x3x9 2.01464e-19 3.36487e-19 4.01959e-19
//ofc3x21x3x9 2.46923e-19 3.36487e-19 3.95118e-19
//ifc3x21x3x9 2.16438e-19 3.36487e-19 4.72908e-19
obc3x21x3x9 1.98411e-19 3.36487e-19 3.89745e-19
ibc3x21x3x9 1.87205e-19 3.36487e-19 4.26442e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ok11e00x3bx6e00x8e01' --verify 'ik11e00x3bx6e00x8e01' --verify 'obr8x15v2' --verify 'ibr8x15v2' --verify 'ofr8x15v2' --verify 'ifr8x15v2' --verify '//obc8x15v2' --verify '//ibc8x15v2' --verify '//ofc8x15v2' --verify '//ifc8x15v2' --verify 'obc8x15v2' --verify 'ibc8x15v2' --verify 'ofc8x15v2' --verify 'ifc8x15v2' --verify 'okd12bx8hx11o11*1' --verify 'ikd12bx8hx11o11*1' --verify 'obrd5x9x6v15' --verify 'ibrd5x9x6v15' --verify 'ofrd5x9x6v15' --verify 'ifrd5x9x6v15' --verify '//obcd5x9x6v15' --verify '//ibcd5x9x6v15' --verify '//ofcd5x9x6v15' --verify '//ifcd5x9x6v15' --verify 'obcd5x9x6v15' --verify 'ibcd5x9x6v15' --verify 'ofcd5x9x6v15' --verify 'ifcd5x9x6v15' --verify 'ok60o10v77' --verify 'ik60o10v77' --verify '//obrd7280' --verify '//ibrd7280' --verify '//ofrd7280' --verify '//ifrd7280' --verify 'obrd7280' --verify 'ibrd7280' --verify 'ofrd7280' --verify 'ifrd7280' --verify '//obcd7280' --verify '//ibcd7280' --verify '//ofcd7280' --verify '//ifcd7280' --verify 'obcd7280' --verify 'ibcd7280'"
ok11e00x3bx6e00x8e01 2.29776e-19 1.38778e-17 2.09005e-19
ik11e00x3bx6e00x8e01 1.88224e-19 2.77556e-17 2.18782e-19
obr8x15v2 1.62212e-19 2.37537e-19 1.97755e-19
ibr8x15v2 1.45865e-19 2.37537e-19 2.02939e-19
ofr8x15v2 1.39728e-19 1.78153e-19 3.10289e-19
ifr8x15v2 1.31268e-19 1.78153e-19 2.8002e-19
//obc8x15v2 1.61459e-19 1.78153e-19 2.68086e-19
//ibc8x15v2 1.67676e-19 2.37537e-19 2.41955e-19
//ofc8x15v2 1.80646e-19 2.37537e-19 2.36276e-19
//ifc8x15v2 1.88915e-19 2.37537e-19 3.27694e-19
obc8x15v2 1.61882e-19 2.37537e-19 2.61376e-19
ibc8x15v2 1.78199e-19 2.37537e-19 2.69268e-19
ofc8x15v2 1.64564e-19 2.37537e-19 2.79239e-19
ifc8x15v2 2.1606e-19 2.96921e-19 2.58542e-19
okd12bx8hx11o11*1 1.85383e-19 5.38051e-18 2.12506e-19
ikd12bx8hx11o11*1 1.80449e-19 5.38051e-18 2.01238e-19
obrd5x9x6v15 2.57541e-19 2.2522e-19 3.02713e-19
ibrd5x9x6v15 2.67654e-19 2.2522e-19 2.87038e-19
ofrd5x9x6v15 2.01671e-19 1.68915e-19 3.75448e-19
ifrd5x9x6v15 1.92953e-19 1.68915e-19 4.15214e-19
//obcd5x9x6v15 2.09451e-19 2.2522e-19 4.10792e-19
//ibcd5x9x6v15 1.88402e-19 2.2522e-19 4.12248e-19
//ofcd5x9x6v15 2.05948e-19 2.2522e-19 3.8138e-19
//ifcd5x9x6v15 1.79413e-19 2.2522e-19 3.74325e-19
obcd5x9x6v15 1.8372e-19 2.2522e-19 3.78507e-19
ibcd5x9x6v15 1.89126e-19 2.2522e-19 3.61761e-19
ofcd5x9x6v15 2.04005e-19 2.2522e-19 3.78566e-19
ifcd5x9x6v15 1.78412e-19 2.2522e-19 3.69141e-19
ok60o10v77 1.85468e-19 7.75662e-19 1.63132e-19
ik60o10v77 2.08944e-19 7.68798e-19 2.23976e-19
//obrd7280 2.08597e-19 4.87951e-19 2.20749e-19
//ibrd7280 2.06762e-19 4.87951e-19 2.34336e-19
//ofrd7280 2.09222e-19 3.253e-19 2.5778e-19
//ifrd7280 2.17943e-19 4.06625e-19 2.45056e-19
obrd7280 2.61981e-19 4.87951e-19 2.13985e-19
ibrd7280 2.10229e-19 6.50601e-19 2.27613e-19
ofrd7280 2.06812e-19 3.253e-19 2.31005e-19
ifrd7280 2.09076e-19 4.06625e-19 2.6537e-19
//obcd7280 2.31493e-19 4.87951e-19 2.2839e-19
//ibcd7280 2.2998e-19 4.87951e-19 2.76784e-19
//ofcd7280 2.31456e-19 4.87951e-19 3.02645e-19
//ifcd7280 2.39078e-19 4.06625e-19 2.50401e-19
obcd7280 2.35019e-19 4.87951e-19 2.35453e-19
ibcd7280 2.0889e-19 4.87951e-19 2.27313e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ok4e10x12o10x11o01x10o11' --verify 'ik4e10x12o10x11o01x10o11' --verify '//obr3x13x9x13' --verify '//ofr3x13x9x13' --verify 'obr3x13x9x13' --verify 'ibr3x13x9x13' --verify 'ofr3x13x9x13' --verify 'ifr3x13x9x13' --verify '//obc3x13x9x13' --verify '//ibc3x13x9x13' --verify '//ofc3x13x9x13' --verify '//ifc3x13x9x13' --verify 'obc3x13x9x13' --verify 'ibc3x13x9x13' --verify 'ofc3x13x9x13' --verify 'ifc3x13x9x13' --verify 'okd9e00x5o01x8e10x9e00' --verify 'ikd9e00x5o01x8e10x9e00' --verify 'obr15x13v37' --verify 'ibr15x13v37' --verify 'ofr15x13v37' --verify 'ifr15x13v37' --verify '//obc15x13v37' --verify '//ibc15x13v37' --verify '//ofc15x13v37' --verify '//ifc15x13v37' --verify 'obc15x13v37' --verify 'ibc15x13v37' --verify 'ofc15x13v37' --verify 'ifc15x13v37' --verify 'ok8e01x4o00x15o00x5o11*3' --verify 'ik8e01x4o00x15o00x5o11*3' --verify 'obr4x5x4x9v2' --verify 'ibr4x5x4x9v2' --verify 'ofr4x5x4x9v2' --verify 'ifr4x5x4x9v2' --verify '//obc4x5x4x9v2' --verify '//ibc4x5x4x9v2' --verify '//ofc4x5x4x9v2' --verify '//ifc4x5x4x9v2' --verify 'obc4x5x4x9v2' --verify 'ibc4x5x4x9v2' --verify 'ofc4x5x4x9v2' --verify 'ifc4x5x4x9v2'"
ok4e10x12o10x11o01x10o11 2.18366e-19 6.57971e-18 2.34363e-19
ik4e10x12o10x11o01x10o11 2.24963e-19 6.82441e-18 2.0411e-19
//obr3x13x9x13 2.18416e-19 5.13612e-19 2.84853e-19
//ofr3x13x9x13 2.30241e-19 4.10889e-19 4.04215e-19
obr3x13x9x13 2.15962e-19 4.10889e-19 2.88852e-19
ibr3x13x9x13 1.97664e-19 5.13612e-19 2.9331e-19
ofr3x13x9x13 2.52929e-19 4.10889e-19 3.88552e-19
ifr3x13x9x13 2.3452e-19 4.10889e-19 4.14023e-19
//obc3x13x9x13 2.25307e-19 4.10889e-19 3.92362e-19
//ibc3x13x9x13 2.19218e-19 4.10889e-19 3.47375e-19
//ofc3x13x9x13 2.17244e-19 5.13612e-19 3.75423e-19
//ifc3x13x9x13 2.02073e-19 4.10889e-19 4.0207e-19
obc3x13x9x13 2.13622e-19 4.10889e-19 4.14117e-19
ibc3x13x9x13 2.32205e-19 4.10889e-19 3.96925e-19
ofc3x13x9x13 2.30262e-19 5.13612e-19 4.29485e-19
ifc3x13x9x13 2.02687e-19 4.10889e-19 3.73999e-19
okd9e00x5o01x8e10x9e00 2.26537e-19 1.60462e-17 1.85332e-19
ikd9e00x5o01x8e10x9e00 2.21784e-19 1.32815e-17 1.88225e-19
obr15x13v37 1.8272e-19 2.55167e-19 1.85133e-19
ibr15x13v37 1.79603e-19 2.55167e-19 1.93028e-19
ofr15x13v37 2.1001e-19 2.55167e-19 3.49225e-19
ifr15x13v37 1.66954e-19 2.55167e-19 3.48134e-19
//obc15x13v37 1.83294e-19 2.55167e-19 3.31633e-19
//ibc15x13v37 1.87113e-19 2.55167e-19 3.10996e-19
//ofc15x13v37 2.09835e-19 3.18959e-19 2.99074e-19
//ifc15x13v37 2.0713e-19 2.55167e-19 2.90892e-19
obc15x13v37 2.06535e-19 2.55167e-19 3.04918e-19
ibc15x13v37 1.68696e-19 2.55167e-19 3.08455e-19
ofc15x13v37 2.21699e-19 2.55167e-19 3.16032e-19
ifc15x13v37 1.73981e-19 2.55167e-19 2.79977e-19
ok8e01x4o00x15o00x5o11*3 1.77934e-19 4.50141e-18 1.97511e-19
ik8e01x4o00x15o00x5o11*3 1.80131e-19 4.34752e-18 2.15386e-19
obr4x5x4x9v2 2.03757e-19 3.87896e-19 2.20853e-19
ibr4x5x4x9v2 1.92665e-19 2.90922e-19 2.03561e-19
ofr4x5x4x9v2 1.54498e-19 2.90922e-19 3.84523e-19
ifr4x5x4x9v2 1.67848e-19 3.87896e-19 3.76176e-19
//obc4x5x4x9v2 1.81647e-19 3.87896e-19 3.90166e-19
//ibc4x5x4x9v2 1.91807e-19 2.90922e-19 4.03319e-19
//ofc4x5x4x9v2 1.78742e-19 2.90922e-19 3.72395e-19
//ifc4x5x4x9v2 1.62378e-19 2.90922e-19 3.78399e-19
obc4x5x4x9v2 2.17035e-19 3.87896e-19 4.16926e-19
ibc4x5x4x9v2 1.77324e-19 3.87896e-19 4.36957e-19
ofc4x5x4x9v2 2.10612e-19 2.90922e-19 4.08792e-19
ifc4x5x4x9v2 1.84656e-19 2.90922e-19 3.95154e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofr1040' --verify 'ifr1040' --verify '//obc1040' --verify '//ibc1040' --verify '//ofc1040' --verify '//ifc1040' --verify 'obc1040' --verify 'ibc1040' --verify 'ofc1040' --verify 'ifc1040' --verify 'ok10e01x10e11*6' --verify 'ik10e01x10e11*6' --verify '//obr169x63' --verify '//ofr169x63' --verify 'obr169x63' --verify 'ibr169x63' --verify 'ofr169x63' --verify 'ifr169x63' --verify '//obc169x63' --verify '//ibc169x63' --verify '//ofc169x63' --verify '//ifc169x63' --verify 'obc169x63' --verify 'ibc169x63' --verify 'ofc169x63' --verify 'ifc169x63' --verify 'okd110o00x48h' --verify 'ikd110o00x48h' --verify '//obr2002' --verify '//ibr2002' --verify '//ofr2002' --verify '//ifr2002' --verify 'obr2002' --verify 'ibr2002' --verify 'ofr2002' --verify 'ifr2002' --verify '//obc2002' --verify '//ibc2002' --verify '//ofc2002' --verify '//ifc2002' --verify 'obc2002' --verify 'ibc2002' --verify 'ofc2002' --verify 'ifc2002'"
ofr1040 2.03842e-19 3.22749e-19 3.54239e-19
ifr1040 1.70431e-19 4.30332e-19 3.1072e-19
//obc1040 2.10219e-19 3.22749e-19 3.14192e-19
//ibc1040 2.10363e-19 3.22749e-19 3.19771e-19
//ofc1040 2.00583e-19 4.30332e-19 2.62745e-19
//ifc1040 2.12518e-19 3.22749e-19 2.77678e-19
obc1040 2.19125e-19 4.30332e-19 2.76729e-19
ibc1040 2.48719e-19 4.30332e-19 2.94138e-19
ofc1040 2.11535e-19 3.22749e-19 2.83866e-19
ifc1040 2.14237e-19 3.22749e-19 3.01751e-19
ok10e01x10e11*6 2.23908e-19 8.8817e-19 2.46683e-19
ik10e01x10e11*6 2.38119e-19 1.04677e-18 2.14512e-19
//obr169x63 2.16733e-19 5.37981e-19 2.59558e-19
//ofr169x63 2.24195e-19 4.03485e-19 4.79928e-19
obr169x63 2.32666e-19 5.37981e-19 2.63444e-19
ibr169x63 2.21512e-19 5.37981e-19 2.66396e-19
ofr169x63 2.35471e-19 3.36238e-19 4.43835e-19
ifr169x63 2.45743e-19 4.03485e-19 4.22567e-19
//obc169x63 2.61688e-19 4.70733e-19 4.20491e-19
//ibc169x63 2.22267e-19 5.37981e-19 3.97241e-19
//ofc169x63 2.35265e-19 4.03485e-19 3.49799e-19
//ifc169x63 2.10561e-19 4.03485e-19 4.11011e-19
obc169x63 2.34612e-19 4.03485e-19 3.86418e-19
ibc169x63 2.66162e-19 5.37981e-19 4.44907e-19
ofc169x63 2.56295e-19 4.03485e-19 4.08058e-19
ifc169x63 2.36779e-19 4.03485e-19 4.12492e-19
okd110o00x48h 1.9792e-19 1.72405e-17 2.04739e-19
ikd110o00x48h 2.28586e-19 1.29033e-17 2.00395e-19
//obr2002 2.2068e-19 4.65243e-19 2.54143e-19
//ibr2002 2.33279e-19 4.65243e-19 2.45086e-19
//ofr2002 2.32954e-19 3.87702e-19 4.10564e-19
//ifr2002 1.98327e-19 3.10162e-19 3.99878e-19
obr2002 2.19681e-19 6.20323e-19 2.4073e-19
ibr2002 1.96315e-19 4.65243e-19 2.83169e-19
ofr2002 2.27568e-19 3.10162e-19 4.95356e-19
ifr2002 1.89667e-19 3.87702e-19 4.48329e-19
//obc2002 1.97126e-19 3.87702e-19 3.838e-19
//ibc2002 2.13989e-19 4.65243e-19 3.72885e-19
//ofc2002 2.0789e-19 4.65243e-19 3.8728e-19
//ifc2002 2.6346e-19 4.65243e-19 5.25698e-19
obc2002 2.23308e-19 4.65243e-19 4.64734e-19
ibc2002 2.60143e-19 4.65243e-19 4.33125e-19
ofc2002 2.56755e-19 4.65243e-19 4.16364e-19
ifc2002 2.37663e-19 4.65243e-19 5.48477e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify '//ofcd4x10x4x12*3' --verify '//ifcd4x10x4x12*3' --verify 'obcd4x10x4x12*3' --verify 'ibcd4x10x4x12*3' --verify 'ofcd4x10x4x12*3' --verify 'ifcd4x10x4x12*3' --verify 'ok11e01*89' --verify 'ik11e01*89' --verify '//obr11x15x20' --verify '//ofr11x15x20' --verify 'obr11x15x20' --verify 'ibr11x15x20' --verify 'ofr11x15x20' --verify 'ifr11x15x20' --verify '//obc11x15x20' --verify '//ibc11x15x20' --verify '//ofc11x15x20' --verify '//ifc11x15x20' --verify 'obc11x15x20' --verify 'ibc11x15x20' --verify 'ofc11x15x20' --verify 'ifc11x15x20' --verify 'ok6e00x10o01x12e11x10e10' --verify 'ik6e00x10o01x12e11x10e10' --verify 'obr11x5*8' --verify 'ibr11x5*8' --verify 'ofr11x5*8' --verify 'ifr11x5*8' --verify '//obc11x5*8' --verify '//ibc11x5*8' --verify '//ofc11x5*8' --verify '//ifc11x5*8' --verify 'obc11x5*8' --verify 'ibc11x5*8' --verify 'ofc11x5*8' --verify 'ifc11x5*8' --verify 'okd10800o00' --verify 'ikd10800o00' --verify '//obr1040' --verify '//ibr1040' --verify '//ofr1040' --verify '//ifr1040' --verify 'obr1040' --verify 'ibr1040'"
//ofcd4x10x4x12*3 1.85274e-19 4.22288e-19 3.09284e-19
//ifcd4x10x4x12*3 2.07287e-19 3.16716e-19 2.91613e-19
obcd4x10x4x12*3 2.01179e-19 4.22288e-19 3.26632e-19
ibcd4x10x4x12*3 1.6568e-19 3.16716e-19 3.10251e-19
ofcd4x10x4x12*3 1.86802e-19 4.22288e-19 3.84521e-19
ifcd4x10x4x12*3 1.80571e-19 4.22288e-19 3.22652e-19
ok11e01*89 1.70423e-19 4.38554e-19 1.5807e-19
ik11e01*89 2.36048e-19 4.38554e-19 1.72316e-19
//obr11x15x20 2.39578e-19 4.83163e-19 2.71589e-19
//ofr11x15x20 1.91763e-19 3.62372e-19 3.06007e-19
obr11x15x20 1.67503e-19 4.83163e-19 2.26731e-19
ibr11x15x20 2.04323e-19 4.83163e-19 2.43679e-19
ofr11x15x20 1.94171e-19 3.01977e-19 3.77065e-19
ifr11x15x20 1.94914e-19 3.62372e-19 3.04426e-19
//obc11x15x20 1.91946e-19 4.83163e-19 3.37046e-19
//ibc11x15x20 2.8675e-19 4.22767e-19 2.88238e-19
//ofc11x15x20 1.98344e-19 4.83163e-19 3.6282e-19
//ifc11x15x20 1.90522e-19 4.83163e-19 3.3875e-19
obc11x15x20 2.23478e-19 4.83163e-19 3.31888e-19
ibc11x15x20 1.99696e-19 4.83163e-19 4.15467e-19
ofc11x15x20 1.99371e-19 4.83163e-19 2.91139e-19
ifc11x15x20 2.13582e-19 4.22767e-19 3.14373e-19
ok6e00x10o01x12e11x10e10 2.1651e-19 9.2131e-18 2.44159e-19
ik6e00x10o01x12e11x10e10 1.8637e-19 1.10007e-17 2.06381e-19
obr11x5*8 1.91517e-19 2.63149e-19 2.20742e-19
ibr11x5*8 1.91146e-19 2.63149e-19 2.19681e-19
ofr11x5*8 1.84173e-19 1.97362e-19 2.9963e-19
ifr11x5*8 1.81992e-19 2.63149e-19 3.27533e-19
//obc11x5*8 1.72121e-19 2.63149e-19 2.71058e-19
//ibc11x5*8 1.61679e-19 1.97362e-19 2.80078e-19
//ofc11x5*8 1.73278e-19 2.63149e-19 3.08498e-19
//ifc11x5*8 1.89206e-19 2.63149e-19 3.12281e-19
obc11x5*8 2.1477e-19 2.63149e-19 3.04891e-19
ibc11x5*8 1.81013e-19 2.63149e-19 2.7672e-19
ofc11x5*8 1.49787e-19 1.97362e-19 2.80021e-19
ifc11x5*8 1.88548e-19 1.97362e-19 2.76764e-19
okd10800o00 2.47873e-19 2.61293e-17 2.15375e-19
ikd10800o00 2.44265e-19 2.30935e-17 2.52261e-19
//obr1040 2.07133e-19 4.30332e-19 2.0812e-19
//ibr1040 2.02647e-19 4.30332e-19 2.20106e-19
//ofr1040 2.46511e-19 3.22749e-19 3.40729e-19
//ifr1040 1.82376e-19 3.22749e-19 3.18106e-19
obr1040 2.04584e-19 4.30332e-19 1.93289e-19
ibr1040 2.16603e-19 3.22749e-19 1.74329e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify '//obcd6336' --verify '//ibcd6336' --verify '//ofcd6336' --verify '//ifcd6336' --verify 'obcd6336' --verify 'ibcd6336' --verify 'ofcd6336' --verify 'ifcd6336' --verify 'okd5o10x11e10x6o11x10e00*3' --verify 'ikd5o10x11e10x6o11x10e00*3' --verify 'obrd3x7x8*7' --verify 'ibrd3x7x8*7' --verify 'ofrd3x7x8*7' --verify 'ifrd3x7x8*7' --verify '//obcd3x7x8*7' --verify '//ibcd3x7x8*7' --verify '//ofcd3x7x8*7' --verify '//ifcd3x7x8*7' --verify 'obcd3x7x8*7' --verify 'ibcd3x7x8*7' --verify 'ofcd3x7x8*7' --verify 'ifcd3x7x8*7' --verify 'ok11o10x21o11v19' --verify 'ik11o10x21o11v19' --verify 'obr4x6x3x10*4' --verify 'ibr4x6x3x10*4' --verify 'ofr4x6x3x10*4' --verify 'ifr4x6x3x10*4' --verify '//obc4x6x3x10*4' --verify '//ibc4x6x3x10*4' --verify '//ofc4x6x3x10*4' --verify '//ifc4x6x3x10*4' --verify 'obc4x6x3x10*4' --verify 'ibc4x6x3x10*4' --verify 'ofc4x6x3x10*4' --verify 'ifc4x6x3x10*4' --verify 'ok13bx14o01x6o11x8e01*1' --verify 'ik13bx14o01x6o11x8e01*1' --verify 'obrd4x10x4x12*3' --verify 'ibrd4x10x4x12*3' --verify 'ofrd4x10x4x12*3' --verify 'ifrd4x10x4x12*3' --verify '//obcd4x10x4x12*3' --verify '//ibcd4x10x4x12*3'"
//obcd6336 2.10677e-19 4.35866e-19 2.62611e-19
//ibcd6336 2.29899e-19 5.23039e-19 2.54749e-19
//ofcd6336 2.74937e-19 5.23039e-19 2.80878e-19
//ifcd6336 2.21133e-19 4.35866e-19 2.67026e-19
obcd6336 2.16817e-19 4.35866e-19 2.37966e-19
ibcd6336 2.17023e-19 4.35866e-19 2.73543e-19
ofcd6336 2.61072e-19 5.23039e-19 2.69531e-19
ifcd6336 2.27608e-19 4.35866e-19 3.04774e-19
okd5o10x11e10x6o11x10e00*3 2.11834e-19 7.43619e-18 1.80842e-19
ikd5o10x11e10x6o11x10e00*3 2.71853e-19 6.93042e-18 2.16479e-19
obrd3x7x8*7 2.04736e-19 2.29435e-19 2.06424e-19
ibrd3x7x8*7 1.79779e-19 2.29435e-19 1.91455e-19
ofrd3x7x8*7 1.76551e-19 1.52956e-19 3.04087e-19
ifrd3x7x8*7 1.67197e-19 1.52956e-19 3.0515e-19
//obcd3x7x8*7 1.7181e-19 1.52956e-19 3.60584e-19
//ibcd3x7x8*7 1.76656e-19 1.52956e-19 2.80252e-19
//ofcd3x7x8*7 2.12733e-19 1.52956e-19 3.01899e-19
//ifcd3x7x8*7 1.38218e-19 2.29435e-19 2.78219e-19
obcd3x7x8*7 1.77701e-19 3.05913e-19 2.51834e-19
ibcd3x7x8*7 1.67142e-19 2.29435e-19 3.19035e-19
ofcd3x7x8*7 1.43437e-19 1.52956e-19 2.97653e-19
ifcd3x7x8*7 1.77644e-19 1.52956e-19 3.07629e-19
ok11o10x21o11v19 1.77546e-19 1.19917e-18 2.24959e-19
ik11o10x21o11v19 1.91042e-19 1.44186e-18 1.95435e-19
obr4x6x3x10*4 2.09205e-19 2.42435e-19 1.82298e-19
ibr4x6x3x10*4 1.96139e-19 2.42435e-19 1.89317e-19
ofr4x6x3x10*4 1.67828e-19 2.42435e-19 3.30077e-19
ifr4x6x3x10*4 2.06474e-19 2.42435e-19 2.97872e-19
//obc4x6x3x10*4 1.73463e-19 3.23247e-19 3.20732e-19
//ibc4x6x3x10*4 1.71841e-19 3.23247e-19 3.36346e-19
//ofc4x6x3x10*4 1.81814e-19 2.42435e-19 3.16466e-19
//ifc4x6x3x10*4 1.7523e-19 3.23247e-19 3.41828e-19
obc4x6x3x10*4 2.0609e-19 2.42435e-19 3.27705e-19
ibc4x6x3x10*4 1.66511e-19 2.42435e-19 3.32013e-19
ofc4x6x3x10*4 1.59086e-19 3.23247e-19 3.08319e-19
ifc4x6x3x10*4 1.88311e-19 3.23247e-19 3.30768e-19
ok13bx14o01x6o11x8e01*1 2.18876e-19 2.19408e-17 3.00286e-19
ik13bx14o01x6o11x8e01*1 2.30721e-19 2.46163e-17 2.41211e-19
obrd4x10x4x12*3 1.63418e-19 3.16716e-19 2.02682e-19
ibrd4x10x4x12*3 1.58192e-19 3.16716e-19 1.9559e-19
ofrd4x10x4x12*3 1.63107e-19 3.16716e-19 3.29094e-19
ifrd4x10x4x12*3 1.60755e-19 3.16716e-19 3.14889e-19
//obcd4x10x4x12*3 1.77071e-19 3.16716e-19 2.90215e-19
//ibcd4x10x4x12*3 1.60221e-19 4.22288e-19 3.35801e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ok4e00x5o10v2' --verify 'ik4e00x5o10v2' --verify '//obrd16x40' --verify '//ofrd16x40' --verify 'obrd16x40' --verify 'ibrd16x40' --verify 'ofrd16x40' --verify 'ifrd16x40' --verify '//obcd16x40' --verify '//ibcd16x40' --verify '//ofcd16x40' --verify '//ifcd16x40' --verify 'obcd16x40' --verify 'ibcd16x40' --verify 'ofcd16x40' --verify 'ifcd16x40' --verify 'ok12hx3o01*23' --verify 'ik12hx3o01*23' --verify '//obrd2376' --verify '//ibrd2376' --verify '//ofrd2376' --verify '//ifrd2376' --verify 'obrd2376' --verify 'ibrd2376' --verify 'ofrd2376' --verify 'ifrd2376' --verify '//obcd2376' --verify '//ibcd2376' --verify '//ofcd2376' --verify '//ifcd2376' --verify 'obcd2376' --verify 'ibcd2376' --verify 'ofcd2376' --verify 'ifcd2376' --verify 'ok3o10x12e00x10e01x7e10' --verify 'ik3o10x12e00x10e01x7e10' --verify '//obrd6336' --verify '//ibrd6336' --verify '//ofrd6336' --verify '//ifrd6336' --verify 'obrd6336' --verify 'ibrd6336' --verify 'ofrd6336' --verify 'ifrd6336'"
ok4e00x5o10v2 1.11883e-19 4.06576e-19 8.91011e-20
ik4e00x5o10v2 1.54467e-19 3.96411e-19 9.42232e-20
//obrd16x40 1.80509e-19 3.42855e-19 1.86935e-19
//ofrd16x40 2.1856e-19 2.74284e-19 3.45411e-19
obrd16x40 1.79397e-19 2.74284e-19 2.4326e-19
ibrd16x40 1.83561e-19 3.42855e-19 2.31248e-19
ofrd16x40 1.87047e-19 2.74284e-19 2.78098e-19
ifrd16x40 2.07539e-19 2.74284e-19 2.97083e-19
//obcd16x40 1.81066e-19 2.74284e-19 2.87289e-19
//ibcd16x40 2.04018e-19 2.74284e-19 3.03247e-19
//ofcd16x40 1.63705e-19 2.74284e-19 2.99288e-19
//ifcd16x40 1.82963e-19 2.74284e-19 2.61777e-19
obcd16x40 2.15995e-19 3.42855e-19 3.16335e-19
ibcd16x40 1.68978e-19 3.42855e-19 3.31359e-19
ofcd16x40 1.63251e-19 2.74284e-19 3.19858e-19
ifcd16x40 1.90715e-19 4.11426e-19 2.73894e-19
ok12hx3o01*23 1.46186e-19 4.52537e-19 1.70524e-19
ik12hx3o01*23 1.85287e-19 4.52537e-19 1.54258e-19
//obrd2376 1.89468e-19 4.27059e-19 2.17004e-19
//ibrd2376 2.28458e-19 4.27059e-19 1.96292e-19
//ofrd2376 2.03416e-19 3.55883e-19 2.76637e-19
//ifrd2376 1.9731e-19 2.84706e-19 2.52858e-19
obrd2376 2.12432e-19 5.69413e-19 2.00159e-19
ibrd2376 2.37445e-19 5.69413e-19 2.18181e-19
ofrd2376 2.04389e-19 2.84706e-19 2.65194e-19
ifrd2376 1.94745e-19 2.84706e-19 2.61418e-19
//obcd2376 2.19006e-19 4.27059e-19 2.94361e-19
//ibcd2376 2.21081e-19 4.27059e-19 2.22562e-19
//ofcd2376 2.52035e-19 3.55883e-19 2.94728e-19
//ifcd2376 1.83201e-19 3.55883e-19 2.49281e-19
obcd2376 2.30359e-19 4.27059e-19 2.48839e-19
ibcd2376 1.90193e-19 4.27059e-19 2.40956e-19
ofcd2376 2.59295e-19 3.55883e-19 2.77471e-19
ifcd2376 2.04573e-19 3.55883e-19 2.7129e-19
ok3o10x12e00x10e01x7e10 1.92971e-19 1.63308e-17 2.49743e-19
ik3o10x12e00x10e01x7e10 1.78189e-19 1.54499e-17 1.93795e-19
//obrd6336 1.9901e-19 5.23039e-19 1.8793e-19
//ibrd6336 2.25611e-19 5.23039e-19 2.40433e-19
//ofrd6336 2.09676e-19 3.48693e-19 2.72533e-19
//ifrd6336 2.27754e-19 3.48693e-19 2.60019e-19
obrd6336 2.33672e-19 5.23039e-19 2.43325e-19
ibrd6336 2.16287e-19 6.97385e-19 2.41742e-19
ofrd6336 2.16068e-19 3.48693e-19 3.22034e-19
ifrd6336 2.01776e-19 3.48693e-19 2.60001e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'okd18e10v92' --verify 'ikd18e10v92' --verify 'obr4x10*5' --verify 'ibr4x10*5' --verify 'ofr4x10*5' --verify 'ifr4x10*5' --verify '//obc4x10*5' --verify '//ibc4x10*5' --verify '//ofc4x10*5' --verify '//ifc4x10*5' --verify 'obc4x10*5' --verify 'ibc4x10*5' --verify 'ofc4x10*5' --verify 'ifc4x10*5' --verify 'okd13o10x12o10x5o11*16' --verify 'ikd13o10x12o10x5o11*16' --verify '//obrd10x7x6' --verify '//ofrd10x7x6' --verify 'obrd10x7x6' --verify 'ibrd10x7x6' --verify 'ofrd10x7x6' --verify 'ifrd10x7x6' --verify '//obcd10x7x6' --verify '//ibcd10x7x6' --verify '//ofcd10x7x6' --verify '//ifcd10x7x6' --verify 'obcd10x7x6' --verify 'ibcd10x7x6' --verify 'ofcd10x7x6' --verify 'ifcd10x7x6' --verify 'okd6e10x8e00x11o11x3e00' --verify 'ikd6e10x8e00x11o11x3e00' --verify 'obrd8x10*17' --verify 'ibrd8x10*17' --verify 'ofrd8x10*17' --verify 'ifrd8x10*17' --verify '//obcd8x10*17' --verify '//ibcd8x10*17' --verify '//ofcd8x10*17' --verify '//ifcd8x10*17' --verify 'obcd8x10*17' --verify 'ibcd8x10*17' --verify 'ofcd8x10*17' --verify 'ifcd8x10*17'"
okd18e10v92 1.57322e-19 3.56196e-19 1.51754e-19
ikd18e10v92 1.83664e-19 3.28796e-19 1.50131e-19
obr4x10*5 1.30644e-19 1.6457e-19 1.31679e-19
ibr4x10*5 1.85177e-19 1.6457e-19 2.13462e-19
ofr4x10*5 1.06765e-19 1.6457e-19 2.61365e-19
ifr4x10*5 1.30996e-19 1.23428e-19 2.55409e-19
//obc4x10*5 1.41701e-19 1.6457e-19 2.89137e-19
//ibc4x10*5 1.40154e-19 1.6457e-19 3.13892e-19
//ofc4x10*5 1.39559e-19 1.6457e-19 2.98968e-19
//ifc4x10*5 1.72432e-19 1.6457e-19 3.02014e-19
obc4x10*5 1.99869e-19 1.6457e-19 2.92201e-19
ibc4x10*5 1.42521e-19 1.6457e-19 3.10018e-19
ofc4x10*5 1.42393e-19 1.6457e-19 2.67967e-19
ifc4x10*5 1.36564e-19 1.6457e-19 3.01163e-19
okd13o10x12o10x5o11*16 2.01519e-19 1.77864e-18 2.05742e-19
ikd13o10x12o10x5o11*16 1.96415e-19 2.33265e-18 2.40137e-19
//obrd10x7x6 1.78722e-19 3.38583e-19 2.16069e-19
//ofrd10x7x6 1.47103e-19 3.38583e-19 2.92859e-19
obrd10x7x6 1.6522e-19 3.38583e-19 2.13599e-19
ibrd10x7x6 1.77313e-19 3.38583e-19 2.12924e-19
ofrd10x7x6 1.91655e-19 2.53938e-19 3.52835e-19
ifrd10x7x6 1.91248e-19 1.69292e-19 3.08815e-19
//obcd10x7x6 1.66868e-19 2.53938e-19 3.38991e-19
//ibcd10x7x6 1.92101e-19 3.38583e-19 2.98722e-19
//ofcd10x7x6 1.85051e-19 2.53938e-19 3.50979e-19
//ifcd10x7x6 1.778e-19 3.38583e-19 2.94851e-19
obcd10x7x6 2.16366e-19 2.53938e-19 3.33594e-19
ibcd10x7x6 1.77472e-19 3.38583e-19 2.96624e-19
ofcd10x7x6 1.8467e-19 3.38583e-19 3.11855e-19
ifcd10x7x6 1.84462e-19 2.53938e-19 2.97653e-19
okd6e10x8e00x11o11x3e00 1.65773e-19 9.94579e-18 1.8612e-19
ikd6e10x8e00x11o11x3e00 1.88721e-19 1.04621e-17 2.39345e-19
obrd8x10*17 1.45334e-19 2.05357e-19 1.53374e-19
ibrd8x10*17 1.5697e-19 2.05357e-19 1.88977e-19
ofrd8x10*17 1.76249e-19 2.05357e-19 2.95939e-19
ifrd8x10*17 1.88221e-19 1.54018e-19 2.80153e-19
//obcd8x10*17 1.65728e-19 2.05357e-19 2.66635e-19
//ibcd8x10*17 1.76314e-19 2.05357e-19 3.31083e-19
//ofcd8x10*17 1.60874e-19 2.05357e-19 3.09593e-19
//ifcd8x10*17 1.58021e-19 2.05357e-19 3.14311e-19
obcd8x10*17 1.55841e-19 2.05357e-19 3.20388e-19
ibcd8x10*17 1.75958e-19 2.05357e-19 2.76309e-19
ofcd8x10*17 1.98855e-19 2.05357e-19 2.97994e-19
ifcd8x10*17 1.63596e-19 2.05357e-19 3.61608e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'obrd2x4*3' --verify 'ibrd2x4*3' --verify 'ofrd2x4*3' --verify 'ifrd2x4*3' --verify '//obcd2x4*3' --verify '//ibcd2x4*3' --verify '//ofcd2x4*3' --verify '//ifcd2x4*3' --verify 'obcd2x4*3' --verify 'ibcd2x4*3' --verify 'ofcd2x4*3' --verify 'ifcd2x4*3' --verify 'okd192o00*115' --verify 'ikd192o00*115' --verify 'obrd33x24v32' --verify 'ibrd33x24v32' --verify 'ofrd33x24v32' --verify 'ifrd33x24v32' --verify '//obcd33x24v32' --verify '//ibcd33x24v32' --verify '//ofcd33x24v32' --verify '//ifcd33x24v32' --verify 'obcd33x24v32' --verify 'ibcd33x24v32' --verify 'ofcd33x24v32' --verify 'ifcd33x24v32' --verify 'ok70e01v136' --verify 'ik70e01v136' --verify '//obr1800' --verify '//ibr1800' --verify '//ofr1800' --verify '//ifr1800' --verify 'obr1800' --verify 'ibr1800' --verify 'ofr1800' --verify 'ifr1800' --verify '//obc1800' --verify '//ibc1800' --verify '//ofc1800' --verify '//ifc1800' --verify 'obc1800' --verify 'ibc1800' --verify 'ofc1800' --verify 'ifc1800'"
obrd2x4*3 1.06459e-19 0 2.82888e-20
ibrd2x4*3 1.0067e-19 0 3.30741e-20
ofrd2x4*3 1.23586e-19 0 2.04975e-19
ifrd2x4*3 1.11993e-19 0 1.759e-19
//obcd2x4*3 9.93518e-20 0 1.98438e-19
//ibcd2x4*3 8.67001e-20 0 1.8482e-19
//ofcd2x4*3 1.14329e-19 0 1.83744e-19
//ifcd2x4*3 1.88824e-19 0 1.84449e-19
obcd2x4*3 1.25396e-19 0 1.86755e-19
ibcd2x4*3 1.1414e-19 0 1.78695e-19
ofcd2x4*3 1.41621e-19 0 1.8662e-19
ifcd2x4*3 1.26059e-19 0 1.83339e-19
okd192o00*115 3.18897e-19 1.74987e-18 1.70895e-19
ikd192o00*115 1.97338e-19 1.89683e-18 1.75975e-19
obrd33x24v32 2.43671e-19 3.17835e-19 2.31574e-19
ibrd33x24v32 1.91634e-19 3.17835e-19 2.39942e-19
ofrd33x24v32 2.15235e-19 2.54268e-19 2.83427e-19
ifrd33x24v32 1.79227e-19 2.54268e-19 3.10667e-19
//obcd33x24v32 2.3323e-19 3.81402e-19 2.94309e-19
//ibcd33x24v32 1.97155e-19 2.54268e-19 3.05426e-19
//ofcd33x24v32 2.0242e-19 3.81402e-19 3.02133e-19
//ifcd33x24v32 2.25658e-19 3.17835e-19 2.8721e-19
obcd33x24v32 2.35981e-19 2.54268e-19 3.24213e-19
ibcd33x24v32 2.23069e-19 3.81402e-19 2.97405e-19
ofcd33x24v32 2.09804e-19 3.81402e-19 2.77562e-19
ifcd33x24v32 2.18901e-19 2.54268e-19 3.0467e-19
ok70e01v136 2.30898e-19 8.73739e-19 2.39042e-19
ik70e01v136 1.91443e-19 1.74748e-18 1.70568e-19
//obr1800 1.87241e-19 4.08878e-19 1.8134e-19
//ibr1800 2.36762e-19 4.08878e-19 1.92044e-19
//ofr1800 2.38529e-19 3.27103e-19 2.33582e-19
//ifr1800 2.2902e-19 3.27103e-19 2.41534e-19
obr1800 2.5141e-19 3.27103e-19 2.03652e-19
ibr1800 2.00947e-19 4.08878e-19 1.94713e-19
ofr1800 1.72487e-19 3.27103e-19 2.37168e-19
ifr1800 2.23543e-19 2.45327e-19 2.28211e-19
//obc1800 2.4556e-19 3.27103e-19 2.50232e-19
//ibc1800 2.33508e-19 3.27103e-19 2.98083e-19
//ofc1800 2.12285e-19 4.08878e-19 2.65705e-19
//ifc1800 2.54024e-19 3.27103e-19 2.39047e-19
obc1800 2.06466e-19 3.27103e-19 2.28848e-19
ibc1800 2.14489e-19 3.27103e-19 2.37382e-19
ofc1800 2.27605e-19 3.27103e-19 2.77468e-19
ifc1800 1.92143e-19 3.27103e-19 2.84919e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'okd11e00v116' --verify 'ikd11e00v116' --verify 'obr11*158' --verify 'ibr11*158' --verify 'ofr11*158' --verify 'ifr11*158' --verify '//obc11*158' --verify '//ibc11*158' --verify '//ofc11*158' --verify '//ifc11*158' --verify 'obc11*158' --verify 'ibc11*158' --verify 'ofc11*158' --verify 'ifc11*158' --verify 'ok15o00x7bx6o01' --verify 'ik15o00x7bx6o01'"
okd11e00v116 1.61843e-19 2.1871e-19 9.0103e-20
ikd11e00v116 1.76681e-19 2.1871e-19 8.69464e-20
obr11*158 1.9276e-19 2.63175e-19 1.52817e-19
ibr11*158 1.5523e-19 2.63175e-19 1.55513e-19
ofr11*158 1.64684e-19 2.63175e-19 2.80703e-19
ifr11*158 1.64199e-19 2.63175e-19 2.52208e-19
//obc11*158 2.09916e-19 1.97381e-19 2.84605e-19
//ibc11*158 1.62151e-19 2.63175e-19 2.70627e-19
//ofc11*158 1.64492e-19 2.63175e-19 3.24119e-19
//ifc11*158 1.92409e-19 1.97381e-19 2.90673e-19
obc11*158 1.78225e-19 1.97381e-19 2.9913e-19
ibc11*158 1.65336e-19 1.97381e-19 2.7555e-19
ofc11*158 1.40843e-19 3.28968e-19 3.08139e-19
ifc11*158 1.85621e-19 1.97381e-19 3.02321e-19
ok15o00x7bx6o01 2.04751e-19 3.87245e-18 2.20119e-19
ik15o00x7bx6o01 1.7459e-19 3.64796e-18 2.00384e-19
--------------------------------------------------------------
         FFTW transforms passed basic tests!
--------------------------------------------------------------
perl -w ./check.pl  -r -c=30 -v --nthreads=2 `pwd`/bench
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify '//obr3x11x10x6' --verify '//ofr3x11x10x6' --verify 'obr3x11x10x6' --verify 'ibr3x11x10x6' --verify 'ofr3x11x10x6' --verify 'ifr3x11x10x6' --verify '//obc3x11x10x6' --verify '//ibc3x11x10x6' --verify '//ofc3x11x10x6' --verify '//ifc3x11x10x6' --verify 'obc3x11x10x6' --verify 'ibc3x11x10x6' --verify 'ofc3x11x10x6' --verify 'ifc3x11x10x6' --verify 'ok12hx3o10x10o10*14' --verify 'ik12hx3o10x10o10*14' --verify 'obr3x3x12*12' --verify 'ibr3x3x12*12' --verify 'ofr3x3x12*12' --verify 'ifr3x3x12*12' --verify '//obc3x3x12*12' --verify '//ibc3x3x12*12' --verify '//ofc3x3x12*12' --verify '//ifc3x3x12*12' --verify 'obc3x3x12*12' --verify 'ibc3x3x12*12' --verify 'ofc3x3x12*12' --verify 'ifc3x3x12*12' --verify 'ok16o01x20b' --verify 'ik16o01x20b' --verify '//obr24x4x30' --verify '//ofr24x4x30' --verify 'obr24x4x30' --verify 'ibr24x4x30' --verify 'ofr24x4x30' --verify 'ifr24x4x30' --verify '//obc24x4x30' --verify '//ibc24x4x30' --verify '//ofc24x4x30' --verify '//ifc24x4x30' --verify 'obc24x4x30' --verify 'ibc24x4x30' --verify 'ofc24x4x30' --verify 'ifc24x4x30'"
//obr3x11x10x6 1.87322e-19 3.8985e-19 2.19659e-19
//ofr3x11x10x6 2.12514e-19 3.1188e-19 3.15825e-19
obr3x11x10x6 2.20261e-19 4.6782e-19 2.20575e-19
ibr3x11x10x6 1.76693e-19 3.8985e-19 2.35996e-19
ofr3x11x10x6 2.3483e-19 3.1188e-19 3.40227e-19
ifr3x11x10x6 1.79735e-19 3.1188e-19 3.62961e-19
//obc3x11x10x6 1.98964e-19 3.8985e-19 3.33837e-19
//ibc3x11x10x6 2.45082e-19 3.8985e-19 3.41632e-19
//ofc3x11x10x6 2.32428e-19 3.1188e-19 3.3355e-19
//ifc3x11x10x6 1.87139e-19 3.1188e-19 3.27646e-19
obc3x11x10x6 2.05464e-19 3.8985e-19 3.08713e-19
ibc3x11x10x6 1.83347e-19 3.8985e-19 3.2539e-19
ofc3x11x10x6 2.28598e-19 3.1188e-19 3.17307e-19
ifc3x11x10x6 2.00123e-19 3.1188e-19 3.27973e-19
ok12hx3o10x10o10*14 1.82098e-19 1.51014e-18 1.50263e-19
ik12hx3o10x10o10*14 1.56666e-19 2.20713e-18 1.52706e-19
obr3x3x12*12 2.04545e-19 1.80834e-19 1.35544e-19
ibr3x3x12*12 1.64914e-19 2.71251e-19 2.13408e-19
ofr3x3x12*12 2.08633e-19 1.80834e-19 2.3596e-19
ifr3x3x12*12 1.67035e-19 1.80834e-19 2.54559e-19
//obc3x3x12*12 1.50076e-19 1.80834e-19 2.49768e-19
//ibc3x3x12*12 1.87575e-19 1.80834e-19 2.56136e-19
//ofc3x3x12*12 1.66145e-19 2.26043e-19 2.55677e-19
//ifc3x3x12*12 1.74744e-19 1.80834e-19 2.46107e-19
obc3x3x12*12 1.79532e-19 1.80834e-19 2.51595e-19
ibc3x3x12*12 1.5014e-19 2.71251e-19 2.42357e-19
ofc3x3x12*12 1.84806e-19 1.80834e-19 2.41261e-19
ifc3x3x12*12 1.87563e-19 1.80834e-19 2.57e-19
ok16o01x20b 1.90776e-19 3.48623e-18 2.20021e-19
ik16o01x20b 1.76907e-19 3.48623e-18 2.76409e-19
//obr24x4x30 2.02634e-19 3.87896e-19 2.38076e-19
//ofr24x4x30 2.30678e-19 2.58597e-19 2.86564e-19
obr24x4x30 1.87261e-19 5.17195e-19 2.46733e-19
ibr24x4x30 2.19967e-19 5.17195e-19 2.34948e-19
ofr24x4x30 1.62148e-19 2.58597e-19 2.63986e-19
ifr24x4x30 2.20746e-19 2.58597e-19 2.62664e-19
//obc24x4x30 2.079e-19 3.87896e-19 2.963e-19
//ibc24x4x30 1.85441e-19 3.23247e-19 2.82614e-19
//ofc24x4x30 2.05084e-19 3.87896e-19 3.60892e-19
//ifc24x4x30 2.05262e-19 3.87896e-19 2.80874e-19
obc24x4x30 1.84415e-19 3.87896e-19 3.07345e-19
ibc24x4x30 1.82273e-19 3.87896e-19 2.55733e-19
ofc24x4x30 2.0137e-19 3.87896e-19 2.86583e-19
ifc24x4x30 1.8486e-19 3.87896e-19 2.59631e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'obr12x18x7*13' --verify 'ibr12x18x7*13' --verify 'ofr12x18x7*13' --verify 'ifr12x18x7*13' --verify '//obc12x18x7*13' --verify '//ibc12x18x7*13' --verify '//ofc12x18x7*13' --verify '//ifc12x18x7*13' --verify 'obc12x18x7*13' --verify 'ibc12x18x7*13' --verify 'ofc12x18x7*13' --verify 'ifc12x18x7*13' --verify 'ok6o11x6e01x7e10x4e01v2' --verify 'ik6o11x6e01x7e10x4e01v2' --verify '//obr80x8' --verify '//ofr80x8' --verify 'obr80x8' --verify 'ibr80x8' --verify 'ofr80x8' --verify 'ifr80x8' --verify '//obc80x8' --verify '//ibc80x8' --verify '//ofc80x8' --verify '//ifc80x8' --verify 'obc80x8' --verify 'ibc80x8' --verify 'ofc80x8' --verify 'ifc80x8' --verify 'ok3bx13o10x10o00v11' --verify 'ik3bx13o10x10o00v11' --verify 'obrd12x5x7*5' --verify 'ibrd12x5x7*5' --verify 'ofrd12x5x7*5' --verify 'ifrd12x5x7*5' --verify '//obcd12x5x7*5' --verify '//ibcd12x5x7*5' --verify '//ofcd12x5x7*5' --verify '//ifcd12x5x7*5' --verify 'obcd12x5x7*5' --verify 'ibcd12x5x7*5' --verify 'ofcd12x5x7*5' --verify 'ifcd12x5x7*5' --verify 'ok5e10x9e01v37' --verify 'ik5e10x9e01v37'"
obr12x18x7*13 2.03146e-19 3.84352e-19 2.46397e-19
ibr12x18x7*13 2.0755e-19 3.84352e-19 2.44321e-19
ofr12x18x7*13 1.89772e-19 2.88264e-19 3.68931e-19
ifr12x18x7*13 2.00078e-19 3.84352e-19 4.0073e-19
//obc12x18x7*13 2.27134e-19 3.84352e-19 3.94928e-19
//ibc12x18x7*13 1.83705e-19 3.84352e-19 4.20851e-19
//ofc12x18x7*13 1.89789e-19 3.84352e-19 3.84804e-19
//ifc12x18x7*13 2.13504e-19 3.84352e-19 4.13353e-19
obc12x18x7*13 1.92511e-19 3.84352e-19 3.83568e-19
ibc12x18x7*13 2.08115e-19 3.84352e-19 3.80203e-19
ofc12x18x7*13 1.80538e-19 3.84352e-19 4.06112e-19
ifc12x18x7*13 1.89131e-19 3.84352e-19 4.44412e-19
ok6o11x6e01x7e10x4e01v2 2.15977e-19 4.59294e-18 2.79066e-19
ik6o11x6e01x7e10x4e01v2 2.4196e-19 4.88e-18 2.8442e-19
//obr80x8 1.70633e-19 2.74284e-19 2.13962e-19
//ofr80x8 1.74688e-19 3.42855e-19 2.7132e-19
obr80x8 2.45222e-19 2.74284e-19 1.67686e-19
ibr80x8 2.04421e-19 3.42855e-19 1.82195e-19
ofr80x8 2.20063e-19 2.74284e-19 3.18327e-19
ifr80x8 1.65903e-19 2.74284e-19 3.11458e-19
//obc80x8 1.88189e-19 2.74284e-19 2.9462e-19
//ibc80x8 2.26681e-19 2.74284e-19 3.06433e-19
//ofc80x8 2.05584e-19 2.74284e-19 2.70333e-19
//ifc80x8 1.68657e-19 2.74284e-19 2.86482e-19
obc80x8 1.79153e-19 2.74284e-19 2.91806e-19
ibc80x8 2.04144e-19 2.74284e-19 2.9694e-19
ofc80x8 1.98718e-19 2.74284e-19 2.7603e-19
ifc80x8 2.08202e-19 2.74284e-19 2.86939e-19
ok3bx13o10x10o00v11 2.63273e-19 1.49366e-18 1.95591e-19
ik3bx13o10x10o00v11 2.14445e-19 2.09113e-18 2.70779e-19
obrd12x5x7*5 1.82009e-19 4.063e-19 1.98214e-19
ibrd12x5x7*5 1.72378e-19 3.04725e-19 1.97088e-19
ofrd12x5x7*5 1.8242e-19 3.04725e-19 2.83069e-19
ifrd12x5x7*5 1.72427e-19 2.0315e-19 2.88707e-19
//obcd12x5x7*5 1.88862e-19 4.063e-19 3.5323e-19
//ibcd12x5x7*5 1.66155e-19 3.04725e-19 3.16199e-19
//ofcd12x5x7*5 1.84712e-19 3.04725e-19 3.21031e-19
//ifcd12x5x7*5 1.60202e-19 3.04725e-19 2.90591e-19
obcd12x5x7*5 1.71705e-19 3.04725e-19 2.92015e-19
ibcd12x5x7*5 1.90211e-19 3.04725e-19 2.85271e-19
ofcd12x5x7*5 2.15797e-19 3.04725e-19 3.04618e-19
ifcd12x5x7*5 2.4025e-19 4.063e-19 3.42629e-19
ok5e10x9e01v37 2.01927e-19 7.23778e-19 2.0917e-19
ik5e10x9e01v37 1.62838e-19 6.68103e-19 1.87666e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'obr12x5x7x11v6' --verify 'ibr12x5x7x11v6' --verify 'ofr12x5x7x11v6' --verify 'ifr12x5x7x11v6' --verify '//obc12x5x7x11v6' --verify '//ibc12x5x7x11v6' --verify '//ofc12x5x7x11v6' --verify '//ifc12x5x7x11v6' --verify 'obc12x5x7x11v6' --verify 'ibc12x5x7x11v6' --verify 'ofc12x5x7x11v6' --verify 'ifc12x5x7x11v6' --verify 'okd10e11x13o00x13e11*4' --verify 'ikd10e11x13o00x13e11*4' --verify 'obr9x9x6x10*2' --verify 'ibr9x9x6x10*2' --verify 'ofr9x9x6x10*2' --verify 'ifr9x9x6x10*2' --verify '//obc9x9x6x10*2' --verify '//ibc9x9x6x10*2' --verify '//ofc9x9x6x10*2' --verify '//ifc9x9x6x10*2' --verify 'obc9x9x6x10*2' --verify 'ibc9x9x6x10*2' --verify 'ofc9x9x6x10*2' --verify 'ifc9x9x6x10*2' --verify 'okd12e11x4bx9h' --verify 'ikd12e11x4bx9h' --verify '//obrd70x27' --verify '//ofrd70x27' --verify 'obrd70x27' --verify 'ibrd70x27' --verify 'ofrd70x27' --verify 'ifrd70x27' --verify '//obcd70x27' --verify '//ibcd70x27' --verify '//ofcd70x27' --verify '//ifcd70x27' --verify 'obcd70x27' --verify 'ibcd70x27' --verify 'ofcd70x27' --verify 'ifcd70x27' --verify 'ok52o11x36e01' --verify 'ik52o11x36e01'"
obr12x5x7x11v6 2.42315e-19 4.16854e-19 3.36279e-19
ibr12x5x7x11v6 2.15193e-19 3.57304e-19 2.21636e-19
ofr12x5x7x11v6 2.91051e-19 2.97753e-19 3.12723e-19
ifr12x5x7x11v6 1.95074e-19 3.57304e-19 3.74876e-19
//obc12x5x7x11v6 1.94413e-19 3.57304e-19 3.0978e-19
//ibc12x5x7x11v6 1.94224e-19 3.57304e-19 3.04096e-19
//ofc12x5x7x11v6 2.42587e-19 3.57304e-19 3.07396e-19
//ifc12x5x7x11v6 1.89648e-19 3.57304e-19 3.23711e-19
obc12x5x7x11v6 1.96305e-19 3.57304e-19 3.03635e-19
ibc12x5x7x11v6 2.27975e-19 3.57304e-19 3.3594e-19
ofc12x5x7x11v6 2.11449e-19 3.57304e-19 3.3188e-19
ifc12x5x7x11v6 2.58854e-19 3.57304e-19 3.07679e-19
okd10e11x13o00x13e11*4 2.57157e-19 2.96219e-18 2.36302e-19
ikd10e11x13o00x13e11*4 2.5152e-19 2.8941e-18 2.9535e-19
obr9x9x6x10*2 1.95197e-19 4.47904e-19 3.34819e-19
ibr9x9x6x10*2 1.96388e-19 4.47904e-19 3.16306e-19
ofr9x9x6x10*2 2.15094e-19 2.98602e-19 3.85941e-19
ifr9x9x6x10*2 2.13904e-19 2.98602e-19 3.87194e-19
//obc9x9x6x10*2 2.31542e-19 2.98602e-19 4.21247e-19
//ibc9x9x6x10*2 2.18209e-19 2.98602e-19 3.97854e-19
//ofc9x9x6x10*2 2.16634e-19 3.73253e-19 4.15552e-19
//ifc9x9x6x10*2 1.91092e-19 3.73253e-19 3.96317e-19
obc9x9x6x10*2 2.23311e-19 3.73253e-19 4.24269e-19
ibc9x9x6x10*2 2.53851e-19 2.98602e-19 3.82922e-19
ofc9x9x6x10*2 2.26117e-19 4.47904e-19 3.79955e-19
ifc9x9x6x10*2 2.27631e-19 2.98602e-19 4.1581e-19
okd12e11x4bx9h 2.05122e-19 3.09661e-18 2.24149e-19
ikd12e11x4bx9h 2.42805e-19 3.09661e-18 1.92625e-19
//obrd70x27 2.65752e-19 4.78829e-19 3.27161e-19
//ofrd70x27 1.97875e-19 3.19219e-19 4.53592e-19
obrd70x27 1.98607e-19 4.78829e-19 2.77553e-19
ibrd70x27 2.04697e-19 4.78829e-19 3.84577e-19
ofrd70x27 2.12147e-19 3.19219e-19 3.87808e-19
ifrd70x27 2.12469e-19 3.19219e-19 4.77088e-19
//obcd70x27 2.28979e-19 3.19219e-19 4.2803e-19
//ibcd70x27 2.49361e-19 3.19219e-19 4.01809e-19
//ofcd70x27 2.03865e-19 3.99024e-19 4.4885e-19
//ifcd70x27 2.19371e-19 3.99024e-19 4.44793e-19
obcd70x27 2.06398e-19 3.19219e-19 4.82727e-19
ibcd70x27 2.15942e-19 3.99024e-19 4.57883e-19
ofcd70x27 2.14676e-19 3.19219e-19 4.58876e-19
ifcd70x27 2.03635e-19 3.19219e-19 4.46548e-19
ok52o11x36e01 2.30442e-19 9.05412e-18 2.49399e-19
ik52o11x36e01 2.43197e-19 7.42763e-18 2.8487e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'obr4x7x6*15' --verify 'ibr4x7x6*15' --verify 'ofr4x7x6*15' --verify 'ifr4x7x6*15' --verify '//obc4x7x6*15' --verify '//ibc4x7x6*15' --verify '//ofc4x7x6*15' --verify '//ifc4x7x6*15' --verify 'obc4x7x6*15' --verify 'ibc4x7x6*15' --verify 'ofc4x7x6*15' --verify 'ifc4x7x6*15' --verify 'ok33o00x10o01*36' --verify 'ik33o00x10o01*36' --verify '//obr81x14' --verify '//ofr81x14' --verify 'obr81x14' --verify 'ibr81x14' --verify 'ofr81x14' --verify 'ifr81x14' --verify '//obc81x14' --verify '//ibc81x14' --verify '//ofc81x14' --verify '//ifc81x14' --verify 'obc81x14' --verify 'ibc81x14' --verify 'ofc81x14' --verify 'ifc81x14' --verify 'okd10o01x2e00x4e11' --verify 'ikd10o01x2e00x4e11' --verify 'obr4x6x6x2v6' --verify 'ibr4x6x6x2v6' --verify 'ofr4x6x6x2v6' --verify 'ifr4x6x6x2v6' --verify '//obc4x6x6x2v6' --verify '//ibc4x6x6x2v6' --verify '//ofc4x6x6x2v6' --verify '//ifc4x6x6x2v6' --verify 'obc4x6x6x2v6' --verify 'ibc4x6x6x2v6' --verify 'ofc4x6x6x2v6' --verify 'ifc4x6x6x2v6' --verify 'okd726o10' --verify 'ikd726o10'"
obr4x7x6*15 1.66303e-19 2.14139e-19 1.96421e-19
ibr4x7x6*15 1.62978e-19 2.14139e-19 1.98981e-19
ofr4x7x6*15 1.57193e-19 1.42759e-19 3.09874e-19
ifr4x7x6*15 1.41926e-19 1.42759e-19 2.90903e-19
//obc4x7x6*15 1.54652e-19 2.14139e-19 3.00851e-19
//ibc4x7x6*15 1.7451e-19 2.85519e-19 2.88716e-19
//ofc4x7x6*15 1.75599e-19 2.14139e-19 2.69063e-19
//ifc4x7x6*15 1.61586e-19 2.85519e-19 2.75971e-19
obc4x7x6*15 1.82864e-19 2.14139e-19 3.0663e-19
ibc4x7x6*15 1.69796e-19 2.14139e-19 2.81051e-19
ofc4x7x6*15 1.81949e-19 2.14139e-19 2.66188e-19
ifc4x7x6*15 1.68417e-19 2.14139e-19 2.75462e-19
ok33o00x10o01*36 2.2034e-19 1.56186e-18 2.73255e-19
ik33o00x10o01*36 1.85919e-19 1.55129e-18 1.96483e-19
//obr81x14 1.8349e-19 4.12111e-19 2.21394e-19
//ofr81x14 1.91028e-19 3.09083e-19 3.57813e-19
obr81x14 1.78844e-19 4.12111e-19 2.26964e-19
ibr81x14 2.15223e-19 5.15138e-19 2.13553e-19
ofr81x14 1.69146e-19 3.09083e-19 3.3376e-19
ifr81x14 2.06452e-19 3.09083e-19 3.0582e-19
//obc81x14 2.01751e-19 4.12111e-19 2.88107e-19
//ibc81x14 2.15988e-19 3.09083e-19 2.93037e-19
//ofc81x14 2.29853e-19 5.15138e-19 3.25847e-19
//ifc81x14 2.299e-19 4.12111e-19 3.63875e-19
obc81x14 2.4419e-19 4.12111e-19 2.75241e-19
ibc81x14 2.31648e-19 4.12111e-19 3.76142e-19
ofc81x14 2.053e-19 3.09083e-19 3.19208e-19
ifc81x14 2.20644e-19 5.15138e-19 3.09318e-19
okd10o01x2e00x4e11 1.98094e-19 6.71533e-19 1.70765e-19
ikd10o01x2e00x4e11 2.95522e-19 9.65329e-19 2.11867e-19
obr4x6x6x2v6 1.70219e-19 2.38512e-19 1.67984e-19
ibr4x6x6x2v6 1.9428e-19 2.38512e-19 1.67144e-19
ofr4x6x6x2v6 1.17113e-19 1.19256e-19 1.88735e-19
ifr4x6x6x2v6 1.28155e-19 1.19256e-19 1.87462e-19
//obc4x6x6x2v6 1.66189e-19 2.38512e-19 2.11017e-19
//ibc4x6x6x2v6 1.78919e-19 2.38512e-19 1.92613e-19
//ofc4x6x6x2v6 1.70087e-19 2.38512e-19 1.96262e-19
//ifc4x6x6x2v6 1.50764e-19 2.38512e-19 1.93555e-19
obc4x6x6x2v6 1.55037e-19 2.38512e-19 2.01378e-19
ibc4x6x6x2v6 1.8501e-19 2.38512e-19 2.07675e-19
ofc4x6x6x2v6 2.05122e-19 1.78884e-19 2.09647e-19
ifc4x6x6x2v6 1.81168e-19 2.38512e-19 1.97118e-19
okd726o10 2.16368e-19 3.36103e-18 1.87972e-19
ikd726o10 1.91848e-19 4.66207e-18 1.73805e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'obr3x5v7' --verify 'ibr3x5v7' --verify 'ofr3x5v7' --verify 'ifr3x5v7' --verify '//obc3x5v7' --verify '//ibc3x5v7' --verify '//ofc3x5v7' --verify '//ifc3x5v7' --verify 'obc3x5v7' --verify 'ibc3x5v7' --verify 'ofc3x5v7' --verify 'ifc3x5v7' --verify 'okd72h*16' --verify 'ikd72h*16' --verify '//obr10x12x12x8' --verify '//ofr10x12x12x8' --verify 'obr10x12x12x8' --verify 'ibr10x12x12x8' --verify 'ofr10x12x12x8' --verify 'ifr10x12x12x8' --verify '//obc10x12x12x8' --verify '//ibc10x12x12x8' --verify '//ofc10x12x12x8' --verify '//ifc10x12x12x8' --verify 'obc10x12x12x8' --verify 'ibc10x12x12x8' --verify 'ofc10x12x12x8' --verify 'ifc10x12x12x8' --verify 'ok7e01x4e10x8e01x12o11v3' --verify 'ik7e01x4e10x8e01x12o11v3' --verify 'obr18x10v4' --verify 'ibr18x10v4' --verify 'ofr18x10v4' --verify 'ifr18x10v4' --verify '//obc18x10v4' --verify '//ibc18x10v4' --verify '//ofc18x10v4' --verify '//ifc18x10v4' --verify 'obc18x10v4' --verify 'ibc18x10v4' --verify 'ofc18x10v4' --verify 'ifc18x10v4' --verify 'okd3e01x11o00*19' --verify 'ikd3e01x11o00*19'"
obr3x5v7 1.43926e-19 1.27972e-19 2.10073e-19
ibr3x5v7 1.64464e-19 1.27972e-19 1.22423e-19
ofr3x5v7 1.24833e-19 1.27972e-19 1.37593e-19
ifr3x5v7 1.39252e-19 1.27972e-19 1.87704e-19
//obc3x5v7 1.36745e-19 1.27972e-19 2.14397e-19
//ibc3x5v7 1.67624e-19 1.27972e-19 1.47218e-19
//ofc3x5v7 2.0996e-19 1.27972e-19 1.99936e-19
//ifc3x5v7 1.61787e-19 1.27972e-19 2.08354e-19
obc3x5v7 1.77667e-19 1.27972e-19 1.5017e-19
ibc3x5v7 1.43268e-19 1.27972e-19 1.72865e-19
ofc3x5v7 1.47422e-19 1.27972e-19 1.99714e-19
ifc3x5v7 1.60615e-19 1.91959e-19 1.56098e-19
okd72h*16 1.45063e-19 9.21572e-19 1.21735e-19
ikd72h*16 1.48565e-19 4.60786e-19 1.32149e-19
//obr10x12x12x8 1.80042e-19 5.17195e-19 2.08179e-19
//ofr10x12x12x8 2.0481e-19 3.87896e-19 3.19768e-19
obr10x12x12x8 1.89829e-19 3.87896e-19 2.38971e-19
ibr10x12x12x8 1.89125e-19 3.87896e-19 2.55962e-19
ofr10x12x12x8 2.14811e-19 3.87896e-19 3.18591e-19
ifr10x12x12x8 2.01006e-19 3.87896e-19 3.37064e-19
//obc10x12x12x8 1.80279e-19 3.87896e-19 3.20562e-19
//ibc10x12x12x8 2.02728e-19 3.87896e-19 3.37089e-19
//ofc10x12x12x8 2.16569e-19 3.87896e-19 3.5956e-19
//ifc10x12x12x8 2.05258e-19 3.87896e-19 3.07815e-19
obc10x12x12x8 2.07583e-19 3.87896e-19 3.19016e-19
ibc10x12x12x8 1.96175e-19 3.87896e-19 3.16465e-19
ofc10x12x12x8 1.97932e-19 3.87896e-19 3.18705e-19
ifc10x12x12x8 2.19626e-19 3.87896e-19 3.08427e-19
ok7e01x4e10x8e01x12o11v3 3.05188e-19 8.61979e-18 2.52128e-19
ik7e01x4e10x8e01x12o11v3 2.0351e-19 1.2984e-17 2.51859e-19
obr18x10v4 1.87557e-19 3.23247e-19 2.5581e-19
ibr18x10v4 1.80302e-19 2.42435e-19 2.39792e-19
ofr18x10v4 2.07516e-19 1.61623e-19 3.86055e-19
ifr18x10v4 1.59337e-19 1.61623e-19 3.57911e-19
//obc18x10v4 1.87687e-19 1.61623e-19 3.53054e-19
//ibc18x10v4 1.67921e-19 2.42435e-19 3.9077e-19
//ofc18x10v4 1.70612e-19 3.23247e-19 3.35609e-19
//ifc18x10v4 2.0753e-19 1.61623e-19 4.26654e-19
obc18x10v4 1.63709e-19 1.61623e-19 3.63398e-19
ibc18x10v4 2.20945e-19 1.61623e-19 4.06692e-19
ofc18x10v4 1.98113e-19 2.42435e-19 4.22281e-19
ifc18x10v4 1.57696e-19 2.42435e-19 3.93702e-19
okd3e01x11o00*19 1.90148e-19 4.85038e-19 1.94632e-19
ikd3e01x11o00*19 2.08091e-19 4.85038e-19 2.82138e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'ok12e01*208' --verify 'ik12e01*208' --verify 'obr8x4v17' --verify 'ibr8x4v17' --verify 'ofr8x4v17' --verify 'ifr8x4v17' --verify '//obc8x4v17' --verify '//ibc8x4v17' --verify '//ofc8x4v17' --verify '//ifc8x4v17' --verify 'obc8x4v17' --verify 'ibc8x4v17' --verify 'ofc8x4v17' --verify 'ifc8x4v17' --verify 'ok13o10*48' --verify 'ik13o10*48' --verify 'obr3x9x14x6*4' --verify 'ibr3x9x14x6*4' --verify 'ofr3x9x14x6*4' --verify 'ifr3x9x14x6*4' --verify '//obc3x9x14x6*4' --verify '//ibc3x9x14x6*4' --verify '//ofc3x9x14x6*4' --verify '//ifc3x9x14x6*4' --verify 'obc3x9x14x6*4' --verify 'ibc3x9x14x6*4' --verify 'ofc3x9x14x6*4' --verify 'ifc3x9x14x6*4' --verify 'ok7e01x9o10*15' --verify 'ik7e01x9o10*15' --verify 'obr5x7x11x6v1' --verify 'ibr5x7x11x6v1' --verify 'ofr5x7x11x6v1' --verify 'ifr5x7x11x6v1' --verify '//obc5x7x11x6v1' --verify '//ibc5x7x11x6v1' --verify '//ofc5x7x11x6v1' --verify '//ifc5x7x11x6v1' --verify 'obc5x7x11x6v1' --verify 'ibc5x7x11x6v1' --verify 'ofc5x7x11x6v1' --verify 'ifc5x7x11x6v1' --verify 'ok3o11x13b' --verify 'ik3o11x13b'"
ok12e01*208 1.52796e-19 4.35766e-19 1.17738e-19
ik12e01*208 1.67149e-19 4.35766e-19 1.56636e-19
obr8x4v17 1.73307e-19 1.62349e-19 1.43585e-19
ibr8x4v17 1.50827e-19 1.62349e-19 1.33564e-19
ofr8x4v17 1.29237e-19 8.11744e-20 1.89617e-19
ifr8x4v17 9.68577e-20 4.05872e-20 1.91872e-19
//obc8x4v17 1.40568e-19 8.11744e-20 1.92546e-19
//ibc8x4v17 1.38431e-19 8.11744e-20 1.92508e-19
//ofc8x4v17 1.34495e-19 8.11744e-20 1.8643e-19
//ifc8x4v17 1.67758e-19 8.11744e-20 1.9196e-19
obc8x4v17 1.6483e-19 8.11744e-20 1.94463e-19
ibc8x4v17 1.38863e-19 8.11744e-20 1.86348e-19
ofc8x4v17 1.49362e-19 8.11744e-20 1.88259e-19
ifc8x4v17 1.27557e-19 8.11744e-20 1.90187e-19
ok13o10*48 1.50687e-19 3.87376e-19 1.26395e-19
ik13o10*48 2.03223e-19 3.04367e-19 1.49112e-19
obr3x9x14x6*4 1.91937e-19 3.64258e-19 2.33682e-19
ibr3x9x14x6*4 2.01962e-19 3.64258e-19 2.41979e-19
ofr3x9x14x6*4 1.82348e-19 2.73193e-19 3.9899e-19
ifr3x9x14x6*4 1.75369e-19 2.73193e-19 3.85755e-19
//obc3x9x14x6*4 1.96927e-19 3.64258e-19 3.72295e-19
//ibc3x9x14x6*4 1.99892e-19 3.64258e-19 3.92006e-19
//ofc3x9x14x6*4 2.03475e-19 3.64258e-19 3.8813e-19
//ifc3x9x14x6*4 1.96053e-19 3.64258e-19 4.0277e-19
obc3x9x14x6*4 2.14467e-19 3.64258e-19 4.33213e-19
ibc3x9x14x6*4 1.827e-19 3.64258e-19 3.81189e-19
ofc3x9x14x6*4 2.13886e-19 3.64258e-19 3.43348e-19
ifc3x9x14x6*4 1.99468e-19 3.64258e-19 4.03536e-19
ok7e01x9o10*15 2.25448e-19 9.25186e-19 1.87194e-19
ik7e01x9o10*15 2.48781e-19 8.09538e-19 1.77567e-19
obr5x7x11x6v1 2.06303e-19 4.33117e-19 2.41517e-19
ibr5x7x11x6v1 2.01546e-19 3.60931e-19 2.15256e-19
ofr5x7x11x6v1 1.91166e-19 2.88745e-19 3.62633e-19
ifr5x7x11x6v1 1.90287e-19 2.88745e-19 2.99815e-19
//obc5x7x11x6v1 1.75132e-19 3.60931e-19 2.97857e-19
//ibc5x7x11x6v1 1.94478e-19 3.60931e-19 2.86945e-19
//ofc5x7x11x6v1 1.98328e-19 3.60931e-19 3.22655e-19
//ifc5x7x11x6v1 1.87299e-19 3.60931e-19 2.83496e-19
obc5x7x11x6v1 1.96609e-19 3.60931e-19 2.95177e-19
ibc5x7x11x6v1 1.92298e-19 3.60931e-19 3.15239e-19
ofc5x7x11x6v1 1.85696e-19 3.60931e-19 3.32314e-19
ifc5x7x11x6v1 2.04987e-19 4.33117e-19 3.39595e-19
ok3o11x13b 2.01287e-19 7.85714e-19 2.07093e-19
ik3o11x13b 1.52815e-19 1.23469e-18 2.30264e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'ofcd99*72' --verify 'ifcd99*72' --verify 'ok2o11x6o10x13o10x8e11v7' --verify 'ik2o11x6o10x13o10x8e11v7' --verify 'obr11x4*12' --verify 'ibr11x4*12' --verify 'ofr11x4*12' --verify 'ifr11x4*12' --verify '//obc11x4*12' --verify '//ibc11x4*12' --verify '//ofc11x4*12' --verify '//ifc11x4*12' --verify 'obc11x4*12' --verify 'ibc11x4*12' --verify 'ofc11x4*12' --verify 'ifc11x4*12' --verify 'okd3bx4o11v7' --verify 'ikd3bx4o11v7' --verify 'obr8x8x10*8' --verify 'ibr8x8x10*8' --verify 'ofr8x8x10*8' --verify 'ifr8x8x10*8' --verify '//obc8x8x10*8' --verify '//ibc8x8x10*8' --verify '//ofc8x8x10*8' --verify '//ifc8x8x10*8' --verify 'obc8x8x10*8' --verify 'ibc8x8x10*8' --verify 'ofc8x8x10*8' --verify 'ifc8x8x10*8' --verify 'ok9o10x20o10*29' --verify 'ik9o10x20o10*29' --verify 'obrd18x4x4v4' --verify 'ibrd18x4x4v4' --verify 'ofrd18x4x4v4' --verify 'ifrd18x4x4v4' --verify '//obcd18x4x4v4' --verify '//ibcd18x4x4v4' --verify '//ofcd18x4x4v4' --verify '//ifcd18x4x4v4' --verify 'obcd18x4x4v4' --verify 'ibcd18x4x4v4' --verify 'ofcd18x4x4v4' --verify 'ifcd18x4x4v4'"
ofcd99*72 2.00278e-19 2.65152e-19 2.94299e-19
ifcd99*72 2.0333e-19 2.65152e-19 2.21861e-19
ok2o11x6o10x13o10x8e11v7 2.40482e-19 2.56057e-18 2.26402e-19
ik2o11x6o10x13o10x8e11v7 1.89709e-19 1.97097e-18 2.42461e-19
obr11x4*12 1.52853e-19 2.12485e-19 2.16727e-19
ibr11x4*12 1.84999e-19 2.12485e-19 1.66726e-19
ofr11x4*12 1.39385e-19 1.41656e-19 2.56336e-19
ifr11x4*12 1.72768e-19 1.41656e-19 2.95168e-19
//obc11x4*12 1.48533e-19 2.12485e-19 2.73973e-19
//ibc11x4*12 1.43391e-19 2.12485e-19 2.8076e-19
//ofc11x4*12 1.74296e-19 1.41656e-19 2.73052e-19
//ifc11x4*12 1.70311e-19 2.83313e-19 2.77355e-19
obc11x4*12 1.95462e-19 2.12485e-19 2.65006e-19
ibc11x4*12 1.54752e-19 2.12485e-19 2.79927e-19
ofc11x4*12 1.54569e-19 2.12485e-19 2.72464e-19
ifc11x4*12 1.75721e-19 1.41656e-19 2.5643e-19
okd3bx4o11v7 1.56111e-19 2.52673e-19 1.22455e-19
ikd3bx4o11v7 1.56076e-19 3.15841e-19 2.05998e-19
obr8x8x10*8 1.76046e-19 3.08569e-19 1.90671e-19
ibr8x8x10*8 1.74473e-19 3.08569e-19 1.74336e-19
ofr8x8x10*8 1.61281e-19 1.54285e-19 3.54041e-19
ifr8x8x10*8 1.57799e-19 2.31427e-19 2.92416e-19
//obc8x8x10*8 1.91377e-19 3.08569e-19 3.29494e-19
//ibc8x8x10*8 1.84647e-19 3.08569e-19 3.12388e-19
//ofc8x8x10*8 2.03701e-19 2.31427e-19 3.05076e-19
//ifc8x8x10*8 1.79212e-19 2.31427e-19 3.32395e-19
obc8x8x10*8 1.93193e-19 2.31427e-19 3.55407e-19
ibc8x8x10*8 1.89834e-19 2.31427e-19 2.99634e-19
ofc8x8x10*8 1.98545e-19 3.08569e-19 3.26329e-19
ifc8x8x10*8 1.78791e-19 3.08569e-19 3.26211e-19
ok9o10x20o10*29 1.59897e-19 1.12159e-18 1.41883e-19
ik9o10x20o10*29 2.00079e-19 1.09355e-18 1.60894e-19
obrd18x4x4v4 1.95389e-19 2.55549e-19 1.89085e-19
ibrd18x4x4v4 1.47924e-19 1.91662e-19 2.12285e-19
ofrd18x4x4v4 1.43855e-19 1.91662e-19 4.18214e-19
ifrd18x4x4v4 1.6332e-19 1.27774e-19 4.16758e-19
//obcd18x4x4v4 2.02037e-19 1.91662e-19 3.6851e-19
//ibcd18x4x4v4 1.86637e-19 1.91662e-19 3.6442e-19
//ofcd18x4x4v4 1.86747e-19 1.91662e-19 4.16705e-19
//ifcd18x4x4v4 1.74878e-19 1.91662e-19 3.86987e-19
obcd18x4x4v4 1.85025e-19 1.27774e-19 3.3876e-19
ibcd18x4x4v4 1.82244e-19 1.91662e-19 3.76294e-19
ofcd18x4x4v4 1.4671e-19 1.91662e-19 3.82775e-19
ifcd18x4x4v4 1.84008e-19 1.91662e-19 3.7283e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'ok90bx10o01' --verify 'ik90bx10o01' --verify '//obr40x11' --verify '//ofr40x11' --verify 'obr40x11' --verify 'ibr40x11' --verify 'ofr40x11' --verify 'ifr40x11' --verify '//obc40x11' --verify '//ibc40x11' --verify '//ofc40x11' --verify '//ifc40x11' --verify 'obc40x11' --verify 'ibc40x11' --verify 'ofc40x11' --verify 'ifc40x11' --verify 'okd45bv210' --verify 'ikd45bv210' --verify '//obrd4x7x18' --verify '//ofrd4x7x18' --verify 'obrd4x7x18' --verify 'ibrd4x7x18' --verify 'ofrd4x7x18' --verify 'ifrd4x7x18' --verify '//obcd4x7x18' --verify '//ibcd4x7x18' --verify '//ofcd4x7x18' --verify '//ifcd4x7x18' --verify 'obcd4x7x18' --verify 'ibcd4x7x18' --verify 'ofcd4x7x18' --verify 'ifcd4x7x18' --verify 'ok7o11x6e11x8hv3' --verify 'ik7o11x6e11x8hv3' --verify 'obrd99*72' --verify 'ibrd99*72' --verify 'ofrd99*72' --verify 'ifrd99*72' --verify '//obcd99*72' --verify '//ibcd99*72' --verify '//ofcd99*72' --verify '//ifcd99*72' --verify 'obcd99*72' --verify 'ibcd99*72'"
ok90bx10o01 1.98154e-19 4.44575e-18 2.39394e-19
ik90bx10o01 2.20627e-19 5.26904e-18 2.17275e-19
//obr40x11 1.88023e-19 3.30799e-19 2.43612e-19
//ofr40x11 1.61888e-19 3.30799e-19 3.09807e-19
obr40x11 1.73737e-19 4.13498e-19 2.36376e-19
ibr40x11 1.89134e-19 4.13498e-19 2.30728e-19
ofr40x11 2.06694e-19 2.48099e-19 2.71229e-19
ifr40x11 1.85693e-19 2.48099e-19 3.4883e-19
//obc40x11 2.02741e-19 3.30799e-19 3.84588e-19
//ibc40x11 2.33001e-19 3.30799e-19 3.89221e-19
//ofc40x11 1.87013e-19 4.13498e-19 3.24335e-19
//ifc40x11 1.92202e-19 3.30799e-19 3.17774e-19
obc40x11 1.98851e-19 3.30799e-19 3.5159e-19
ibc40x11 1.80069e-19 3.30799e-19 3.53832e-19
ofc40x11 1.82356e-19 3.30799e-19 3.31645e-19
ifc40x11 2.06616e-19 3.30799e-19 2.94555e-19
okd45bv210 1.59645e-19 1.30724e-18 1.59971e-19
ikd45bv210 1.68295e-19 8.71492e-19 1.93498e-19
//obrd4x7x18 1.7472e-19 3.86354e-19 2.62066e-19
//ofrd4x7x18 1.5994e-19 3.09083e-19 3.75964e-19
obrd4x7x18 2.19602e-19 3.09083e-19 2.31551e-19
ibrd4x7x18 1.71154e-19 3.09083e-19 2.15241e-19
ofrd4x7x18 1.65962e-19 2.31812e-19 3.72647e-19
ifrd4x7x18 1.90348e-19 2.31812e-19 3.65187e-19
//obcd4x7x18 1.96037e-19 3.09083e-19 4.10769e-19
//ibcd4x7x18 2.28593e-19 3.09083e-19 5.30975e-19
//ofcd4x7x18 2.13444e-19 3.09083e-19 4.26081e-19
//ifcd4x7x18 1.65041e-19 3.09083e-19 3.77881e-19
obcd4x7x18 1.78029e-19 4.63624e-19 4.08881e-19
ibcd4x7x18 1.73846e-19 3.09083e-19 3.58211e-19
ofcd4x7x18 1.77307e-19 3.09083e-19 4.15976e-19
ifcd4x7x18 2.59653e-19 3.09083e-19 3.28534e-19
ok7o11x6e11x8hv3 2.00261e-19 1.85247e-18 2.44329e-19
ik7o11x6e11x8hv3 1.909e-19 1.48564e-18 1.93873e-19
obrd99*72 2.14411e-19 2.65152e-19 1.62898e-19
ibrd99*72 2.04175e-19 2.65152e-19 2.08969e-19
ofrd99*72 1.89239e-19 2.65152e-19 2.47705e-19
ifrd99*72 1.86283e-19 2.65152e-19 2.6838e-19
//obcd99*72 1.84029e-19 2.65152e-19 2.62675e-19
//ibcd99*72 2.00775e-19 2.65152e-19 2.45386e-19
//ofcd99*72 2.00271e-19 2.65152e-19 2.81557e-19
//ifcd99*72 1.94262e-19 2.65152e-19 2.54025e-19
obcd99*72 2.01161e-19 3.53535e-19 2.38881e-19
ibcd99*72 2.09478e-19 2.65152e-19 2.38179e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'okd10bx5e00v11' --verify 'ikd10bx5e00v11' --verify 'obrd21x8v21' --verify 'ibrd21x8v21' --verify 'ofrd21x8v21' --verify 'ifrd21x8v21' --verify '//obcd21x8v21' --verify '//ibcd21x8v21' --verify '//ofcd21x8v21' --verify '//ifcd21x8v21' --verify 'obcd21x8v21' --verify 'ibcd21x8v21' --verify 'ofcd21x8v21' --verify 'ifcd21x8v21' --verify 'okd16o10' --verify 'ikd16o10' --verify 'obr10x9v1' --verify 'ibr10x9v1' --verify 'ofr10x9v1' --verify 'ifr10x9v1' --verify '//obc10x9v1' --verify '//ibc10x9v1' --verify '//ofc10x9v1' --verify '//ifc10x9v1' --verify 'obc10x9v1' --verify 'ibc10x9v1' --verify 'ofc10x9v1' --verify 'ifc10x9v1' --verify 'ok11o10x4e01x3o01*12' --verify 'ik11o10x4e01x3o01*12' --verify '//obr56x12' --verify '//ofr56x12' --verify 'obr56x12' --verify 'ibr56x12' --verify 'ofr56x12' --verify 'ifr56x12' --verify '//obc56x12' --verify '//ibc56x12' --verify '//ofc56x12' --verify '//ifc56x12' --verify 'obc56x12' --verify 'ibc56x12' --verify 'ofc56x12' --verify 'ifc56x12'"
okd10bx5e00v11 1.48234e-19 9.46213e-19 1.16325e-19
ikd10bx5e00v11 1.61054e-19 9.46213e-19 1.00023e-19
obrd21x8v21 1.82472e-19 2.8042e-19 2.09699e-19
ibrd21x8v21 1.95942e-19 2.8042e-19 2.33604e-19
ofrd21x8v21 1.64231e-19 1.75263e-19 3.94957e-19
ifrd21x8v21 1.62613e-19 1.4021e-19 3.41124e-19
//obcd21x8v21 1.74685e-19 2.10315e-19 3.4227e-19
//ibcd21x8v21 1.88875e-19 2.10315e-19 3.51711e-19
//ofcd21x8v21 1.85735e-19 2.10315e-19 3.59518e-19
//ifcd21x8v21 1.95478e-19 2.10315e-19 3.7166e-19
obcd21x8v21 1.89312e-19 2.10315e-19 3.89108e-19
ibcd21x8v21 1.84874e-19 2.8042e-19 3.65997e-19
ofcd21x8v21 1.80751e-19 2.10315e-19 3.69689e-19
ifcd21x8v21 2.0594e-19 2.10315e-19 3.42072e-19
okd16o10 1.8839e-19 2.1684e-19 1.77499e-19
ikd16o10 1.16113e-19 2.71051e-19 1.81783e-19
obr10x9v1 1.7187e-19 1.82856e-19 2.32889e-19
ibr10x9v1 1.79905e-19 3.65712e-19 2.03413e-19
ofr10x9v1 1.88288e-19 1.82856e-19 3.65304e-19
ifr10x9v1 2.0419e-19 1.82856e-19 4.0894e-19
//obc10x9v1 1.65311e-19 1.82856e-19 4.09279e-19
//ibc10x9v1 1.4986e-19 2.74284e-19 3.41464e-19
//ofc10x9v1 2.01295e-19 2.74284e-19 3.37401e-19
//ifc10x9v1 1.64697e-19 2.74284e-19 3.18186e-19
obc10x9v1 2.47528e-19 1.82856e-19 3.42557e-19
ibc10x9v1 1.65869e-19 1.82856e-19 3.36944e-19
ofc10x9v1 1.44686e-19 2.74284e-19 3.4752e-19
ifc10x9v1 1.75425e-19 1.82856e-19 3.65001e-19
ok11o10x4e01x3o01*12 1.90394e-19 1.20392e-18 2.31021e-19
ik11o10x4e01x3o01*12 2.11285e-19 9.69006e-19 2.32322e-19
//obr56x12 1.7635e-19 2.67674e-19 2.78449e-19
//ofr56x12 1.98605e-19 2.67674e-19 4.1282e-19
obr56x12 1.83329e-19 4.0151e-19 2.29636e-19
ibr56x12 1.84668e-19 3.34592e-19 2.36809e-19
ofr56x12 1.57309e-19 2.67674e-19 3.70806e-19
ifr56x12 1.93654e-19 2.67674e-19 3.80662e-19
//obc56x12 1.91997e-19 3.34592e-19 3.49404e-19
//ibc56x12 1.95582e-19 2.67674e-19 3.19229e-19
//ofc56x12 2.08644e-19 3.34592e-19 3.95141e-19
//ifc56x12 1.87359e-19 3.34592e-19 3.66507e-19
obc56x12 1.95424e-19 3.34592e-19 4.067e-19
ibc56x12 1.70594e-19 2.67674e-19 3.64753e-19
ofc56x12 1.77408e-19 2.67674e-19 3.45233e-19
ifc56x12 1.91832e-19 5.35347e-19 3.33144e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'obr14x6x7*6' --verify 'ibr14x6x7*6' --verify 'ofr14x6x7*6' --verify 'ifr14x6x7*6' --verify '//obc14x6x7*6' --verify '//ibc14x6x7*6' --verify '//ofc14x6x7*6' --verify '//ifc14x6x7*6' --verify 'obc14x6x7*6' --verify 'ibc14x6x7*6' --verify 'ofc14x6x7*6' --verify 'ifc14x6x7*6' --verify 'ok7e01x5o01x6e01x9e11' --verify 'ik7e01x5o01x6e01x9e11' --verify 'obr7x4*12' --verify 'ibr7x4*12' --verify 'ofr7x4*12' --verify 'ifr7x4*12' --verify '//obc7x4*12' --verify '//ibc7x4*12' --verify '//ofc7x4*12' --verify '//ifc7x4*12' --verify 'obc7x4*12' --verify 'ibc7x4*12' --verify 'ofc7x4*12' --verify 'ifc7x4*12' --verify 'ok13o01*145' --verify 'ik13o01*145' --verify '//obr1620' --verify '//ibr1620' --verify '//ofr1620' --verify '//ifr1620' --verify 'obr1620' --verify 'ibr1620' --verify 'ofr1620' --verify 'ifr1620' --verify '//obc1620' --verify '//ibc1620' --verify '//ofc1620' --verify '//ifc1620' --verify 'obc1620' --verify 'ibc1620' --verify 'ofc1620' --verify 'ifc1620'"
obr14x6x7*6 1.69372e-19 3.33848e-19 2.01881e-19
ibr14x6x7*6 1.56748e-19 3.33848e-19 2.03682e-19
ofr14x6x7*6 2.13448e-19 2.50386e-19 3.62183e-19
ifr14x6x7*6 1.9246e-19 3.33848e-19 3.13707e-19
//obc14x6x7*6 2.18051e-19 3.33848e-19 2.82822e-19
//ibc14x6x7*6 2.51265e-19 3.33848e-19 3.29895e-19
//ofc14x6x7*6 1.97994e-19 3.33848e-19 2.86282e-19
//ifc14x6x7*6 2.04598e-19 3.33848e-19 2.97042e-19
obc14x6x7*6 2.03044e-19 3.33848e-19 3.31868e-19
ibc14x6x7*6 1.92442e-19 3.33848e-19 3.02005e-19
ofc14x6x7*6 1.8593e-19 3.33848e-19 3.07613e-19
ifc14x6x7*6 1.68861e-19 3.33848e-19 3.2466e-19
ok7e01x5o01x6e01x9e11 2.74978e-19 8.95163e-18 2.4048e-19
ik7e01x5o01x6e01x9e11 2.04762e-19 1.29513e-17 2.88556e-19
obr7x4*12 1.3482e-19 1.77576e-19 1.82198e-19
ibr7x4*12 1.44775e-19 2.66363e-19 1.67769e-19
ofr7x4*12 1.39719e-19 1.77576e-19 3.16243e-19
ifr7x4*12 1.27562e-19 1.77576e-19 2.77543e-19
//obc7x4*12 1.61183e-19 1.77576e-19 2.60262e-19
//ibc7x4*12 1.40181e-19 1.77576e-19 3.37272e-19
//ofc7x4*12 1.58873e-19 1.77576e-19 3.15943e-19
//ifc7x4*12 1.49605e-19 1.77576e-19 2.72565e-19
obc7x4*12 1.75403e-19 1.77576e-19 4.07546e-19
ibc7x4*12 1.4172e-19 1.77576e-19 2.44797e-19
ofc7x4*12 1.35784e-19 1.77576e-19 2.82763e-19
ifc7x4*12 1.47004e-19 1.77576e-19 2.88871e-19
ok13o01*145 1.93572e-19 4.36672e-19 1.95557e-19
ik13o01*145 1.67864e-19 3.82088e-19 2.44391e-19
//obr1620 2.19183e-19 3.44796e-19 2.39669e-19
//ibr1620 2.69015e-19 3.44796e-19 2.43905e-19
//ofr1620 2.6402e-19 3.44796e-19 2.73099e-19
//ifr1620 2.01194e-19 3.44796e-19 2.27521e-19
obr1620 2.05193e-19 3.44796e-19 2.46603e-19
ibr1620 2.01768e-19 3.44796e-19 1.92641e-19
ofr1620 2.15379e-19 2.58597e-19 2.40619e-19
ifr1620 2.10003e-19 3.44796e-19 2.3947e-19
//obc1620 2.23183e-19 3.44796e-19 2.76916e-19
//ibc1620 2.2268e-19 3.44796e-19 2.77533e-19
//ofc1620 2.27244e-19 3.44796e-19 2.68007e-19
//ifc1620 2.05496e-19 3.44796e-19 2.77113e-19
obc1620 1.94588e-19 3.44796e-19 2.48284e-19
ibc1620 2.11804e-19 3.44796e-19 2.81326e-19
ofc1620 2.01062e-19 3.44796e-19 2.72154e-19
ifc1620 2.38227e-19 3.44796e-19 2.44056e-19
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench -o nthreads=2 --verbose=1   --verify 'ok7o01x18e00v8' --verify 'ik7o01x18e00v8'"
ok7o01x18e00v8 1.61309e-19 1.28071e-18 2.53873e-19
ik7o01x18e00v8 2.12908e-19 1.60089e-18 1.62969e-19
--------------------------------------------------------------
         FFTW threaded transforms passed basic tests!
--------------------------------------------------------------
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/tests'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/tests'
Making check in mpi
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/mpi'
make  check-am
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/mpi'
make  check-local
make[3]: Entering directory `/home/guest06/practice/fftw-3.3.8/mpi'
make[3]: Nothing to be done for `check-local'.
make[3]: Leaving directory `/home/guest06/practice/fftw-3.3.8/mpi'
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/mpi'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/mpi'
Making check in doc
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/doc'
Making check in FAQ
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/doc/FAQ'
make[2]: Nothing to be done for `check'.
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/doc/FAQ'
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/doc'
make[2]: Nothing to be done for `check-am'.
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/doc'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/doc'
Making check in tools
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/tools'
make  check-am
make[2]: Entering directory `/home/guest06/practice/fftw-3.3.8/tools'
make[2]: Nothing to be done for `check-am'.
make[2]: Leaving directory `/home/guest06/practice/fftw-3.3.8/tools'
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/tools'
Making check in m4
make[1]: Entering directory `/home/guest06/practice/fftw-3.3.8/m4'
make[1]: Nothing to be done for `check'.
make[1]: Leaving directory `/home/guest06/practice/fftw-3.3.8/m4'
[guest06@gauss fftw-3.3.8]$





----------------------------------------------------
----------------------------------------------------
----------------------------------------------------
