program main
  implicit none
  integer :: N          ! Size of Discretized System
  real(8),allocatable :: V(:)     ! External Potential Field
  real(8) :: L          ! Length of Computational Domain
  real(8) :: E          ! Eigenenergy
  real(8),allocatable :: PHI(:)  ! Wavefunction

  N=64
  L=32.d0

  allocate(V(1:N))
  allocate(PHI(1:N))

  call SETV(N, V)

  call GS(N, V, L, E, PHI)
  call RT(N, V, L, E, PHI)

  deallocate(V)
  deallocate(PHI)

end program
