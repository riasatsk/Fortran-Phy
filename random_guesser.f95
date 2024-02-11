program guess_the_number
    implicit none
    integer::random;
    real::rand;
    integer::guess;
    call random_number(rand);
    random = floor(rand*100);
     write(*, '(A)', advance='no')"Guess the number between 0 to 100: ";
    read*,guess;

    do while(random/=guess)
          if(random>guess) then
            print*,"You guessed a small number!";
             write(*, '(A)', advance='no')"Guess again: ";
            read*,guess;
          else if ( random<guess ) then
            print*,"You guessed a big number!";
             write(*, '(A)', advance='no')"Guess again: ";
            read*,guess;
          end if
    end do

    print*,"You guess
