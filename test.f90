MODULE H
    USE, INTRINSIC :: iso_c_binding, only : c_char, c_null_char, c_size_t
    USE, INTRINSIC :: iso_fortran_env, only: IK => int32

    IMPLICIT none

    private

    public :: HELLO

CONTAINS

    SUBROUTINE HELLO (string, length) bind(C, name="hello") ! Bind this subroutine to the C compatible function name "hello"
        integer(c_size_t), intent(in), value            :: length           ! Define our C parameter for the string length
        character(len=1, kind=C_char), intent(in)       :: string(length)   ! Define our C paramter for the string
        integer(IK)                                     :: i                ! Define a loop iterator variable
        WRITE(*, "(*(g0))") "Hello ", (string(i),i=1,length) ! Write to STDOUT only until the length of the string.
        RETURN
    END SUBROUTINE

END MODULE H