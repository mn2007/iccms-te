subroutine EIGEN_EK(N, H, E, V)
  
   use ek_matrix_io_m, only : ek_sparse_mat_t
   use ek_distribute_matrix_m, only : convert_sparse_matrix_to_dense
   use ek_eigenpairs_types_m, only : ek_eigenpairs_types_union_t

  
  implicit none
  integer, intent(in)     :: N
  complex(8), intent(in)  :: H(N, N)
  real(8), intent(out)    :: E        ! i-th eigenvalue
  complex(8), intent(out) :: V(N)     ! i-th eigenvector
  
  integer, parameter      :: i = 1   type(ek_sparse_mat_t), target, intent(in) :: mat
   type(ek_eigenpairs_types_union_t), intent(out) :: eigenpairs



   integer :: lda, lwork, info

   double precision, allocatable :: work(:)

   eigenpairs%type_number = 1
    eigenpairs%local%vectors = H

   lda = n
   lwork = n * n  ! Note: (lwork > 3*n-1 ) should be satisfied.

   allocate(eigenpairs%local%values(n), work(lwork))

   call dsyev("V", "U", n, eigenpairs%local%vectors, lda, &
        eigenpairs%local%values, work, lwork, info)
        
    V =  eigenpairs%local%vectors(:, i)
    return
end subroutine EIGEN_EK




