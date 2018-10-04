! The Ground State Calculation
subroutine GS(N, V, L, E, PHI)
  implicit none
  integer, intent(in) :: N          ! Size of Discretized System
  real(8), intent(in) :: V(1:N)     ! External Potential Field
  real(8), intent(in) :: L          ! Length of Computational Domain
  real(8), intent(out) :: E         ! [Result] GS Eigenenergy
  complex(8), intent(out) :: PHI(1:N)  ! [Result] GS Wavefunction
  
  complex(8) :: H(1:N, 1:N)         ! Hamiltonian Matrix
  
  integer :: k
  complex(8) :: phi_tmp(1:N), hphi_tmp(1:N)
  
  ! Compose Hamitonian Matrix
  do k=1, N
    phi_tmp(1:N) = 0d0
    phi_tmp(k) = 1d0
    
    !! Please comment out after implementation of HPSI:
    ! call HPHI(N, V, 0d0, phi_tmp, L, hphi_tmp)
    
    H(:, k) = hphi_tmp(:)
  end do
  
  !! Please comment out after implementation of EIGEN:
  ! call EIGEN(N, H, E, PHI)
  
  return
end subroutine GS
