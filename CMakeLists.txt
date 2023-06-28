cmake_minimum_required(VERSION 3.25)
project(c_fortran_example C)
enable_language(Fortran C)
set(CMAKE_C_STANDARD 17)

include(FortranCInterface)

if(CMAKE_Fortran_COMPILER_ID MATCHES Intel)
    set(CMAKE_Fortran_FLAGS         "${CMAKE_Fortran_FLAGS} -nofor-main -Wall")
    set(CMAKE_Fortran_FLAGS_DEBUG   "-g -traceback")
    set(CMAKE_Fortran_FLAGS_RELEASE "-O3 -ip -xHOST")
endif()
if(CMAKE_Fortran_COMPILER_ID MATCHES GNU)
    set(CMAKE_Fortran_FLAGS         "${CMAKE_Fortran_FLAGS}  -Wall")
    set(CMAKE_Fortran_FLAGS_DEBUG   "-O0 -g3")
    set(CMAKE_Fortran_FLAGS_RELEASE "-Ofast -march=native")
endif()

add_library(
    hello
    test.f90
)

add_executable(
    c_fortran_example.x
    test.f90
    main.c
)

link_libraries("-static")

target_link_libraries(
    c_fortran_example.x -static
)