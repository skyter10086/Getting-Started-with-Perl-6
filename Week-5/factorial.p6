 # Factorial function in Perl 6
 
 sub factorial(Int $x){
  if $x < 1 {
    1
  } else {
    $x * factorial($x-1)
  }
}
