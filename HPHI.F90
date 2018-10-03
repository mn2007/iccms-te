subroutine HPHI(N,V,A,phi,L,hphi)
  implicit none
  integer, intent(in) :: N          ! Size of Discretized System
  real(8), intent(in) :: V(1:N)     ! External Potential Field
  real(8), intent(in) :: A          ! Length of Computational Domain
  real(8), intent(in) :: phi(1:N)   ! Wavefunction
  real(8), intent(in) :: L          ! Length of Computational Domain
  real(8), intent(out) :: hphi(1:N)  ! Wavefunction
  complex(8),parameter :: zi=(0.d0,1.d0)

!  hphi(1:N)=(-k**2/2.d0-zi*(k+A)*phi(1:N)+FFT

end subroutine HPHI
