### This is tutorial on Perl 6 language.

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.split(" ");
```

    ## (Pokhara is Is beautiful City city of Nepal)

### Split sentence on space.

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say $string.split(" ");
```

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
say $string.words.grep(*.chars > 3);
```

    ## (Pokhara beautiful City city Nepal)

OR

``` perl
my $string = "Pokhara is Is beautiful City city of Nepal";
say ($_ if $_.chars >3 for $string.words);
```

    ## (Pokhara beautiful City city Nepal)

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
say $string.lc.words.unique;
```

    ## (pokhara is beautiful city of nepal)

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
say $string.lc.words.unique
```

    ## (pokhara is beautiful city of nepal)

(Note this doesn't work `say $string.words.lc.unique.elems;`)

dd $a is basically short for note $a.perl plus some extra features

### Word comparison functions

`$string.starts-with() $string.ends-with()`

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
