MODULE H
    USE, INTRINSIC :: iso_c_binding, only : c_char, c_null_char, c_size_t
    USE, INTRINSIC :: iso_fortran_env, only: IK => int32

    IMPLICIT none

    private

    public :: HELLO

CONTAINS

    SUBROUTINE HELLO (string, length) bind(C, name="hello")
        integer(c_size_t), intent(in), value            :: length
        character(len=1, kind=C_char), intent(in)       :: string(length)
        integer(IK)                                     :: i
        WRITE(*, "(*(g0))") "Hello ", (string(i),i=1,length)
        RETURN
    END SUBROUTINE

END MODULE H