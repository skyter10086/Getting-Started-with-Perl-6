### pwd 

Prints current working directory

### cd 

Changes the working directory

### ls

Lists all contents of a directory.


### ls -a

Lists all contents of a directory, including hidden files and directories.

### ls -l 

Lists all contents in long format.

### ls -t 

Orders files and directories by the time they were last modified


### cp * satire/

In addition to using filenames as arguments, we can use special characters like * to select groups of files. These special characters are
called wildcards.
The * selects all files in the working directory, so here we use cp to copy all files into the satire/ directory.


### cp m*.txt scifi/

Here, m*.txt selects all files in the working directory starting with "m" and ending with ".txt", and copies them to scifi/.

### mv superman.txt superhero/

In addition to copying files, we can move files from the command line. The mv command moves files.
It's similar to cp in its usage.
To move a file into a directory, use mv with the source file as the first argument and the destination directory as the second argument. Here we move superman.txt into superhero/.

### mv wonderwoman.txt batman.txt superhero/

To move multiple files into a directory, use mv with a list of source files as the first arguments, and the destination directory as the last argument. Here, we move wonderwoman.txt and batman.txt into superhero/.


### mv batman.txt spiderman.txt

To rename a file, use mv with the old file as the first argument and the new file as the second argument. By moving batman.txt into spiderman.txt, we rename the file as spiderman.txt.


### rm waterboy.txt

The rm command deletes files and directories. Here we remove the file waterboy.txt from the filesystem.

### rm -r comedy

The -r is an option that modifies the behavior of the rm command. The -r stands for "recursive," and it's used to delete a directory and all of its child directories.

Be careful when you use rm! It deletes files and directories permanently. There isn't an undelete command, so once you delete a file or directory with rm, it's gone.


### $ echo "Hello"
### Hello

The echo command accepts the string "Hello" as *standard input*, and echoes the string "Hello" back to the terminal as *standard output*.

Let's learn more about standard input, standard output, and standard error:

1. standard input, abbreviated as stdin, is information inputted into the terminal through the keyboard or input device.
2. standard output, abbreviated as stdout, is the information outputted after a process is run.
3. standard error, abbreviated as stderr, is an error message outputted by a failed process.

Redirection reroutes standard input, standard output, and standard error to or from a different location.


### $ echo "Hello" > hello.txt

The > command redirects the standard output to a file. Here, "Hello" is entered as the standard input. The standard output "Hello" is redirected by > to the file hello.txt.

### $ cat hello.txt
The cat command outputs the contents of a file to the terminal. When you type cat hello.txt, the contents of hello.txt are displayed.

### $ cat oceans.txt > continents.txt

\> takes the standard output of the command on the left, and redirects it to the file on the right. Here the standard output of cat oceans.txt is redirected to continents.txt.

Note that \> overwrites all original content in continents.txt. When you view the output data by typing cat on continents.txt, you will see only the contents of oceans.txt.

### $ cat glaciers.txt >> rivers.txt

\>> takes the standard output of the command on the left and appends (adds) it to the file on the right. You can view the output data of the file with cat and the filename.

Here, the the output data of rivers.txt will contain the original contents of rivers.txt with the content of glaciers.txt appended to it.

### $ cat < lakes.txt

< takes the standard input from the file on the right and inputs it into the program on the left. Here, lakes.txt is the standard input for the cat command. The standard output appears in the terminal.

### $ cat volcanoes.txt | wc

| is a "pipe". The | takes the standard output of the command on the left, and pipes it as standard input to the command on the right. You can think of this as "command to command" redirection.

Here the output of cat volcanoes.txt is the standard input of wc. In turn, the wc command outputs the number of lines, words, and characters in volcanoes.txt, respectively.

### $ cat volcanoes.txt | wc | cat > islands.txt
Multiple |s can be chained together. Here the standard output of cat volcanoes.txt is "piped" to the wc command. The standard output of wc is then "piped" to cat. Finally, the standard output of cat is redirected to islands.txt.

You can view the output data of this chain by typing cat islands.txt.


