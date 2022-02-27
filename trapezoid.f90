program TrapezoidalMethod
    
    implicit none

    !------------Defining the variables ---------! 
    real :: A,sumTotal = 0
    integer :: i,n 
    real,allocatable, dimension(:) :: x1 
    real :: a1,b1,delX !integral bounds 
    

    !------------End of defining the variables ---------! 
    n = 300 !number of steps 
    allocate(x1(n)) 

    ! Solving this type of Integral 
    !             a1  
    !            ___
    !           /   '
    !           |
    !           | 
    !           |  f(x) dx 
    !           |
    !        ___/
    !          b1   
    !          
    !
    a1 = -10
    b1 = 10
    delX = (b1-a1)/n
    call calculateLength(b1,a1,n,x1,delX)   


    do i  = 0, (n)

        call calculateArea(A,n,i,x1,delX)
        sumTotal = sumTotal+A
    end do 

    print *, "Area of the given integral is :  ", sumTotal

end program 



subroutine calculateArea(A,n,i,x1,delX)
    real :: f,A,delX
    integer :: n,i
    real, dimension(n) :: x1 

    if((i == 0) .or.(i == (n))) then 
        A = f(x1(i))*delX/2
    else 

        A = f(x1(i))*delX

    end if 

end subroutine 


subroutine calculateLength(b1,a1,n,x1,delX)
    integer :: j,n 
    real :: a1,b1,delX
    real, dimension(n) :: x1 

    do j  = 0,(n) 

        if(j==0) then 
            x1(j) = a1

        else if (j.NE.0 .or. j.NE.(n) ) then 
            x1(j) = x1(j-1)+delX
        else 
            x1(j) = b1
        end if 

    end do  


end subroutine

real function f(x)
    implicit none 
    real :: x 
    f = exp(-(x**2))
    
end function




