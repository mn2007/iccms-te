FC=mpif90

LIBS=/home/guest17/opt/openfft1.2/lib/ \
	/home/guest17/opt/fftw-3.3.4/lib
INCLUDES=/home/guest17/opt/openfft1.2/include/ \
	/home/guest17/opt/fftw-3.3.4/include
	
FFLAGS=-O3
TARGET=iccms-te

$(TARGET): FFT.o HPSI.o RT.o EIGEN.o GS.o main.o
	$(FC) $^ -o $@ $(FFLAGS) $(LIBS) 

GS.o: GS.f90

RT.o: RT.f90

HPSI.o: HPSI.f90

FFT.o: FFT.f90

EIGEN.o: EIGEN.f90
	
main.o: main.f90






.PHONY: clean all

all: $(TARGET)
	
clean:
	rm *.o $(TARGET)

%.o: %.f90
	$(FC) $< -c -o $@ $(FFLAGS)
