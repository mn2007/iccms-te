subroutine fft(N,F,G)

implicit none
include 'fftw3.f'
integer,intent(in) :: N
complex(8),intent(in) :: F(N)
complex(8),intent(out) :: G(N)

real(8) :: plan
integer :: i
real(8) :: pi = 3.14159265359
real(8) :: norm

call dfftw_plan_dft_1d(plan,N,F,G,FFTW_FORWARD,FFTW_ESTIMATE)
call dfftw_execute(plan)
call dfftw_destroy_plan(plan)

norm=0.d0
do i=1,N
norm=norm+abs(G(i))**2
enddo
norm=sqrt(norm)

G=G/norm

end subroutine fft
