program goldbach
    implicit none
    integer :: b
    logical :: bool, d
    integer :: q, r, l
    
    b = addPrime()
    
contains
    
    ! Function to check if a number is prime
    logical function check_p(val)
        integer(kind=8), intent(in) :: val
        integer :: fact
        
        check_p = d
        fact = 3
        
        if (MOD(val, 2) == 0) then
            check_p = .False.
        else
            do
                if ((fact * fact > val) .OR. MOD(val, fact) == 0) exit
                fact = fact + 2
            end do
            
            if (fact * fact > val) then
                check_p = .True.
            else
                check_p = .False.
            end if
        end if
    end function check_p
    
    ! Function to find the next prime number
    integer(kind=8) function NextPrime(val)
        integer(kind=8), intent(in) :: val
        integer(kind=8) :: sec
        
        if (val == 1) then
            sec = 2
        else if (val == 2) then
            sec = 3
        else
            sec = val
            do
                sec = sec + 1
                bool = check_p(sec)
                if (bool == .True.) exit
            end do
        end if
        
        NextPrime = sec
    end function NextPrime
    
    ! Function to find and print prime pairs using Goldbach's Conjecture
    integer function addPrime()
        integer(kind=8) :: a, p, r, q, l, j
        real, dimension(:), allocatable :: x
        
        allocate(x(10000))
        j = 1
        p = 5
        
        outerloop: do while (j <= 10000)
            q = NextPrime(p)
            
            innerloop: do
                a = q - p
                r = q + a
                
                if (check_p(r)) then
                    print *, p ! Print the first prime number of the pair
                    a = q - p
                    x(j) = q - p
                    p = NextPrime(p) ! Update the first prime number
                    exit innerloop
                else
                    q = NextPrime(q) ! Increment the second prime number
                end if
            end do innerloop
            
            j = j + 1
        end do outerloop
        
        deallocate(x) ! Deallocate the array
        addPrime = l
    end function addPrime
    
end program goldbach
