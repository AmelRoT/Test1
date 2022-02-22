program dummyProgram
    
    implicit none
    integer,dimension(10) :: mat1 
    integer :: i 

    print *,"Simple Print : "
    do i = 1,10
        mat1(i) = i 
        print *,"[Dummy value is] : " ,mat1(i)
    end do  

end program 