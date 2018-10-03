subroutine HPHI(N,V,A,phi,L,hphi_out)
  implicit none
  integer, intent(in) :: N          ! Size of Discretized System
  real(8), intent(in) :: V(1:N)     ! External Potential Field
  real(8), intent(in) :: A          ! Pertuabation Field
  real(8), intent(in) :: phi(1:N)   ! Wavefunction
  real(8), intent(in) :: L          ! Length of Computational Domain
  real(8), intent(out) :: hphi_out(1:N)  ! Wavefunction
  real(8), parameter :: pi = 3.141592653589793
  complex(8), parameter :: zi=(0.d0,1.d0)

  integer :: i
  real(8) :: ki
  
  complex(8) :: tphi(1:N) ! Kinetic Term
  complex(8) :: aphi(1:N) ! Pertuabation Term
  complex(8) :: vphi(1:N) ! Local Potential Term
  complex(8) :: phi_rtmp(1:N)
  complex(8) :: vphi_rtmp(1:N)
  
  call IFFT(N, phi)

  do i = 1, N
    if i <= N / 2 then
      ki = (2d0 * pi / L) * (i - 1)
    else
      ki = (-2d0 * pi / L) * (N - i + 1)
    end if
    
    tphi(i) = - ki**2 * 0.5d0 * phi(i)
    aphi(i) = zi * ki * A * phi(i)
  end do
  
  call IFFT(N, phi, phi_rtmp)
  vphi_rtmp = v * phi_rtmp
  call FFT(N, vphi_rtmp, vphi)
    
  hphi_out = tphi + vphi + aphi
  !  hphi(1:N)=(-k**2/2.d0-zi*(k+A)*phi(1:N)+FFT
  return
end subroutine HPHI
