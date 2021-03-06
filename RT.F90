subroutine RT(N,V,L,E,phi)
  implicit none
  integer, intent(in) :: N          ! Size of Discretized System
  real(8), intent(in) :: V(1:N)     ! External Potential Field
  real(8), intent(in) :: L          ! Length of Computational Domain
  real(8), intent(in) :: E          ! Eigenenergy
  complex(8), intent(inout) :: phi(1:N)   ! Wavefunction
  integer,parameter :: m_hamil=4
  integer :: ntime
  real(8) :: dt
  real(8) :: A     ! Perturbation
  complex(8) :: zc(1:m_hamil)
  integer :: it
  integer :: interval

  dt=5.d-2
  ntime=5000
  A=1.d-1
  interval=100

  call taylor_coefficient(zc,dt)

  call output_phi(N,L,phi,0,interval)

  do it=1,ntime
    if(mod(it,interval)==0) write(*,*) "it=",it
    call taylor(zc,N,V,A,L,E,phi)
    if(mod(it,interval)==0) call output_phi(N,L,phi,it,interval)
    if(it<=10)then
      if(sum(abs(phi(:))**2)<1.d8)then
        write(*,*) it,"ok"
      else
        write(*,*) it,"ng"
      end if
    end if
  end do

end subroutine

subroutine taylor_coefficient(zc,dt)
  implicit none
  integer,parameter :: m_hamil=4
  real(8),intent(in) :: dt
  complex(8),intent(out) :: zc(1:m_hamil)
  integer :: m,mm
  complex(8),parameter :: zi=(0.d0,1.d0)

  do m=1,m_hamil
    zc(m)=(-zi*dt)**m
    do mm=1,m
      zc(m)=zc(m)/dble(mm)
    end do
  end do

end subroutine taylor_coefficient

subroutine taylor(zc,N,V,A,L,E,phi)
  implicit none
  integer,parameter :: m_hamil=4
  complex(8),intent(inout) :: phi(1:N)
  complex(8),intent(in) :: zc(1:m_hamil)
  integer, intent(in) :: N            ! Size of Discretized System
  real(8), intent(in) :: V(1:N)       ! External Potential Field
  real(8), intent(in) :: A            ! Perturbation
  real(8), intent(in) :: L            ! Length of Computational Domain
  real(8), intent(in) :: E            ! GS Eigenenergy
  integer :: m
  complex(8) :: phi_tmp(1:N)
  complex(8) :: phi_out(1:N)
  complex(8) :: hphi_out(1:N)

  phi_tmp(1:N)=phi(1:N)
  phi_out(1:N)=phi(1:N)
  do m=1,4
    call HPHI(N,V,A,phi_tmp,L,hphi_out)
    phi_out(1:N)=phi_out(1:N)+zc(n)*hphi_out(1:N)
    phi_tmp(1:N)=hphi_out(1:N)
  end do
  phi(1:N)=phi_out(1:N)
  
end subroutine taylor

subroutine output_phi(N,L,phi,it,interval)
  implicit none
  integer, intent(in) :: N            ! Size of Discretized System
  real(8), intent(in) :: L          ! Length of Computational Domain
  complex(8),intent(in) :: phi(1:N)
  integer, intent(in) :: it
  integer, intent(in) :: interval
  complex(8) :: phi_tmp(1:N)
  character(8)  :: filenumber_data
  character(30) :: suffix
  character(30) :: filename
  integer :: i

  suffix='movie/phi'
  write(filenumber_data, '(i2.2)') it/interval
  filename = trim(suffix)//"."//adjustl(filenumber_data)
  open(10,file=filename)

  call IFFT(N, phi, phi_tmp)

  do i=1,N
    write(10,*) i*L/dble(N), abs(phi_tmp(i))**2
  end do

  close(10)
 
end subroutine
