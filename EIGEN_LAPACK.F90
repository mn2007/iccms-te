subroutine EIGEN(N, H, E, V)
  implicit none
  integer, intent(in)     :: N
  complex(8), intent(in)  :: H(N, N)
  real(8), intent(out)    :: E        ! i-th eigenvalue
  complex(8), intent(out) :: V(N)     ! i-th eigenvector
  
  integer, parameter      :: i = 1
  
  complex(8) :: work(6*N)
  real(8) :: w(N), rwork(3*N-2)
  integer :: info
  
  call ZHEEV('V','U',N, H, N, W, work, 6*N, rwork, info)
  
  E = W(1)
  V(1:N) = H(1:N, 1)
  
  return
end subroutine EIGEN


