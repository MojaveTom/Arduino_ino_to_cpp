# Arduino_ino_to_cpp
Scripts to convert an Arduino .ino file to compileable C++.

## INSTALLATION
Clone this repository and copy the three files to some directory
on your PATH.  Make sure that the `Arduino_.ino_to_cpp` file is
executable.  The `Doxyfile` and `getFuncs.xslt` files must be in
the same directory as the script file.

You must have Doxygen 1.9.1 or later, xsltproc (which I think is
distributed with Mac OS X), and bash.
## Running

Invoke the script with `Arduino_.ino_to_cpp`.

 First argument to the script is the path to the .ino file.
   If not specified, search the current and sub-directories for .ino files.
   If a directory, all .ino files in that directory and
   sub-directories will be converted.

## What it is doing
 The .ino file needs to have some standard Arduino includes and function prototypes added to the top of the file.

An output file with the .ino extension replaced by .cpp is opened;
some boilerplate includes are written to the top of the file.
 Use doxygen to scan the source and write to an xml file.
 Use xsltproc to run an xslt against the xml to extract
   the function prototypes; and clean up the output by
   leaving out the first line and write to the output file.
Then copy the rest of the .ino file to the output.

## Bug?
Some class instantiations look exactly like function declarations
to doxygen, so they will be included in the function prototypes.
This will almost undoubtly generate compiler errors.
Edit the .cpp file as needed.
#### Note:
doxygen xml files are stored in /tmp/$USER/xml; this location
can be changed by editing the `Doxyfile` and the `Arduino_.ino_to_cpp` to tell xsltproc where the xml files are.