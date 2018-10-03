memo-181002-作業メモ-第２回計算物質科学イノベーションキャンプ-181002


----------------------------------------------------
Practice 


FFTW3

   57  wget http://www.fftw.org/fftw-3.3.8.tar.gz
   58  tar -xvzof fftw-3.3.8.tar.gz
   61  mv fftw-3.3.8.tar.gz practice/
   62  mv fftw-3.3.8/ practice/
   63  cd practice/fftw-3.3.8
   **  CC=icc CFLAGS="-O2 -prec-div -prec-sqrt -fp-model precise -static -ip -parallel -par-threshold=95" ./configure --prefix=/usr/local
   **  make
   **  make check

# Configureでのオプションは最適なものが別途あるかもしれません
(ref)	https://www.kunihikokaneko.com/free/linuxtoolchain/fftw3linux.html



=======================================
[guest06@gauss ~]$ cd practice/fftw-3.3.8
[guest06@gauss fftw-3.3.8]$ ls
aclocal.m4         configure                    genfft       NEWS
api                configure.ac                 INSTALL      rdft
AUTHORS            CONVENTIONS                  install-sh   README
bootstrap.sh       COPYING                      kernel       README-perfcnt.md
ChangeLog          COPYRIGHT                    libbench2    reodft
cmake.config.h.in  depcomp                      ltmain.sh    simd-support
CMakeLists.txt     dft                          m4           support
compile            doc                          Makefile.am  tests
config.guess       FFTW3Config.cmake.in         Makefile.in  threads
config.h.in        FFTW3ConfigVersion.cmake.in  missing      TODO
config.sub         fftw.pc.in                   mpi          tools
[guest06@gauss fftw-3.3.8]$ CC=icc CFLAGS="-O2 -prec-div -prec-sqrt -fp-model precise -static -ip -parallel -par-threshold=95" ./configure --prefix=/usr/local
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether to enable maintainer-specific portions of Makefiles... no
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking for gcc... icc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether icc accepts -g... yes
checking for icc option to accept ISO C89... none needed
checking whether icc understands -c and -o together... yes
checking for style of include used by make... GNU
checking dependency style of icc... gcc3
checking for C compiler vendor... intel
checking for icc option to accept ISO C99... none needed
checking for icc option to accept ISO Standard C... (cached) none needed
checking whether ln -s works... yes
checking whether make sets $(MAKE)... (cached) yes
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for fgrep... /bin/grep -F
checking for ld used by icc... /usr/bin/ld
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
checking command to parse /usr/bin/nm -B output from icc object... ok
checking for sysroot... no
checking for a working dd... /bin/dd
checking how to truncate binary pipes... /bin/dd bs=4096 count=1
checking for mt... no
checking if : is a manifest tool... no
checking how to run the C preprocessor... icc -E
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
checking if icc supports -fno-rtti -fno-exceptions... yes
checking for icc option to produce PIC... -fPIC -DPIC
checking if icc PIC flag -fPIC -DPIC works... yes
checking if icc static flag -static works... yes
checking if icc supports -c -o file.o... yes
checking if icc supports -c -o file.o... (cached) yes
checking whether the icc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... no
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
checking for clock_gettime... no
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
checking for isnan... yes
checking whether C compiler accepts -mpreferred-stack-boundary=4... yes
checking whether the stack is at least 8-byte aligned by gcc... checking whether C compiler accepts -malign-double... yes
yes
checking for g77... g77
checking whether we are using the GNU Fortran 77 compiler... yes
checking whether g77 accepts -g... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... no
checking whether to build static libraries... yes
checking for g77 option to produce PIC... -fPIC
checking if g77 PIC flag -fPIC works... yes
checking if g77 static flag -static works... yes
checking if g77 supports -c -o file.o... yes
checking if g77 supports -c -o file.o... (cached) yes
checking whether the g77 linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking dynamic linker characteristics... (cached) GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking how to get verbose linking output from g77... -v
checking for Fortran 77 libraries of g77...  -L/opt/intel/compilers_and_libraries_2016.2.181/linux/ipp/lib/intel64 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/compiler/lib/intel64 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/mkl/lib/intel64 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/tbb/lib/intel64/gcc4.4 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/lib/intel64_lin -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/../tbb/lib/intel64_lin/gcc4.4 -L/opt/intel/compilers_and_libraries_2016.2.181/linux/daal/../compiler/lib/intel64_lin -L/usr/lib/gcc/x86_64-redhat-linux/3.4.6 -L/usr/lib/gcc/x86_64-redhat-linux/3.4.6/../../../../lib64 -L/usr/lib/gcc/x86_64-redhat-linux/3.4.6/../../.. -L/lib/../lib64 -L/usr/lib/../lib64 -lfrtbegin -lg2c -lm
checking for dummy main to link with Fortran 77 libraries... none
checking for Fortran 77 name-mangling scheme... lower case, underscore, extra underscore
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

  (略)

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
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofcd18x13v23' --verify 'ifcd18x13v23' --verify 'okd7o10x9e10x2e10*14' --verify 'ikd7o10x9e10x2e10*14' --verify 'obr6x3*10' --verify 'ibr6x3*10' --verify 'ofr6x3*10' --verify 'ifr6x3*10' --verify '//obc6x3*10' --verify '//ibc6x3*10' --verify '//ofc6x3*10' --verify '//ifc6x3*10' --verify 'obc6x3*10' --verify 'ibc6x3*10' --verify 'ofc6x3*10' --verify 'ifc6x3*10' --verify 'okd7o00x4e11x13o11' --verify 'ikd7o00x4e11x13o11' --verify 'obr35v104' --verify 'ibr35v104' --verify 'ofr35v104' --verify 'ifr35v104' --verify '//obc35v104' --verify '//ibc35v104' --verify '//ofc35v104' --verify '//ifc35v104' --verify 'obc35v104' --verify 'ibc35v104' --verify 'ofc35v104' --verify 'ifc35v104' --verify 'ok9o11x12bx13e00' --verify 'ik9o11x12bx13e00' --verify 'obrd7x13x6v3' --verify 'ibrd7x13x6v3' --verify 'ofrd7x13x6v3' --verify 'ifrd7x13x6v3' --verify '//obcd7x13x6v3' --verify '//ibcd7x13x6v3' --verify '//ofcd7x13x6v3' --verify '//ifcd7x13x6v3' --verify 'obcd7x13x6v3' --verify 'ibcd7x13x6v3' --verify 'ofcd7x13x6v3' --verify 'ifcd7x13x6v3'"
ofcd18x13v23 3.88723e-16 6.05865e-16 9.06376e-16
ifcd18x13v23 4.05723e-16 6.05865e-16 7.65679e-16
okd7o10x9e10x2e10*14 3.13262e-16 1.60586e-15 3.39994e-16
ikd7o10x9e10x2e10*14 3.306e-16 1.60586e-15 3.07913e-16
obr6x3*10 3.40921e-16 3.4542e-16 4.25522e-16
ibr6x3*10 3.44223e-16 3.4542e-16 4.37872e-16
ofr6x3*10 3.16267e-16 2.3028e-16 8.37744e-16
ifr6x3*10 2.40768e-16 2.3028e-16 8.58477e-16
//obc6x3*10 4.19057e-16 4.6056e-16 7.68557e-16
//ibc6x3*10 4.43403e-16 3.4542e-16 7.77369e-16
//ofc6x3*10 3.91703e-16 4.6056e-16 8.04046e-16
//ifc6x3*10 3.31454e-16 3.4542e-16 9.14357e-16
obc6x3*10 2.54851e-16 3.4542e-16 7.91954e-16
ibc6x3*10 2.89189e-16 3.4542e-16 7.71335e-16
ofc6x3*10 3.66272e-16 3.4542e-16 8.10161e-16
ifc6x3*10 2.9709e-16 3.4542e-16 8.8494e-16
okd7o00x4e11x13o11 4.38333e-16 2.7217e-15 4.42474e-16
ikd7o00x4e11x13o11 4.37904e-16 2.85637e-15 4.49479e-16
obr35v104 3.89438e-16 4.54719e-16 3.38914e-16
ibr35v104 3.5188e-16 4.54719e-16 4.67491e-16
ofr35v104 2.99863e-16 3.03146e-16 3.78836e-16
ifr35v104 3.34228e-16 3.78933e-16 3.88822e-16
//obc35v104 3.62568e-16 4.54719e-16 3.99662e-16
//ibc35v104 3.22985e-16 4.54719e-16 3.71644e-16
//ofc35v104 3.64721e-16 4.54719e-16 4.42746e-16
//ifc35v104 3.45796e-16 4.54719e-16 4.48439e-16
obc35v104 3.19653e-16 4.54719e-16 3.91147e-16
ibc35v104 4.01644e-16 4.54719e-16 4.04139e-16
ofc35v104 3.54502e-16 4.54719e-16 3.95183e-16
ifc35v104 4.39285e-16 4.54719e-16 3.98839e-16
ok9o11x12bx13e00 4.6367e-16 3.6443e-14 3.57557e-16
ik9o11x12bx13e00 3.37672e-16 3.31553e-14 3.08167e-16
obrd7x13x6v3 3.64089e-16 8.10891e-16 5.02864e-16
ibrd7x13x6v3 4.30936e-16 8.10891e-16 5.23096e-16
ofrd7x13x6v3 3.61121e-16 8.10891e-16 1.00461e-15
ifrd7x13x6v3 4.21372e-16 8.10891e-16 9.52471e-16
//obcd7x13x6v3 3.66055e-16 8.10891e-16 9.14257e-16
//ibcd7x13x6v3 3.76691e-16 8.10891e-16 7.77577e-16
//ofcd7x13x6v3 3.66698e-16 8.10891e-16 8.38396e-16
//ifcd7x13x6v3 4.56465e-16 8.10891e-16 8.49431e-16
obcd7x13x6v3 4.06302e-16 8.10891e-16 7.82646e-16
ibcd7x13x6v3 4.83874e-16 8.10891e-16 9.1335e-16
ofcd7x13x6v3 4.4497e-16 8.10891e-16 8.58216e-16
ifcd7x13x6v3 3.59301e-16 8.10891e-16 8.89566e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofc72*26' --verify 'ifc72*26' --verify 'ok6o11x7o11' --verify 'ik6o11x7o11' --verify '//obr10x13x18x6' --verify '//ofr10x13x18x6' --verify 'obr10x13x18x6' --verify 'ibr10x13x18x6' --verify 'ofr10x13x18x6' --verify 'ifr10x13x18x6' --verify '//obc10x13x18x6' --verify '//ibc10x13x18x6' --verify '//ofc10x13x18x6' --verify '//ifc10x13x18x6' --verify 'obc10x13x18x6' --verify 'ibc10x13x18x6' --verify 'ofc10x13x18x6' --verify 'ifc10x13x18x6' --verify 'okd18o11*87' --verify 'ikd18o11*87' --verify 'obr7x10x10v9' --verify 'ibr7x10x10v9' --verify 'ofr7x10x10v9' --verify 'ifr7x10x10v9' --verify '//obc7x10x10v9' --verify '//ibc7x10x10v9' --verify '//ofc7x10x10v9' --verify '//ifc7x10x10v9' --verify 'obc7x10x10v9' --verify 'ibc7x10x10v9' --verify 'ofc7x10x10v9' --verify 'ifc7x10x10v9' --verify 'ok5o11x8e01x6h' --verify 'ik5o11x8e01x6h' --verify 'obrd18x13v23' --verify 'ibrd18x13v23' --verify 'ofrd18x13v23' --verify 'ifrd18x13v23' --verify '//obcd18x13v23' --verify '//ibcd18x13v23' --verify '//ofcd18x13v23' --verify '//ifcd18x13v23' --verify 'obcd18x13v23' --verify 'ibcd18x13v23'"
ofc72*26 3.69043e-16 4.34795e-16 6.98022e-16
ifc72*26 3.51336e-16 4.34795e-16 7.83656e-16
ok6o11x7o11 3.82457e-16 1.12689e-15 5.99545e-16
ik6o11x7o11 4.32078e-16 9.01511e-16 4.14569e-16
//obr10x13x18x6 4.26156e-16 5.15709e-15 5.91478e-16
//ofr10x13x18x6 4.21972e-16 2.99831e-15 9.29715e-16
obr10x13x18x6 4.49019e-16 5.15709e-15 5.70186e-16
ibr10x13x18x6 4.257e-16 5.15709e-15 5.21824e-16
ofr10x13x18x6 4.60825e-16 2.75845e-15 8.35829e-16
ifr10x13x18x6 4.55609e-16 2.75845e-15 9.87279e-16
//obc10x13x18x6 4.69946e-16 2.75845e-15 9.073e-16
//ibc10x13x18x6 5.0969e-16 2.75845e-15 8.98937e-16
//ofc10x13x18x6 4.21512e-16 2.75845e-15 9.02547e-16
//ifc10x13x18x6 3.95839e-16 2.99831e-15 9.13224e-16
obc10x13x18x6 4.74769e-16 2.75845e-15 8.52852e-16
ibc10x13x18x6 4.32231e-16 2.75845e-15 9.41642e-16
ofc10x13x18x6 5.28211e-16 2.87838e-15 9.13142e-16
ifc10x13x18x6 4.8242e-16 2.75845e-15 9.11965e-16
okd18o11*87 5.24138e-16 1.01165e-15 4.57225e-16
ikd18o11*87 3.40101e-16 8.99243e-16 3.7424e-16
obr7x10x10v9 4.56317e-16 6.714e-16 4.18922e-16
ibr7x10x10v9 4.14469e-16 5.968e-16 3.89001e-16
ofr7x10x10v9 3.73793e-16 6.714e-16 4.52842e-16
ifr7x10x10v9 3.51512e-16 6.714e-16 4.94454e-16
//obc7x10x10v9 3.43421e-16 7.46e-16 4.15118e-16
//ibc7x10x10v9 4.45818e-16 6.714e-16 4.92145e-16
//ofc7x10x10v9 3.60718e-16 7.46e-16 4.12602e-16
//ifc7x10x10v9 4.21914e-16 6.714e-16 3.69318e-16
obc7x10x10v9 3.54691e-16 6.714e-16 4.42123e-16
ibc7x10x10v9 4.05619e-16 5.968e-16 4.36546e-16
ofc7x10x10v9 4.03534e-16 6.714e-16 4.82156e-16
ifc7x10x10v9 3.67011e-16 5.968e-16 4.53461e-16
ok5o11x8e01x6h 3.53212e-16 6.74437e-15 3.99252e-16
ik5o11x8e01x6h 3.83943e-16 6.88488e-15 3.81867e-16
obrd18x13v23 4.78973e-16 6.05865e-16 5.37947e-16
ibrd18x13v23 3.89875e-16 4.84692e-16 5.00965e-16
ofrd18x13v23 4.02495e-16 4.84692e-16 7.80134e-16
ifrd18x13v23 3.90751e-16 4.84692e-16 7.75602e-16
//obcd18x13v23 4.80895e-16 6.05865e-16 7.87409e-16
//ibcd18x13v23 4.11657e-16 4.84692e-16 7.49681e-16
//ofcd18x13v23 4.12588e-16 5.45278e-16 8.81668e-16
//ifcd18x13v23 3.48989e-16 6.05865e-16 9.04038e-16
obcd18x13v23 3.97871e-16 4.84692e-16 8.30225e-16
ibcd18x13v23 3.77417e-16 6.05865e-16 8.59752e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofcd7x11x6x9v3' --verify 'ifcd7x11x6x9v3' --verify 'okd10e01x13o10v20' --verify 'ikd10e01x13o10v20' --verify '//obr40x13' --verify '//ofr40x13' --verify 'obr40x13' --verify 'ibr40x13' --verify 'ofr40x13' --verify 'ifr40x13' --verify '//obc40x13' --verify '//ibc40x13' --verify '//ofc40x13' --verify '//ifc40x13' --verify 'obc40x13' --verify 'ibc40x13' --verify 'ofc40x13' --verify 'ifc40x13' --verify 'ok14bx13bx2o01v1' --verify 'ik14bx13bx2o01v1' --verify 'obr13x20v18' --verify 'ibr13x20v18' --verify 'ofr13x20v18' --verify 'ifr13x20v18' --verify '//obc13x20v18' --verify '//ibc13x20v18' --verify '//ofc13x20v18' --verify '//ifc13x20v18' --verify 'obc13x20v18' --verify 'ibc13x20v18' --verify 'ofc13x20v18' --verify 'ifc13x20v18' --verify 'okd72o00*20' --verify 'ikd72o00*20' --verify 'obr72*26' --verify 'ibr72*26' --verify 'ofr72*26' --verify 'ifr72*26' --verify '//obc72*26' --verify '//ibc72*26' --verify '//ofc72*26' --verify '//ifc72*26' --verify 'obc72*26' --verify 'ibc72*26'"
ofcd7x11x6x9v3 4.42784e-16 1.17538e-15 8.63676e-16
ifcd7x11x6x9v3 4.23418e-16 1.17538e-15 8.91024e-16
okd10e01x13o10v20 3.82143e-16 2.56462e-15 3.54353e-16
ikd10e01x13o10v20 3.70725e-16 2.68119e-15 3.48512e-16
//obr40x13 3.75917e-16 7.78984e-16 4.77803e-16
//ofr40x13 3.29704e-16 6.23187e-16 8.9793e-16
obr40x13 3.96113e-16 7.78984e-16 5.27026e-16
ibr40x13 3.3416e-16 7.78984e-16 5.55662e-16
ofr40x13 3.46158e-16 6.23187e-16 7.88971e-16
ifr40x13 6.02304e-16 6.23187e-16 8.17548e-16
//obc40x13 5.06002e-16 6.23187e-16 7.89248e-16
//ibc40x13 4.39772e-16 6.23187e-16 8.14637e-16
//ofc40x13 4.19693e-16 6.23187e-16 8.34168e-16
//ifc40x13 3.69244e-16 6.23187e-16 7.94714e-16
obc40x13 4.06557e-16 6.23187e-16 7.6776e-16
ibc40x13 4.04401e-16 6.23187e-16 7.6064e-16
ofc40x13 4.78613e-16 6.23187e-16 7.44991e-16
ifc40x13 4.91363e-16 6.23187e-16 7.78012e-16
ok14bx13bx2o01v1 3.62825e-16 1.20897e-14 4.11768e-16
ik14bx13bx2o01v1 5.33497e-16 1.20897e-14 4.28455e-16
obr13x20v18 4.11783e-16 5.81426e-16 5.78227e-16
ibr13x20v18 4.45846e-16 5.81426e-16 5.27349e-16
ofr13x20v18 3.65248e-16 4.65141e-16 8.56602e-16
ifr13x20v18 4.1452e-16 4.65141e-16 7.42491e-16
//obc13x20v18 3.54831e-16 5.81426e-16 7.8546e-16
//ibc13x20v18 4.09279e-16 5.81426e-16 7.804e-16
//ofc13x20v18 3.67542e-16 4.65141e-16 8.28325e-16
//ifc13x20v18 3.81273e-16 4.65141e-16 8.13877e-16
obc13x20v18 3.71966e-16 5.81426e-16 7.95187e-16
ibc13x20v18 4.23212e-16 4.65141e-16 7.85389e-16
ofc13x20v18 3.86534e-16 5.81426e-16 7.77029e-16
ifc13x20v18 3.66104e-16 5.81426e-16 9.05138e-16
okd72o00*20 5.28325e-16 2.34658e-15 3.76225e-16
ikd72o00*20 5.99488e-16 2.18626e-15 5.6079e-16
obr72*26 3.28468e-16 5.43494e-16 3.19589e-16
ibr72*26 4.02319e-16 4.34795e-16 3.25997e-16
ofr72*26 3.16943e-16 4.34795e-16 6.28031e-16
ifr72*26 2.87173e-16 3.26096e-16 8.014e-16
//obc72*26 3.19567e-16 4.34795e-16 6.82936e-16
//ibc72*26 3.93219e-16 5.43494e-16 7.25179e-16
//ofc72*26 3.26964e-16 5.43494e-16 6.62516e-16
//ifc72*26 3.3485e-16 4.34795e-16 7.60619e-16
obc72*26 3.77248e-16 4.34795e-16 6.28076e-16
ibc72*26 3.59009e-16 4.34795e-16 5.8916e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'okd13hx13e10x13o11v13' --verify 'ikd13hx13e10x13o11v13' --verify 'obr11x12v2' --verify 'ibr11x12v2' --verify 'ofr11x12v2' --verify 'ifr11x12v2' --verify '//obc11x12v2' --verify '//ibc11x12v2' --verify '//ofc11x12v2' --verify '//ifc11x12v2' --verify 'obc11x12v2' --verify 'ibc11x12v2' --verify 'ofc11x12v2' --verify 'ifc11x12v2' --verify 'ok4bx6o00x7hv4' --verify 'ik4bx6o00x7hv4' --verify '//obrd448' --verify '//ibrd448' --verify '//ofrd448' --verify '//ifrd448' --verify 'obrd448' --verify 'ibrd448' --verify 'ofrd448' --verify 'ifrd448' --verify '//obcd448' --verify '//ibcd448' --verify '//ofcd448' --verify '//ifcd448' --verify 'obcd448' --verify 'ibcd448' --verify 'ofcd448' --verify 'ifcd448' --verify 'ok8hx3e11x6o00x6o10*1' --verify 'ik8hx3e11x6o00x6o10*1' --verify 'obrd7x11x6x9v3' --verify 'ibrd7x11x6x9v3' --verify 'ofrd7x11x6x9v3' --verify 'ifrd7x11x6x9v3' --verify '//obcd7x11x6x9v3' --verify '//ibcd7x11x6x9v3' --verify '//ofcd7x11x6x9v3' --verify '//ifcd7x11x6x9v3' --verify 'obcd7x11x6x9v3' --verify 'ibcd7x11x6x9v3'"
okd13hx13e10x13o11v13 5.41474e-16 7.34969e-15 4.80792e-16
ikd13hx13e10x13o11v13 4.46476e-16 1.03012e-14 4.51078e-16
obr11x12v2 3.03197e-16 5.79795e-16 4.48703e-16
ibr11x12v2 3.5411e-16 4.63836e-16 4.26468e-16
ofr11x12v2 3.04677e-16 4.63836e-16 7.96705e-16
ifr11x12v2 3.55559e-16 4.63836e-16 7.32305e-16
//obc11x12v2 4.31472e-16 5.79795e-16 8.03181e-16
//ibc11x12v2 3.43566e-16 4.63836e-16 7.24483e-16
//ofc11x12v2 4.07388e-16 4.63836e-16 9.03016e-16
//ifc11x12v2 3.15099e-16 4.63836e-16 7.77719e-16
obc11x12v2 3.42422e-16 4.63836e-16 8.54636e-16
ibc11x12v2 4.34419e-16 5.79795e-16 9.42489e-16
ofc11x12v2 3.62899e-16 4.63836e-16 7.77821e-16
ifc11x12v2 3.74737e-16 4.63836e-16 8.77055e-16
ok4bx6o00x7hv4 3.50933e-16 2.84694e-15 3.57697e-16
ik4bx6o00x7hv4 3.4238e-16 3.62984e-15 3.99197e-16
//obrd448 3.62994e-16 1.0071e-15 3.73914e-16
//ibrd448 3.19586e-16 8.3925e-16 4.53595e-16
//ofrd448 3.60273e-16 8.3925e-16 6.26115e-16
//ifrd448 4.43814e-16 8.3925e-16 5.73232e-16
obrd448 3.69807e-16 8.3925e-16 4.08105e-16
ibrd448 3.45604e-16 8.3925e-16 4.66684e-16
ofrd448 3.69844e-16 8.3925e-16 6.88669e-16
ifrd448 3.38712e-16 8.3925e-16 7.29235e-16
//obcd448 3.42737e-16 8.3925e-16 6.3955e-16
//ibcd448 4.36853e-16 8.3925e-16 6.08083e-16
//ofcd448 3.57354e-16 8.3925e-16 6.48588e-16
//ifcd448 4.24044e-16 8.3925e-16 6.75893e-16
obcd448 5.03021e-16 8.3925e-16 7.36153e-16
ibcd448 3.77202e-16 8.3925e-16 6.40228e-16
ofcd448 4.42884e-16 1.0071e-15 5.95219e-16
ifcd448 4.06073e-16 8.3925e-16 6.30961e-16
ok8hx3e11x6o00x6o10*1 3.61149e-16 6.30736e-15 4.12086e-16
ik8hx3e11x6o00x6o10*1 4.03922e-16 5.89473e-15 5.28368e-16
obrd7x11x6x9v3 5.32225e-16 1.02845e-15 5.71847e-16
ibrd7x11x6x9v3 4.97506e-16 1.17538e-15 5.42082e-16
ofrd7x11x6x9v3 4.68506e-16 1.17538e-15 8.95728e-16
ifrd7x11x6x9v3 4.22359e-16 1.02845e-15 8.89907e-16
//obcd7x11x6x9v3 4.44977e-16 9.54993e-16 8.13689e-16
//ibcd7x11x6x9v3 4.11908e-16 1.02845e-15 8.1435e-16
//ofcd7x11x6x9v3 3.85484e-16 1.17538e-15 8.47649e-16
//ifcd7x11x6x9v3 3.83477e-16 8.81532e-16 8.17623e-16
obcd7x11x6x9v3 3.89957e-16 1.02845e-15 8.505e-16
ibcd7x11x6x9v3 3.88783e-16 1.17538e-15 8.75817e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofc4x8x7v5' --verify 'ifc4x8x7v5' --verify 'ok28800e01' --verify 'ik28800e01' --verify 'obr6x8x2x5*1' --verify 'ibr6x8x2x5*1' --verify 'ofr6x8x2x5*1' --verify 'ifr6x8x2x5*1' --verify '//obc6x8x2x5*1' --verify '//ibc6x8x2x5*1' --verify '//ofc6x8x2x5*1' --verify '//ifc6x8x2x5*1' --verify 'obc6x8x2x5*1' --verify 'ibc6x8x2x5*1' --verify 'ofc6x8x2x5*1' --verify 'ifc6x8x2x5*1' --verify 'ok90e00x18o00' --verify 'ik90e00x18o00' --verify 'obr9x11x10*2' --verify 'ibr9x11x10*2' --verify 'ofr9x11x10*2' --verify 'ifr9x11x10*2' --verify '//obc9x11x10*2' --verify '//ibc9x11x10*2' --verify '//ofc9x11x10*2' --verify '//ifc9x11x10*2' --verify 'obc9x11x10*2' --verify 'ibc9x11x10*2' --verify 'ofc9x11x10*2' --verify 'ifc9x11x10*2' --verify 'okd9e11x5o11x8b*10' --verify 'ikd9e11x5o11x8b*10' --verify 'obrd9*134' --verify 'ibrd9*134' --verify 'ofrd9*134' --verify 'ifrd9*134' --verify '//obcd9*134' --verify '//ibcd9*134' --verify '//ofcd9*134' --verify '//ifcd9*134' --verify 'obcd9*134' --verify 'ibcd9*134' --verify 'ofcd9*134' --verify 'ifcd9*134'"
ofc4x8x7v5 3.5245e-16 5.69702e-16 4.47042e-16
ifc4x8x7v5 3.2257e-16 4.98489e-16 3.89119e-16
ok28800e01 4.38002e-16 1.13687e-13 4.62368e-16
ik28800e01 4.32009e-16 1.13687e-13 4.70248e-16
obr6x8x2x5*1 4.16325e-16 1.29727e-15 5.69243e-16
ibr6x8x2x5*1 3.75687e-16 1.29727e-15 4.98679e-16
ofr6x8x2x5*1 3.62624e-16 9.72951e-16 8.28843e-16
ifr6x8x2x5*1 3.33687e-16 9.72951e-16 7.96631e-16
//obc6x8x2x5*1 3.65312e-16 9.72951e-16 8.259e-16
//ibc6x8x2x5*1 3.37092e-16 9.72951e-16 8.20034e-16
//ofc6x8x2x5*1 5.45705e-16 9.72951e-16 8.66321e-16
//ifc6x8x2x5*1 3.3664e-16 9.72951e-16 8.56016e-16
obc6x8x2x5*1 3.70023e-16 9.72951e-16 8.56128e-16
ibc6x8x2x5*1 3.37006e-16 9.72951e-16 8.73974e-16
ofc6x8x2x5*1 3.99581e-16 9.72951e-16 7.92374e-16
ifc6x8x2x5*1 3.52396e-16 9.72951e-16 7.52173e-16
ok90e00x18o00 6.24294e-16 3.03016e-14 6.32494e-16
ik90e00x18o00 7.52348e-16 2.58454e-14 6.1998e-16
obr9x11x10*2 3.36116e-16 6.77476e-16 5.07294e-16
ibr9x11x10*2 3.77849e-16 5.08107e-16 5.18824e-16
ofr9x11x10*2 4.24304e-16 5.08107e-16 6.02226e-16
ifr9x11x10*2 3.70606e-16 5.08107e-16 5.90841e-16
//obc9x11x10*2 4.22995e-16 5.08107e-16 5.8095e-16
//ibc9x11x10*2 3.84657e-16 6.77476e-16 6.18312e-16
//ofc9x11x10*2 3.87539e-16 6.77476e-16 5.53738e-16
//ifc9x11x10*2 3.51776e-16 5.08107e-16 5.34705e-16
obc9x11x10*2 4.07241e-16 6.77476e-16 5.89285e-16
ibc9x11x10*2 3.2842e-16 5.08107e-16 5.94135e-16
ofc9x11x10*2 4.11732e-16 5.08107e-16 5.93905e-16
ifc9x11x10*2 4.18172e-16 6.77476e-16 6.00215e-16
okd9e11x5o11x8b*10 4.87666e-16 4.87168e-15 4.69931e-16
ikd9e11x5o11x8b*10 4.19636e-16 5.43021e-15 5.06148e-16
obrd9*134 2.89161e-16 4.47403e-16 4.59244e-16
ibrd9*134 3.62369e-16 4.47403e-16 3.67842e-16
ofrd9*134 3.16652e-16 2.98269e-16 5.16036e-16
ifrd9*134 2.45352e-16 2.98269e-16 4.8313e-16
//obcd9*134 3.89633e-16 2.98269e-16 5.17453e-16
//ibcd9*134 3.64164e-16 4.47403e-16 5.45191e-16
//ofcd9*134 3.77454e-16 2.98269e-16 5.24991e-16
//ifcd9*134 3.97157e-16 2.98269e-16 5.2218e-16
obcd9*134 4.14181e-16 2.98269e-16 5.77189e-16
ibcd9*134 3.02339e-16 4.47403e-16 6.3362e-16
ofcd9*134 3.57394e-16 2.98269e-16 5.09833e-16
ifcd9*134 3.71433e-16 2.98269e-16 6.21934e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofc10x11x12v11' --verify 'ifc10x11x12v11' --verify 'ok11o00x2e00x12hx13e01' --verify 'ik11o00x2e00x12hx13e01' --verify 'obr12*72' --verify 'ibr12*72' --verify 'ofr12*72' --verify 'ifr12*72' --verify '//obc12*72' --verify '//ibc12*72' --verify '//ofc12*72' --verify '//ifc12*72' --verify 'obc12*72' --verify 'ibc12*72' --verify 'ofc12*72' --verify 'ifc12*72' --verify 'ok13e11x24bv7' --verify 'ik13e11x24bv7' --verify '//obr9x8x7x10' --verify '//ofr9x8x7x10' --verify 'obr9x8x7x10' --verify 'ibr9x8x7x10' --verify 'ofr9x8x7x10' --verify 'ifr9x8x7x10' --verify '//obc9x8x7x10' --verify '//ibc9x8x7x10' --verify '//ofc9x8x7x10' --verify '//ifc9x8x7x10' --verify 'obc9x8x7x10' --verify 'ibc9x8x7x10' --verify 'ofc9x8x7x10' --verify 'ifc9x8x7x10' --verify 'ok13o00x8e10x6hx3e00*4' --verify 'ik13o00x8e10x6hx3e00*4' --verify 'obr4x8x7v5' --verify 'ibr4x8x7v5' --verify 'ofr4x8x7v5' --verify 'ifr4x8x7v5' --verify '//obc4x8x7v5' --verify '//ibc4x8x7v5' --verify '//ofc4x8x7v5' --verify '//ifc4x8x7v5' --verify 'obc4x8x7v5' --verify 'ibc4x8x7v5'"
ofc10x11x12v11 3.46108e-16 1.06675e-15 8.53757e-16
ifc10x11x12v11 4.19732e-16 1.06675e-15 8.38509e-16
ok11o00x2e00x12hx13e01 4.61853e-16 3.78586e-14 4.78729e-16
ik11o00x2e00x12hx13e01 4.46811e-16 3.07532e-14 4.85394e-16
obr12*72 2.58407e-16 3.89934e-16 3.47722e-16
ibr12*72 3.19768e-16 3.89934e-16 3.21016e-16
ofr12*72 2.5652e-16 2.59956e-16 7.06923e-16
ifr12*72 2.6013e-16 5.19912e-16 6.69898e-16
//obc12*72 4.30735e-16 3.89934e-16 7.16765e-16
//ibc12*72 3.18419e-16 2.59956e-16 7.4617e-16
//ofc12*72 2.99331e-16 3.89934e-16 8.15886e-16
//ifc12*72 3.1255e-16 2.59956e-16 8.69206e-16
obc12*72 2.57876e-16 3.89934e-16 8.12459e-16
ibc12*72 3.41629e-16 3.89934e-16 8.38032e-16
ofc12*72 3.04545e-16 3.89934e-16 8.52522e-16
ifc12*72 3.08373e-16 2.59956e-16 8.01119e-16
ok13e11x24bv7 4.03167e-16 6.9913e-15 4.9212e-16
ik13e11x24bv7 4.97432e-16 6.16506e-15 4.76234e-16
//obr9x8x7x10 4.21312e-16 1.80155e-15 4.81865e-16
//ofr9x8x7x10 4.11918e-16 1.20104e-15 6.56376e-16
obr9x8x7x10 4.96017e-16 1.80155e-15 5.41902e-16
ibr9x8x7x10 4.06077e-16 1.80155e-15 4.17421e-16
ofr9x8x7x10 4.41898e-16 1.40121e-15 6.57526e-16
ifr9x8x7x10 4.0751e-16 1.20104e-15 6.05216e-16
//obc9x8x7x10 4.33731e-16 1.20104e-15 5.6332e-16
//ibc9x8x7x10 4.3752e-16 1.20104e-15 6.335e-16
//ofc9x8x7x10 4.12288e-16 1.00086e-15 5.81434e-16
//ifc9x8x7x10 3.93395e-16 1.20104e-15 5.80677e-16
obc9x8x7x10 4.60139e-16 1.20104e-15 6.05443e-16
ibc9x8x7x10 4.42555e-16 1.20104e-15 6.34035e-16
ofc9x8x7x10 4.13435e-16 1.40121e-15 5.44597e-16
ifc9x8x7x10 4.31896e-16 1.40121e-15 6.34183e-16
ok13o00x8e10x6hx3e00*4 3.78048e-16 1.13104e-14 3.66898e-16
ik13o00x8e10x6hx3e00*4 3.58592e-16 1.29757e-14 3.65917e-16
obr4x8x7v5 3.08069e-16 4.27276e-16 3.8946e-16
ibr4x8x7v5 2.95293e-16 4.98489e-16 3.36409e-16
ofr4x8x7v5 4.25665e-16 4.27276e-16 3.78838e-16
ifr4x8x7v5 3.7132e-16 4.27276e-16 5.43977e-16
//obc4x8x7v5 3.66921e-16 4.27276e-16 3.91285e-16
//ibc4x8x7v5 3.61485e-16 4.27276e-16 4.02538e-16
//ofc4x8x7v5 4.32958e-16 4.27276e-16 4.23483e-16
//ifc4x8x7v5 3.78526e-16 4.27276e-16 3.62916e-16
obc4x8x7v5 3.7395e-16 4.27276e-16 4.22191e-16
ibc4x8x7v5 3.40556e-16 4.27276e-16 3.95942e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofcd12x8v12' --verify 'ifcd12x8v12' --verify 'ok8o10x8o00*1' --verify 'ik8o10x8o00*1' --verify 'obrd6x10x9x11*2' --verify 'ibrd6x10x9x11*2' --verify 'ofrd6x10x9x11*2' --verify 'ifrd6x10x9x11*2' --verify '//obcd6x10x9x11*2' --verify '//ibcd6x10x9x11*2' --verify '//ofcd6x10x9x11*2' --verify '//ifcd6x10x9x11*2' --verify 'obcd6x10x9x11*2' --verify 'ibcd6x10x9x11*2' --verify 'ofcd6x10x9x11*2' --verify 'ifcd6x10x9x11*2' --verify 'ok11e01x10e10x8bv15' --verify 'ik11e01x10e10x8bv15' --verify '//obr91x10' --verify '//ofr91x10' --verify 'obr91x10' --verify 'ibr91x10' --verify 'ofr91x10' --verify 'ifr91x10' --verify '//obc91x10' --verify '//ibc91x10' --verify '//ofc91x10' --verify '//ifc91x10' --verify 'obc91x10' --verify 'ibc91x10' --verify 'ofc91x10' --verify 'ifc91x10' --verify 'okd10o10x16hv23' --verify 'ikd10o10x16hv23' --verify 'obr10x11x12v11' --verify 'ibr10x11x12v11' --verify 'ofr10x11x12v11' --verify 'ifr10x11x12v11' --verify '//obc10x11x12v11' --verify '//ibc10x11x12v11' --verify '//ofc10x11x12v11' --verify '//ifc10x11x12v11' --verify 'obc10x11x12v11' --verify 'ibc10x11x12v11'"
ofcd12x8v12 3.92706e-16 3.92814e-16 8.7241e-16
ifcd12x8v12 2.94085e-16 3.92814e-16 7.94856e-16
ok8o10x8o00*1 3.93461e-16 1.24009e-15 3.26685e-16
ik8o10x8o00*1 3.99889e-16 1.35282e-15 3.57387e-16
obrd6x10x9x11*2 4.0541e-16 2.62749e-15 5.65516e-16
ibrd6x10x9x11*2 4.3989e-16 2.62749e-15 5.98524e-16
ofrd6x10x9x11*2 4.4522e-16 2.35092e-15 8.64968e-16
ifrd6x10x9x11*2 4.06138e-16 2.35092e-15 8.31443e-16
//obcd6x10x9x11*2 4.35719e-16 2.35092e-15 9.32232e-16
//ibcd6x10x9x11*2 3.89749e-16 2.35092e-15 7.80212e-16
//ofcd6x10x9x11*2 4.17923e-16 2.35092e-15 9.40278e-16
//ifcd6x10x9x11*2 5.17997e-16 2.35092e-15 8.56299e-16
obcd6x10x9x11*2 4.61097e-16 2.35092e-15 8.11971e-16
ibcd6x10x9x11*2 4.10684e-16 2.35092e-15 7.82422e-16
ofcd6x10x9x11*2 3.9704e-16 2.35092e-15 8.44645e-16
ifcd6x10x9x11*2 4.17902e-16 2.35092e-15 8.38307e-16
ok11e01x10e10x8bv15 4.67042e-16 1.24345e-14 4.34728e-16
ik11e01x10e10x8bv15 3.63049e-16 1.21977e-14 3.8769e-16
//obr91x10 4.09226e-16 7.06628e-16 5.68449e-16
//ofr91x10 4.05288e-16 7.06628e-16 7.89902e-16
obr91x10 3.8716e-16 7.06628e-16 5.12548e-16
ibr91x10 3.57217e-16 7.06628e-16 4.76825e-16
ofr91x10 5.13718e-16 5.88857e-16 7.11904e-16
ifr91x10 4.72906e-16 4.71085e-16 8.11706e-16
//obc91x10 3.78024e-16 7.06628e-16 7.78203e-16
//ibc91x10 5.10448e-16 7.06628e-16 6.18049e-16
//ofc91x10 3.81067e-16 8.24399e-16 8.20149e-16
//ifc91x10 4.34168e-16 7.06628e-16 8.03808e-16
obc91x10 3.81374e-16 7.06628e-16 6.95018e-16
ibc91x10 4.66328e-16 7.06628e-16 6.6228e-16
ofc91x10 3.74557e-16 7.06628e-16 6.28815e-16
ifc91x10 4.44614e-16 7.06628e-16 6.57606e-16
okd10o10x16hv23 3.56468e-16 2.2301e-15 3.04703e-16
ikd10o10x16hv23 3.96704e-16 2.49076e-15 3.96465e-16
obr10x11x12v11 4.29389e-16 1.06675e-15 4.60796e-16
ibr10x11x12v11 3.75754e-16 1.06675e-15 4.27401e-16
ofr10x11x12v11 3.84464e-16 1.06675e-15 8.17248e-16
ifr10x11x12v11 3.49419e-16 1.06675e-15 8.13302e-16
//obc10x11x12v11 4.77274e-16 1.06675e-15 8.29592e-16
//ibc10x11x12v11 4.74915e-16 1.06675e-15 8.06024e-16
//ofc10x11x12v11 3.93985e-16 1.06675e-15 8.62479e-16
//ifc10x11x12v11 4.30062e-16 1.06675e-15 9.48223e-16
obc10x11x12v11 4.40371e-16 1.06675e-15 9.00049e-16
ibc10x11x12v11 4.3005e-16 1.06675e-15 9.31847e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'ofcd6x24v13' --verify 'ifcd6x24v13' --verify 'ok12o01*141' --verify 'ik12o01*141' --verify 'obr6v68' --verify 'ibr6v68' --verify 'ofr6v68' --verify 'ifr6v68' --verify '//obc6v68' --verify '//ibc6v68' --verify '//ofc6v68' --verify '//ifc6v68' --verify 'obc6v68' --verify 'ibc6v68' --verify 'ofc6v68' --verify 'ifc6v68' --verify 'ok8o00x6e01x5hx6h' --verify 'ik8o00x6e01x5hx6h' --verify '//obr4x9x7' --verify '//ofr4x9x7' --verify 'obr4x9x7' --verify 'ibr4x9x7' --verify 'ofr4x9x7' --verify 'ifr4x9x7' --verify '//obc4x9x7' --verify '//ibc4x9x7' --verify '//ofc4x9x7' --verify '//ifc4x9x7' --verify 'obc4x9x7' --verify 'ibc4x9x7' --verify 'ofc4x9x7' --verify 'ifc4x9x7' --verify 'ok11o01x11e00x12e10' --verify 'ik11o01x11e00x12e10' --verify 'obrd12x8v12' --verify 'ibrd12x8v12' --verify 'ofrd12x8v12' --verify 'ifrd12x8v12' --verify '//obcd12x8v12' --verify '//ibcd12x8v12' --verify '//ofcd12x8v12' --verify '//ifcd12x8v12' --verify 'obcd12x8v12' --verify 'ibcd12x8v12'"
ofcd6x24v13 3.05468e-16 3.58687e-16 8.22492e-16
ifcd6x24v13 3.56539e-16 3.98542e-16 9.17121e-16
ok12o01*141 3.83555e-16 6.76647e-16 3.41321e-16
ik12o01*141 3.72974e-16 6.76647e-16 3.21868e-16
obr6v68 2.05209e-16 3.6793e-16 3.38581e-16
ibr6v68 3.58461e-16 3.6793e-16 3.48133e-16
ofr6v68 2.1731e-16 1.83965e-16 7.32713e-16
ifr6v68 3.06106e-16 1.83965e-16 6.73571e-16
//obc6v68 3.24729e-16 1.83965e-16 7.99806e-16
//ibc6v68 2.69999e-16 1.83965e-16 7.72797e-16
//ofc6v68 3.18774e-16 1.83965e-16 8.34883e-16
//ifc6v68 2.69396e-16 1.83965e-16 7.97239e-16
obc6v68 3.15725e-16 1.83965e-16 8.06855e-16
ibc6v68 3.27883e-16 1.83965e-16 7.78558e-16
ofc6v68 2.85073e-16 1.83965e-16 8.34239e-16
ifc6v68 3.22195e-16 1.83965e-16 8.73671e-16
ok8o00x6e01x5hx6h 4.01777e-16 2.82401e-14 3.99504e-16
ik8o00x6e01x5hx6h 4.88314e-16 3.20167e-14 4.49428e-16
//obr4x9x7 3.3289e-16 1.0071e-15 4.95992e-16
//ofr4x9x7 4.27961e-16 5.595e-16 5.82351e-16
obr4x9x7 3.47986e-16 5.595e-16 5.11352e-16
ibr4x9x7 3.44108e-16 5.595e-16 4.26844e-16
ofr4x9x7 3.75843e-16 5.595e-16 5.53167e-16
ifr4x9x7 3.56825e-16 5.595e-16 6.4888e-16
//obc4x9x7 3.36395e-16 5.595e-16 5.49854e-16
//ibc4x9x7 3.68228e-16 7.833e-16 4.94356e-16
//ofc4x9x7 3.163e-16 6.714e-16 6.00747e-16
//ifc4x9x7 4.16572e-16 5.595e-16 5.70913e-16
obc4x9x7 3.25675e-16 6.714e-16 6.02158e-16
ibc4x9x7 3.70555e-16 5.595e-16 5.97288e-16
ofc4x9x7 3.79458e-16 5.595e-16 5.87348e-16
ifc4x9x7 4.80758e-16 7.833e-16 6.12692e-16
ok11o01x11e00x12e10 3.39221e-16 2.12053e-14 5.06514e-16
ik11o01x11e00x12e10 4.39601e-16 1.55986e-14 4.16686e-16
obrd12x8v12 3.23952e-16 3.92814e-16 5.02424e-16
ibrd12x8v12 2.7024e-16 5.89221e-16 4.36344e-16
ofrd12x8v12 2.89638e-16 3.92814e-16 7.54759e-16
ifrd12x8v12 2.88096e-16 3.92814e-16 8.5676e-16
//obcd12x8v12 3.09945e-16 3.92814e-16 7.59914e-16
//ibcd12x8v12 4.24241e-16 3.92814e-16 8.67034e-16
//ofcd12x8v12 4.1376e-16 3.92814e-16 8.59548e-16
//ifcd12x8v12 4.16474e-16 3.92814e-16 8.56998e-16
obcd12x8v12 3.4446e-16 3.92814e-16 7.24919e-16
ibcd12x8v12 3.34534e-16 3.92814e-16 9.3568e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'obcd16*120' --verify 'ibcd16*120' --verify 'ofcd16*120' --verify 'ifcd16*120' --verify 'ok11e00x10o01x7o10' --verify 'ik11e00x10o01x7o10' --verify 'obr8x2x9x13*2' --verify 'ibr8x2x9x13*2' --verify 'ofr8x2x9x13*2' --verify 'ifr8x2x9x13*2' --verify '//obc8x2x9x13*2' --verify '//ibc8x2x9x13*2' --verify '//ofc8x2x9x13*2' --verify '//ifc8x2x9x13*2' --verify 'obc8x2x9x13*2' --verify 'ibc8x2x9x13*2' --verify 'ofc8x2x9x13*2' --verify 'ifc8x2x9x13*2' --verify 'ok7bx4e00x4o10*6' --verify 'ik7bx4e00x4o10*6' --verify 'obr6x12x5*5' --verify 'ibr6x12x5*5' --verify 'ofr6x12x5*5' --verify 'ifr6x12x5*5' --verify '//obc6x12x5*5' --verify '//ibc6x12x5*5' --verify '//ofc6x12x5*5' --verify '//ifc6x12x5*5' --verify 'obc6x12x5*5' --verify 'ibc6x12x5*5' --verify 'ofc6x12x5*5' --verify 'ifc6x12x5*5' --verify 'ok10o01x14o01x6e00*7' --verify 'ik10o01x14o01x6e00*7' --verify 'obrd6x24v13' --verify 'ibrd6x24v13' --verify 'ofrd6x24v13' --verify 'ifrd6x24v13' --verify '//obcd6x24v13' --verify '//ibcd6x24v13' --verify '//ofcd6x24v13' --verify '//ifcd6x24v13' --verify 'obcd6x24v13' --verify 'ibcd6x24v13'"
obcd16*120 3.3096e-16 3.35842e-16 6.18891e-16
ibcd16*120 2.94164e-16 3.35842e-16 6.33732e-16
ofcd16*120 3.45243e-16 3.35842e-16 7.16575e-16
ifcd16*120 3.35421e-16 3.35842e-16 7.4125e-16
ok11e00x10o01x7o10 3.63066e-16 1.02852e-14 4.08374e-16
ik11e00x10o01x7o10 4.26268e-16 7.194e-15 4.11301e-16
obr8x2x9x13*2 5.39607e-16 7.39009e-16 5.55296e-16
ibr8x2x9x13*2 4.92917e-16 7.39009e-16 5.15572e-16
ofr8x2x9x13*2 3.68555e-16 6.15841e-16 9.40919e-16
ifr8x2x9x13*2 4.12805e-16 8.62177e-16 8.93371e-16
//obc8x2x9x13*2 4.56133e-16 6.15841e-16 8.35724e-16
//ibc8x2x9x13*2 4.51465e-16 6.15841e-16 7.54686e-16
//ofc8x2x9x13*2 4.18259e-16 7.39009e-16 7.77037e-16
//ifc8x2x9x13*2 4.31558e-16 6.15841e-16 7.9684e-16
obc8x2x9x13*2 4.65437e-16 7.39009e-16 7.4908e-16
ibc8x2x9x13*2 4.26847e-16 6.15841e-16 8.38734e-16
ofc8x2x9x13*2 3.78715e-16 6.15841e-16 8.46493e-16
ifc8x2x9x13*2 4.32594e-16 6.15841e-16 9.15986e-16
ok7bx4e00x4o10*6 3.8979e-16 4.7277e-15 2.5838e-16
ik7bx4e00x4o10*6 2.95998e-16 5.89343e-15 2.38985e-16
obr6x12x5*5 4.49376e-16 6.7408e-16 5.19297e-16
ibr6x12x5*5 3.68452e-16 5.8982e-16 5.73238e-16
ofr6x12x5*5 4.14766e-16 5.8982e-16 9.5819e-16
ifr6x12x5*5 3.73262e-16 5.8982e-16 8.85253e-16
//obc6x12x5*5 4.09625e-16 5.8982e-16 8.71485e-16
//ibc6x12x5*5 3.59487e-16 5.8982e-16 8.16057e-16
//ofc6x12x5*5 3.12396e-16 5.8982e-16 8.196e-16
//ifc6x12x5*5 4.27681e-16 5.8982e-16 8.67887e-16
obc6x12x5*5 3.27365e-16 5.8982e-16 7.9767e-16
ibc6x12x5*5 3.38697e-16 6.7408e-16 9.20935e-16
ofc6x12x5*5 3.60286e-16 6.7408e-16 8.07801e-16
ifc6x12x5*5 3.63181e-16 6.7408e-16 8.12336e-16
ok10o01x14o01x6e00*7 4.38017e-16 8.53229e-15 4.24254e-16
ik10o01x14o01x6e00*7 4.37501e-16 8.66157e-15 3.67308e-16
obrd6x24v13 3.79183e-16 4.7825e-16 5.13758e-16
ibrd6x24v13 3.43678e-16 6.37667e-16 5.2781e-16
ofrd6x24v13 3.88108e-16 3.98542e-16 8.70641e-16
ifrd6x24v13 3.12712e-16 4.18469e-16 8.52356e-16
//obcd6x24v13 3.34675e-16 4.7825e-16 8.54651e-16
//ibcd6x24v13 3.42407e-16 4.7825e-16 8.60003e-16
//ofcd6x24v13 3.19801e-16 3.58687e-16 8.59719e-16
//ifcd6x24v13 3.34378e-16 3.98542e-16 9.08442e-16
obcd6x24v13 3.24658e-16 4.7825e-16 8.78279e-16
ibcd6x24v13 3.12086e-16 4.7825e-16 9.0057e-16
Executing "/home/guest06/practice/fftw-3.3.8/tests/bench --verbose=1   --verify 'okd30o11x24e11' --verify 'ikd30o11x24e11' --verify 'obr8x24*8' --verify 'ibr8x24*8' --verify 'ofr8x24*8' --verify 'ifr8x24*8' --verify '//obc8x24*8' --verify '//ibc8x24*8' --verify '//ofc8x24*8' --verify '//ifc8x24*8' --verify 'obc8x24*8' --verify 'ibc8x24*8' --verify 'ofc8x24*8' --verify 'ifc8x24*8' --verify 'ok10o00x15e00x13o00*1' --verify 'ik10o00x15e00x13o00*1' --verify 'obr9x8x5v3' --verify 'ibr9x8x5v3' --verify 'ofr9x8x5v3' --verify 'ifr9x8x5v3' --verify '//obc9x8x5v3' --verify '//ibc9x8x5v3' --verify '//ofc9x8x5v3' --verify '//ifc9x8x5v3' --verify 'obc9x8x5v3' --verify 'ibc9x8x5v3' --verify 'ofc9x8x5v3' --verify 'ifc9x8x5v3' --verify 'okd32e10*26' --verify 'ikd32e10*26' --verify 'obrd16*120' --verify 'ibrd16*120' --verify 'ofrd16*120' --verify 'ifrd16*120' --verify '//obcd16*120' --verify '//ibcd16*120' --verify '//ofcd16*120' --verify '//ifcd16*120'"
okd30o11x24e11 4.63349e-16 6.55607e-15 5.62099e-16
ikd30o11x24e11 4.71337e-16 6.22271e-15 5.24784e-16
obr8x24*8 3.15919e-16 4.32667e-16 3.99259e-16
ibr8x24*8 3.69788e-16 4.32667e-16 3.58754e-16
ofr8x24*8 2.74857e-16 3.60556e-16 8.09551e-16
ifr8x24*8 2.94001e-16 5.76889e-16 8.35627e-16
//obc8x24*8 3.84826e-16 4.32667e-16 8.59823e-16
//ibc8x24*8 3.62036e-16 4.32667e-16 8.14927e-16
//ofc8x24*8 3.13645e-16 4.32667e-16 9.07482e-16
//ifc8x24*8 3.31631e-16 4.32667e-16 8.53135e-16
obc8x24*8 3.74213e-16 4.32667e-16 9.3855e-16
ibc8x24*8 3.46284e-16 4.32667e-16 8.40149e-16
ofc8x24*8 3.74904e-16 4.32667e-16 8.25394e-16
ifc8x24*8 4.16188e-16 4.32667e-16 8.65613e-16
ok10o00x15e00x13o00*1 3.94211e-16 1.72172e-14 4.02573e-16
ik10o00x15e00x13o00*1 4.31769e-16 1.87314e-14 4.60742e-16
obr9x8x5v3 3.51999e-16 6.24148e-16 4.39426e-16
ibr9x8x5v3 3.92578e-16 5.61733e-16 4.20511e-16
ofr9x8x5v3 3.35031e-16 4.99319e-16 6.54669e-16
ifr9x8x5v3 3.48672e-16 4.99319e-16 6.01699e-16
//obc9x8x5v3 3.93055e-16 4.99319e-16 5.55301e-16
//ibc9x8x5v3 4.28723e-16 6.24148e-16 6.26589e-16
//ofc9x8x5v3 4.03397e-16 4.99319e-16 5.20716e-16
//ifc9x8x5v3 3.58421e-16 4.99319e-16 5.57333e-16
obc9x8x5v3 3.78063e-16 6.24148e-16 5.71179e-16
ibc9x8x5v3 3.59538e-16 4.99319e-16 6.59461e-16
ofc9x8x5v3 3.60296e-16 4.99319e-16 5.82816e-16
ifc9x8x5v3 4.2248e-16 6.24148e-16 6.45911e-16
okd32e10*26 4.02348e-16 9.22339e-16 3.88948e-16
ikd32e10*26 2.81094e-16 1.90232e-15 3.33818e-16
obrd16*120 3.51565e-16 3.35842e-16 3.5012e-16
ibrd16*120 2.99692e-16 3.35842e-16 3.70739e-16
ofrd16*120 3.33666e-16 3.35842e-16 7.04829e-16
ifrd16*120 2.82233e-16 3.35842e-16 7.60918e-16
//obcd16*120 3.22191e-16 3.35842e-16 7.94092e-16
//ibcd16*120 3.29977e-16 3.35842e-16 6.50476e-16
//ofcd16*120 3.42437e-16 3.35842e-16 6.67713e-16
//ifcd16*120 3.14985e-16 3.35842e-16 7.29749e-16
--------------------------------------------------------------
         FFTW transforms passed basic tests!
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

=======================================




----------------------------------------------------
----------------------------------------------------
----------------------------------------------------
