subroutine EIGEN_KEP(N, H, E, V)
  USE mod_kep
  IMPLICIT NONE
  integer, intent(in)     :: N
  complex(8), intent(in)  :: H(N, N)
  real(8), intent(out)    :: E        ! i-th eigenvalue
  complex(8), intent(out) :: V(N)     ! i-th eigenvector


  integer :: i, j, k

  INCLUDE 'kep_struct.h'
  type(kep_struct) :: kep_io



  kep_io%k = 2

  !---set parameters for kep----------------------------------------------
  !
  kep_io%iprm(1) =1  ! stopping criterion for bisection
                      ! (=maximum number of eigenpairs computed together)
  kep_io%iprm(2) =10  ! 10**-iprm(2)=tolerance for relative residual 2-norm
  kep_io%iprm(3) =10  ! 10**-iprm(3)=tolerance for relative difference 2-norm
  kep_io%iprm(11)=30  ! maximum iteration count for lanczos
  kep_io%iprm(12)=10  ! maximum iteration count for bisection
  kep_io%iprm(13)=200 ! maximum iteration count for shift-and-invert lanczos
  !
  kep_io%iprm(21)=1   ! if iprm(21) > 0, print details of computation to 
  kep_io%iprm(22)=0   ! if iprm(22) =< 0, output only the k-th eigenpair.
                      ! otherwise, output all computed eigenpairs

  kep_io%n=N             ! matrix size
  kep_io%nz_a=N*N        ! number of non-zero elements of a
  allocate(kep_io%indx_a(kep_io%nz_a),&
      &    kep_io%jndx_a(kep_io%nz_a),&
      &    kep_io%rval_a(kep_io%nz_a))

  k = 1
  do i = 1, N
    do j = 1, N
      kep_io%indx_a(k) = i       ! row index of a
      kep_io%jndx_a(k) = j       ! column index of a
      kep_io%rval_a(k) = real(H(i, j)) ! value of a
      k = k + 1
    end do
  end do

  kep_io%nz_b=n        ! number of non-zero elements of b
  allocate(kep_io%indx_b(kep_io%nz_b),&
      &    kep_io%jndx_b(kep_io%nz_b),&
      &    kep_io%rval_b(kep_io%nz_b))

  k = 1
  do i = 1, n
      kep_io%indx_b(k) = i       ! row index of a
      kep_io%jndx_b(k) = i       ! column index of a
      kep_io%rval_a(k) = 1d0 ! value of a
      k = k + 1
  end do

  call kep(kep_io)

  E = kep_io%kval
  V = kep_io%kvec

  deallocate(kep_io%indx_a,kep_io%jndx_a,kep_io%rval_a)
  deallocate(kep_io%indx_b,kep_io%jndx_b,kep_io%rval_b)
  
  return
end subroutine
