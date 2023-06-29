MODULE H
    USE, INTRINSIC :: iso_c_binding, only : c_char, c_int, c_float, c_size_t, c_ptr, c_f_pointer

    IMPLICIT none

    private

    public :: HELLO

CONTAINS

    SUBROUTINE HELLO (A) bind(C, name="hello")
        CHARACTER(len=*), intent(in) :: A
        PRINT "(A,A)", "Hello ", A
        RETURN
    END SUBROUTINE

END MODULE H