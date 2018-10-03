subroutine SETV(N,V)
  implicit none

  integer,intent(in) :: N
  real(8) :: V(1:N)
  integer :: i

  do i=1,N
    V(i)=-0.3d0*((1.d0+tanh(dble(i)-dble(N+1-6)/2.d0))*  &
                 (1.d0-tanh(dble(i)-dble(N+1+6)/2.d0)))
  end do

end subroutine SETV
