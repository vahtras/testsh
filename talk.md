<script type="text/javascript"
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
# shell

## 

BB2441 The shell


---

layout: false

## Goals

* Navigation in the file system
* Working with files
* Combining commands
* Repeating commands (looping)
* Choosing commands (branching)
* Finding stuff

---

<div class="row">

<div class="col-md-6">
<img class='img-responsive' src="http://www.neontommy.com/sites/default/files/Kubricktypewriter.jpg?1359063438">
</div>

--

<div class="col-md-6">
<img class='img-responsive' src="https://upload.wikimedia.org/wikipedia/commons/0/00/Rokli_mechanical_calculator_1.jpg">
</div>
</div>
</div>

</div>

--
<hr>

<div class="row center-block">

<div class="col-md-5">
<img class='img-responsive' src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/DEC_VT100_terminal.jpg/1013px-DEC_VT100_terminal.jpg">
</div>

--

<div class="col-md-2">
&xrarr;
</div>
<div class="col-md-5">
<img class='img-responsive' src="https://c2.staticflickr.com/4/3029/2627291590_66060a771b_o.jpg">
</div>

</div>

---

## Shell

* *In computing, a shell is a user interface for access to an operating system's
services.* 

* *It is named a shell because it is a layer around the operating system
kernel (Wikipedia)*

<div class="col-md-12">
<img class="img-responsive" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQrJeHObbV2Y-Drb7P3vXFHnYoO-bU3Ii7haw5vqT-2wTUE3yfMg">
</div>
---

## Why

GUI vs CLI

* you want the computer to do stuff for you
* you need to communicate with the computer somehow
    * sign language: point-and-click (graphical user interface)
    * words: small set of commands the computer understands (command line * interface, aka terminal aka shell)



- Cryptic

+ Powerful
+ Remote access
+ Combinations of programs


* A collection of well defined programs that does one thing well
* Can be combined in many ways
* Piping command means chaninig output from to input to another


---

## Navigation

* The *file system* organizes data into files and directories (folders)
* Directories are special files that are contains of other files
* Often called a file tree
* The begining of the tree is called the root "/"

<div class="row">
<div class="col-md-6">
<img class="img-responsive" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRajiMVifhNZj_GfkJ53S7AfxQIm330z6hIiYi19hKt6jMWTNgyzg"> 
<ul>
<li> Directories are branches</li>
<li> Files are leaves</li>
</ul>
</div>
<div class="col-md-6">
<img class="img-responsive" src="https://docs.oracle.com/cd/B19306_01/backup.102/b14236/img/obref001.gif"> 
<ul><li> Inverted tree</li></ul>
</div>
</div>

???

* Files names often have a dot, the latter part is the extension 
* signifies type of file
* convention not requirement

---

## Looking around

* **prompt** (*noun*) an act of encouraging a hesitating speaker. 
* **REPL** read-execute-print-loop



{% if True %}
<div class="col-md-12">
<div class="embed-responsive embed-responsive-16by9">
<iframe src="https://localhost:4200"></iframe>
</div>
</div>
{% endif %}
<div class="col-md-6">
<ul>
<li><tt>echo</tt></li>
<li><tt>pwd</tt></li>
</ul>
</div>
<div class="col-md-6">
<li><tt>ls</tt></li>
<li><tt>env</tt></li>
</div>



???

What do you see
- a dollar sign and a blinking square
- the dollar sign is a prompt asking for input
- the blinking square is a cursor
- try changing the prompt PS1=

The REPL bash
- enter a word
- computer finds a program that matches that word
- runs that program
- prints result
- ask for more

What happens if you type something wrong

Where do we start?
- whatabout `help`
- whatabout hello. command for printing is...`echo`
- terminal shortcuts? ^A ^E ^P ^L

questions we may want to ask
- `whoami`
- where are we?  `pwd` print working directory
    - the first directory after logging is called home directory
    - HOME is an environment variable
    - ~ is an alias for home
    - ~user is an alias for user's home
    - *current working directory* the default director our computer things we
      want to work with when running programs

- what's in here? `ls`
    - long format
        - file type - permissions - owner - size - date (of last modification)
    - hidden files
    - recursive
    - arguments/ defaults
    - what is '.' and '..'?
    - *try invalid argument*

* commands taking arguments/parameters
* commands with options single or double dash
* demonstrate tab completion


---
## Moving around

* **cd** - change directory
* shortcuts: ~ . .. -
* relative absolute path

{% if True %}
<div class="col-md-9">
<div class="embed-responsive embed-responsive-4by3">
<iframe src="https://localhost:4200"></iframe>
</div>
</div>
{% endif %}

???

* cd (without argument)
* cd dir (argument)
A useful command is `cd -` if you swap between two different directories

* relative pathds `cd ../Music`
* absolute paths `cd /home/guest/Music
* what is a path
    * path of a filename
        * generally a sequence of names in the file tree to reach a specific file
        * names are separated by a forward slash
        * absolute path starts from the root
        * relative paths starts from current . (or ..)
    
---

## Working with files and direcories


* **mkdir** create directory
* **nano file** edit a file
* **cat** print contents of files


{% if True %}
<div class="col-md-9">
<div class="embed-responsive embed-responsive-4by3">
<iframe src="https://localhost:4200"></iframe>
</div>
</div>
{% else %}
live = {{ live }}
```
$ mkdir thesis
```
{% endif %}

???
15 min

* create del files  and direcories
* `mkdir thesis`


---
### Setup 
* Download http://swcarpentry.github.io/shell-novice/data/shell-novice-data.zip
* unzip


{% if True %}
<div class="col-md-12">
<div class="embed-responsive embed-responsive-16by9">
<iframe src="https://localhost:4200"></iframe>
</div>
</div>
{% endif %}

---
## Pipes and filters

<div class="col-md-12">
<img class='img-responsive' src="http://swcarpentry.github.io/shell-novice/fig/redirects-and-pipes.png">
</div>

???
15min

* the most powerful feature
* in moleles: wc *.pdb
* \* is a wildcard that matches everything
* \? is a wildcard that matches any single
* line-count results > redirect to a file
* sort to another file
* smallest / largest file
* head/tail
* don't redirect to the same file
* skip intermediate 'lengths' by using ip instead
* stdio/stdout

* sample directory notrh
* select [AB] files

* animals: find the number of unique
* `cut -d, -f 2 animals.txt | sort | uniq`
  


---
## Repetition

* execute same code several times with small variations
* loop (for-loop, do-loop)


{% if True %}
<div class="col-md-9">
<div class="embed-responsive embed-responsive-4by3">
<iframe src="https://localhost:4200"></iframe>
</div>
</div>
{% else %}
from 
```
goostats NENE01729A.txt stats-NENE01729A.txt
goostats NENE01729B.txt stats-NENE01729B.txt
goostats NENE01736A.txt stats-NENE01736A.txt
goostats NENE01751A.txt stats-NENE01751A.txt
goostats NENE01751B.txt stats-NENE01751B.txt
goostats NENE01812A.txt stats-NENE01812A.txt
goostats NENE01843A.txt stats-NENE01843A.txt
...
```
to
```
for txt in NE*[AB].txt
do
goostats $txt stats-$txt
done
```
{% endif %}


???
* explatin loop variable/loop value

* exercise: backup a lot of files
* `cp *.dat *.dat.bkp`
* with >2 args, last must be a directory
* avoid spaces in filenames
* `for f in a file; do echo $f; done`

* The example:
    - run goostat on each of the files

* build up the loop in steps

* history commands
* history
* !! !$

* sample loop to file which overwrites/appends
* dry run with echo
* nested loop

---
## Shell scripts
???
Saving commands in a file
--- 
## Finding things

???
---

## The exercise

You are a Marine biologist 

* You have 1520 samples
* Run each sample through an assay for relative abundance of 300 proteins
* Calculate statistics with your supervisors program `goostat`
* Compare results with `goodiff`
* Write up results
* Collecting commands in scripts
* Finding stuff

---

