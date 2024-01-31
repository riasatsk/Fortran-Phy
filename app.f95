PROGRAM RIASAT

        INTEGER::RES

        RES = ADD(10,7)
        PRINT*,RES


CONTAINS

        FUNCTION ADD(A,B)

                INTEGER, INTENT(IN)::A,B

                ADD = A+B
        END FUNCTION ADD

END PROGRAM RIASAT
