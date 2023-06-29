# Example CMake Project Mixing C & FORTRAN

## Prerequisites

* You **MUST** install a FORTRAN Compiler
  * [Intel Fortran Compiler](https://www.intel.com/content/www/us/en/developer/tools/oneapi/fortran-compiler.html)
    * When using the Intel Compilers, you need to set the correct environment variables:
      * `source /path/to/intel/oneapi/setvars.sh --force`
  * [GNU FORTRAN](https://gcc.gnu.org/fortran/)
    * You will also need the static linking libraries for FORTRAN
      * Fedora/RHEL: `sudo dnf install -y libgfortran-static`
      * Debian/Ubuntu: `sudo apt install -y libgfortran-10-dev` (Replace 10 with a different version if desired)
* You **MUST** install the statically linkable version of `glibc`
  * On Fedora/RHEL/CentOS - `sudo dnf install -y glibc-static`
  * Debian/Ubuntu - `sudo apt-get install glibc-static`
* You **MAY** need to set the following environment variables
  * `FC=/path/to/fortran/compiler`
  * `CMAKE_Fortran_COMPILER=/path/to/fortran/compiler`
  * `CMAKE_FC_COMPILER=/path/to/fortran/compiler`

## Compiling
* `cd /path/to/project/root`
* `cmake .`
* `make`