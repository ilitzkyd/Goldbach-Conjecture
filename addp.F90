        program goldbach
        implicit none 
        integer::b
        logical:: bool,d
        integer ::q,r,l
        b=addPrime()
        contains 
        logical function check_p(val)
        integer(kind=8),intent(in) :: val
        integer::fact
        check_p=d
        fact=3
                if(MOD(val,2)==0) THEN 
                        check_p=.False.
                else 
                        do  
                               
                                if ((fact*fact>val) .OR. MOD(val,fact)==0) EXIT 
                                fact=fact+2 
                               
                        end do  
                        if (fact*fact>val) THEN 
                                check_p=.TRUE. 
                        else 
                                check_p=.FALSE.
                        end if 
                end if
      
        END FUNCTION check_p
        integer(kind=8) function NextPrime(val)
        integer(kind=8), intent(in):: val
        integer(kind=8):: sec
        
        
        if (val==1) then
                sec=2
        else if (val==2) then
                sec=3
        else
                sec=val
                do
                        sec=sec+1
                        bool=check_p(sec)
                if (bool==.True.) exit
                end do
        end if
        NextPrime=sec
        end function NextPrime 
        
        integer function addPrime()
        implicit none
        integer(kind=8)::a,p,r,q,l,j
        real, dimension (:), allocatable :: x    
        print *,x
        j=1
        p=5
        outerloop: do while (j<=10000)
        q=NextPrime(p)  
        innerloop: do  
        a=q-p
        r=q+a
        
        if (check_p(r)) THEN 
                print *,p
                a=q-p
                x=q-p
                p=NextPrime(p)
                exit innerloop
        else 
                q=NextPrime(q)
        end if
        end do innerloop
        j=j+1
        end do outerloop
        addPrime=l
        end function addPrime              
        end program Goldbach
        
      
