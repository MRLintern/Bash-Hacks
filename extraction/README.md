## extraction

Bash script which will extract files from a project. The project used here is [compilation](https://github.com/MRLintern/Bash-Hacks/tree/main/compilation).
The `ZIP` folder contains:

- `main.cpp`.
- `add.h`.

The bash script is called: `extraction.sh`.

The script will perform the extraction and compile the C++ source code to produce the executable. The source files will be placed in the `src` directory
and the executable in the `bin` directory.

### Outline

- Part 1: Extract files using the `extract.sh` script.
- Part 2: Extract the files, compile the source files into an executable and move the source files to the `src` directory and the executable to the `bin` directory.

### Requirenents

- `Ubuntu`. I've tested the script on `20.04`.
- `unzip`.
  If you don't have `zip/unzip`

- `$ sudo apt update`
- `$ sudo apt install zip`
- Check you have successfully installed `zip/unzip`:
- `$ zip --version`

### Running the Application and Sample Output

#### Note
Zipping files this way is a little over kill. I mean, you could just do the following:

-`$ zip FileZip <file1> <file>` etc, and you end up with `FileZip.zip`.

#### Part 1: extraction
- `$ ls`
- `extract.sh main.cpp add.h`
  Create a `zip` file`.
- `$ zip FileExtract main.cpp add.h`
- `$ ls`
- `FileExtract.zip extract.sh`
- `$ ./extract.sh`
- `Enter the directory containing ZIP files:` `/path/to/your/files/and/extract.sh/script`
- `Archive:  FileExtraction.zip`
- `inflating: FileExtraction/add.h`
- `inflating: FileExtraction/main.cpp`
- `Extracted FileExtraction.zip to /path/to/your/files/and/extract.sh/script`





### Further Development

Consider making this an automated procedure for installing software.
  


