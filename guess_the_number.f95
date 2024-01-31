program guess_the_number

        real::random_value
        integer::random
        integer::guess

        call random_number(random_value);
        random = floor(random_value*100)+1
        
        print*,'Guess the number: '
        read(*,*)guess

        do while (guess/=random)
          if (guess>random) then
                  print*,'You guess a big number'
                  print*,'Guess again: '
                  call get_value(guess)
          else if(guess < random) then
                  print*,'You guess a small number'
                  print*,'Guess again: '
                  call get_value(guess)
          end if
        end do

        print*,'You guessed it right the random number is ', random

contains 

        subroutine get_value(g)
           integer,intent(inout)::g
           read(*,*)g
        end subroutine get_value


end program  guess_the_number
