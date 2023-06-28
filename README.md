# Example CMake Project Mixing C & FORTRAN

## Prerequisites

* You **MUST** install a FORTRAN Compiler
  * [Intel Fortran Compiler](https://www.intel.com/content/www/us/en/developer/tools/oneapi/fortran-compiler.html)
  * [GNU FORTRAN](https://gcc.gnu.org/fortran/)
* You **MUST** set the following environment variables
  * `FC=/path/to/fortran/compiler`
  * `CMAKE_Fortran_COMPILER=/path/to/fortran/compiler`
  * `CMAKE_FC_COMPILER=/path/to/fortran/compiler`