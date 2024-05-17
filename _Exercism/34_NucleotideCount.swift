/*
  Given a string representing a DNA sequence, count how many of each nucleotide is present. If the string contains characters that aren't A, C, G, or T then it is invalid and you should signal an error.

  For example:
    "GATTACA" -> 'A': 3, 'C': 1, 'G': 1, 'T': 2
    "INVALID" -> error
*/

enum StrandError: Error {
  case invalidNucleotide
}

class DNA {
  var strand: String

  init(strand: String) {
    self.strand = strand
  }

  func count() throws -> [String : Int] {
    return [self.strand : 0]
  }
}

let dna = DNA(strand: "AAAA")
print(try! dna.count())