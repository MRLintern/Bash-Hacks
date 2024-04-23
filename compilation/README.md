## compile

This bash script compiles some C++ files into an executable. Essentially my take on a `Makefile`.
I know I know, just make a `Makefile` and then run `make` at the command line, or you could use `CMake`, however
I find that quite involved, but I guess its essential for deploying large software. I've found though that  my little `compile.sh` script
does all of the required things that the previous `build systems` do. The downside of `compile.sh` is that it depends on `Ubuntu`.

### Requirements

-  Developed and tested on`Ubuntu 20.04`.
- `g++/gcc 13.1.0` compiler for compiling the `C++ Source files`.

### How to run

- `$ chmod +x compile.sh`
- `$ ./compile.sh`

### Sample Run

- `$ ./compile.sh`
- `Compilation successful. Executable created: bin/main`
- `Source files can be found in: src`
- `$ ls`
- `bin  compile.sh  src`
- `$ cd bin`
- `main`
- `$ ./main`
- `Enter an integer: 4`
- `Enter another integer: 2`
- `The sum of 4 and 2 is 6`

### Further Work
Might be good to see if we can add optimisation flags (e.g. `O2`), libraries (e.g. `lm`) and the `fopenmp` flag for multithreading scientific applications. 
