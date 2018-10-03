FC=ifort
LIBS=
INCLUDES=
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
