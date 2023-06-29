# Example CMake Project Mixing C & FORTRAN

## Prerequisites

* You **MUST** install a FORTRAN Compiler
  * [Intel Fortran Compiler](https://www.intel.com/content/www/us/en/developer/tools/oneapi/fortran-compiler.html)
    * When using the Intel Compilers, you need to set the correct environment variables:
      * `source /path/to/intel/oneapi/setvars.sh --force`
  * [GNU FORTRAN](https://gcc.gnu.org/fortran/)
* You **MUST** set the following environment variables
  * `FC=/path/to/fortran/compiler`
  * `CMAKE_Fortran_COMPILER=/path/to/fortran/compiler`
  * `CMAKE_FC_COMPILER=/path/to/fortran/compiler`
* You **MUST** install the statically linkable version of `glibc`
  * On Fedora/RHEL/CentOS - `sudo dnf install -y glibc-static`
  * Debian/Ubuntu - `sudo apt-get install glibc-static`

## Compiling
* `cd /path/to/project/root`
* `cmake .`
* `make`