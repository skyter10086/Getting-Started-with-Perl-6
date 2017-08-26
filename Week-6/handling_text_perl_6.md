### Handling text in Perl 6.

##### This is replication of what is [in this tutorial](https://www.coursera.org/learn/python-text-mining/lecture/MeheH/handling-text-in-python) in Perl 6.

These things are relevant in text mining.

**Feedback appreciated.**

### Split sentence on space.

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
.say for $string.split(" ");
say $string.split(" ");
```

    ## Pokhara
    ## is
    ## Is
    ## beautiful
    ## City
    ## city
    ## of
    ## Nepal
    ## (Pokhara is Is beautiful City city of Nepal)

### Length of splitted sentence (No of tokens)

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.split(" ").elems;
```

    ## 8

### Find specific words

#### Example words that are longer than 3 letters

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
.say for $string.words.grep(*.chars > 3);
```

    ## Pokhara
    ## beautiful
    ## City
    ## city
    ## Nepal

OR

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
.say for ($_ if $_.chars >3 for $string.words);
```

    ## Pokhara
    ## beautiful
    ## City
    ## city
    ## Nepal

### Example words that begin with uppercase

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
for $string.split(" ").words -> $pokh {
  say $pokh if $pokh eq $pokh.tc;
};
```

    ## Pokhara
    ## Is
    ## City
    ## Nepal

### Example words that ends with 's'

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
for $string.split(" ").words -> $pokh {
  say $pokh if $pokh.ends-with('s');
};
```

    ## is
    ## Is

### Finding unique words

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
.say for $string.lc.words.unique;
```

    ## pokhara
    ## is
    ## beautiful
    ## city
    ## of
    ## nepal

### Total number of unique words

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.words.unique.elems;
```

    ## 8

But if we are to ignorecase then,

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.lc.words.unique.elems;
```

    ## 6

And what are those elements?

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
.say for $string.lc.words.unique
```

    ## pokhara
    ## is
    ## beautiful
    ## city
    ## of
    ## nepal

(Note this doesn't work `say $string.words.lc.unique.elems;`)

dd $a is basically short for note $a.perl plus some extra features

### Word comparison functions

    $string.starts-with()

    $string.ends-with()

### Check if a small string is part of larger sentence

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string~~/:i "pokhara"/.Bool;
```

    ## True

### String operations

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.lc;
say $string.uc;
say $string.wordcase;
```

    ## pokhara is is beautiful city city of nepal
    ## POKHARA IS IS BEAUTIFUL CITY CITY OF NEPAL
    ## Pokhara Is Is Beautiful City City Of Nepal

### Splitting based on smaller string

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
.say for $string.split("is") 
```

    ## Pokhara 
    ##  Is beautiful City city of Nepal

### Joining based on smaller string

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
my @exam=$string.split("is") ;
say @exam.join("the tourist city");
```

    ## Pokhara the tourist city Is beautiful City city of Nepal

### 

``` perl
my $string = "    Pokhara is Is beautiful City city of Nepal      \n";
say $string.trim;#Remove leading and trailing whitespace. 
say $string.trim-trailing;#Remove the whitespace characters from the end of a string.
say $string.trim-leading; #Remove the whitespace characters from the beginning of a string
```

    ## Pokhara is Is beautiful City city of Nepal
    ##     Pokhara is Is beautiful City city of Nepal
    ## Pokhara is Is beautiful City city of Nepal

### Splitting string based on newline

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal \n This is crazy";
.say for $string.lines;
```

    ## Pokhara is Is beautiful City city of Nepal 
    ##  This is crazy

### If the sentence contains the string

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.match("is").Bool;
```

    ## True

### Indexing from left and right

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.index("is");
say $string.rindex("Nepal");
```

    ## 8
    ## 37

### String replacement/substitution

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.subst(/:i nepal/, "World");

say $string.subst(/:i "is Is"/, ":) is");
```

    ## Pokhara is Is beautiful City city of World
    ## Pokhara :) is beautiful City city of Nepal

### Splitting example

``` perl
my $string = "ouagadougou";
say $string.split("ou");
.say for $string.split("ou"); #There are four elements
say $string.split("ou").join("hijo");
say $string.chars
```

    ## ( agad g )
    ## 
    ## agad
    ## g
    ## 
    ## hijoagadhijoghijo
    ## 11

### Split characters of words

``` perl
my $string = "ouagadougou";
.say for $string.split("");
```

    ## 
    ## o
    ## u
    ## a
    ## g
    ## a
    ## d
    ## o
    ## u
    ## g
    ## o
    ## u
