/*
  Determine if a word or phrase is an isogram.

  An isogram (also known as a "non-pattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

  Examples of isograms:
    lumberjacks
    background
    downstream
    six-year-old

  The word isograms, however, is not an isogram, because the s repeats.
*/

func isIsogram(_ string: String) -> Bool {
  
}

print(isIsogram("isograms")) // false
print(isIsogram("thumbscrew-japingly")) // true
print(isIsogram("Emily Jung Schwartzkopf")) // true
print(isIsogram("up-to-date")) // false
print(isIsogram("six-year-old")) // true
