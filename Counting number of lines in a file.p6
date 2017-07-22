my $count=0; # Initializing variable


#For loop: looping through each line
for "name_of_file".IO.lines ->$line {
  $count++;
}
say "=" x 20; # Prints line with 50 equal (=) signs

say "Total count:$count";
