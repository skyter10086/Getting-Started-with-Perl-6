# Regexes in Perl 6

| Symbol   |      Description      |  
|:--------:|:-------------:|
| ~~ |  smart match operator  | 
| $/ |    variable that contains the matched part of string    |   
| ~$/ | Stringfy the ~$/ variable | 
|.match|method invocation syntax |
|/ /|pattern is kept between a pair of slash delimiters|
|m{ }|Can use other delimiters except a pair of slash if we prefix the pattern with the letter "m"|
|rx/ /|signifies a pattern which can be stored in a variable|
|\w|word character, matches one single alphanumeric character (alphabetical characters, digits and _ character) |
|\W|any other character than \w |
|\d|digits|
|\D|non-digits|
|\s|Whitespace|
|\S|non-whitespace|
|\n|newline|
|\N|non-newline|
|<[ ]>|character class|
|<-[ ]>|Negating character class|
|^|anchor representing beginning of the string |
|^^|start of line in multiline strings|
|$|anchor representing end of the string |
|$$|end of line in multiline strings|
|<?before string>|match that comes before the string |
|<!before string>|match that does not come before the string |
|<?after string>|match that comes after the string|
|<!after string>|match that does not come after the string|
|<?{ }|Code assertion which will match if code block returns a true value|
|<!{ }|Code assertion which will match unless the code block returns a true value|
| &#124;&#124; |First match alternation|
| &#124; |Longest match alternation|
|( )|Capturing |
|$0, $1|first and second items of the matched object in list context|
|:i, :ignorespace|Ignore upper or lower case|
|:s,:sigspace|adverb that makes whitespace significant in regex pattern|


### Quantifiers

|Symbol|Description|
|:----:|:-----:|
|+|preceding character one or more times|
|*|preceding character zero or more times|
|?|preceding character zero or one match|
|(min..max)|specifying a range for the number of times preceding character is matched|






**Perl 6 is Unicode compliant.**

***Whitespace is usually not significant within regex patterns unless specified with :s or :sigspace adverb.***


