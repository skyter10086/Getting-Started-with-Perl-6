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


### $ sort lakes.txt

sort takes the standard input and orders it alphabetically for the standard output. Here, the lakes in sort lakes.txt are listed in alphabetical order.

### $ cat lakes.txt | sort > sorted-lakes.txt

Here, the command takes the standard output from cat lakes.txt and "pipes" it to sort. The standard output of sort is redirected to sorted-lakes.txt.

You can view the output data by typing cat on the file sorted-lakes.txt.


### $ uniq deserts.txt

uniq stands for "unique" and filters out adjacent, duplicate lines in a file. Here uniq deserts.txt filters out duplicates of "Sahara Desert", because the duplicate of 'Sahara Desert' directly follows the previous instance. The "Kalahari Desert" duplicates are not adjacent, and thus remain.

### $ sort deserts.txt | uniq

A more effective way to call uniq is to call sort to alphabetize a file, and "pipe" the standard output to uniq. Here by piping sort deserts.txt to uniq, all duplicate lines are alphabetized (and thereby made adjacent) and filtered out.

### sort deserts.txt | uniq > uniq-deserts.txt

Here we simply send filtered contents to uniq-deserts.txt, which you can view with the cat command.


### $ grep Mount mountains.txt

grep stands for "global regular expression print". It searches files for lines that match a pattern and returns the results. It is also case sensitive. Here, grep searches for "Mount" in mountains.txt.

### $ grep -i Mount mountains.txt

grep -i enables the command to be case insensitive. Here, grep searches for capital or lowercase strings that match Mount in mountains.txt.

The above commands are a great way to get started with grep. If you are familiar with regular expressions, you can use regular expressions to search for patterns in files.



### $ grep -R Arctic /home/ccuser/workspace/geography

grep -R searches all files in a directory and outputs filenames and lines containing matched results. -R stands for "recursive". Here grep -R searches the /home/ccuser/workspace/geography directory for the string "Arctic" and outputs filenames and **lines** with matched results.


### $ grep -Rl Arctic /home/ccuser/workspace/geography

grep -Rl searches all files in a directory and outputs only filenames with matched results. -R stands for "recursive" and l stands for "files with matches". Here grep -Rl searches the /home/ccuser/workspace/geography directory for the string "Arctic" and outputs filenames with matched results.


### $ sed 's/snow/rain/' forests.txt

sed stands for "stream editor". It accepts standard input and modifies it based on an expression, before displaying it as output data. It is similar to "find and replace".

Let's look at the expression 's/snow/rain/':

+ s: stands for "substitution". it is **always** used when using sed for substitution.
+ snow: the search string, the text to find.
+ rain: the replacement string, the text to add in place.

In this case, sed searches forests.txt for the word "snow" and replaces it with "rain." Importantly, the above command will only replace the first instance of "snow" on a line.

### $ sed 's/snow/rain/g' forests.txt

The above command uses the g expression, meaning "global". Here sed searches forests.txt for the word "snow" and replaces it with "rain", globally. All instances of "snow" on a line will be turned to "rain".

## Environment

Each time we launch the terminal application, it creates a new session. The session immediately loads settings and preferences that make up the command line environment.

We can configure the environment to support the commands and programs we create. This enables us to customize greetings and command aliases, and create variables to share across commands and programs.


### $ nano ~/.bash_profile

~/.bash_profile is the name of file used to store environment settings. It is commonly called the "bash profile". When a session starts, it will load the contents of the bash profile before executing commands.

+ The ~ represents the user's home directory.
+ The . indicates a hidden file.
+ The name ~/.bash_profile is important, since this is how the command line recognizes the bash profile.


* The command nano ~/.bash_profile opens up ~/.bash_profile in nano.
* The text echo "Welcome, Jane Doe" creates a greeting in the bash profile, which is saved. It tells the command line to echo the string "Welcome, Jane Doe" when a terminal session begins.
* The command source ~/.bash_profile activates the changes in ~/.bash_profile for the current session. Instead of closing the terminal and needing to start a new session, source makes the changes available right away in the session we are in.



### alias pd="pwd"

What happens when you store above alias in ~/.bash_profile?

The alias command allows you to create keyboard shortcuts, or aliases, for commonly used commands.

+ Here alias pd="pwd" creates the alias pd for the pwd command, which is then saved in the bash profile. Each time you enter pd, the output will be the same as the pwd command.
+ The command source ~/.bash_profile makes the alias pd available in the current session.
Each time we open up the terminal, we can use the pd alias.


### export PS1=">> "

PS1 is a variable that defines the makeup and style of the command prompt.

export PS1=">> " sets the command prompt variable and exports the variable. Here we change the default command prompt from $ to >>.
After using the source command, the command line displays the new command prompt.


### $ echo $HOME

The HOME variable is an environment variable that displays the path of the home directory.



### $ echo $PATH

PATH is an environment variable that stores a list of directories separated by a colon.

Each directory contains scripts for the command line to execute. The PATH variable simply lists which directories contain scripts.

### env

The env command stands for "environment", and returns a list of the environment variables for the current user. Here, the env command returns a number of variables, including PATH, PWD, PS1, and HOME.
