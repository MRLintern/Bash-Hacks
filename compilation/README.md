## compile

This bash script compiles some C++ files into an executable. Essentially my take on a `Makefile`.

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
