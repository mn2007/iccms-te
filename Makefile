FC=mpif90

LIBS=-L/home/guest17/opt/openfft1.2/lib/ \
	-L/home/guest17/opt/fftw-3.3.4/lib -mkl=parallel
INCLUDES=-I/home/guest17/opt/openfft1.2/include/ \
	-I/home/guest17/opt/fftw-3.3.4/include -mkl=parallel
	
FFLAGS=-O3
TARGET=iccms-te

#$(TARGET): SETV.o FFT.o HPHI.o RT.o EIGEN.o GS.o MAIN.o
$(TARGET): SETV.o HPHI.o RT.o EIGEN.o GS.o MAIN.o
	$(FC) $^ -o $@ $(FFLAGS) $(LIBS) 

GS.o: GS.F90

RT.o: RT.F90

HPHI.o: HPHI.F90

#FFT.o: FFT.F90

EIGEN.o: EIGEN_LAPACK.F90
	
SETV.o: SETV.F90

MAIN.o: MAIN.F90






.PHONY: clean all

all: $(TARGET)
	
clean:
	rm *.o $(TARGET)

%.o: %.F90
	$(FC) $< -c -o $@ $(FFLAGS) $(INCLUDES)
