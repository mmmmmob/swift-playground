/*
  Given a string representing a DNA sequence, count how many of each nucleotide is present. If the string contains characters that aren't A, C, G, or T then it is invalid and you should signal an error.

  For example:
    "GATTACA" -> 'A': 3, 'C': 1, 'G': 1, 'T': 2
    "INVALID" -> error
*/

enum NucleotideCountErrors: Error {
  case invalidNucleotide
}

class DNA {
  var strand: String
  static let validNucleotide: Set<Character> = ["A","T","G","C"]

  init(strand: String) throws {
    if !strand.allSatisfy({DNA.validNucleotide.contains($0)}) {
      throw NucleotideCountErrors.invalidNucleotide
    }

    self.strand = strand
  }

  func counts() -> [String : Int] {
    let strand = self.strand
    var result: Dictionary<String, Int> = ["A": 0, "C": 0, "G": 0, "T": 0]

    for nucleotide in strand {
      result[String(nucleotide)]! += 1
    }

    return result
  }
}

//let dna = try DNA(strand: "AATxGGCCAAA") // throw error
let dna2 = try DNA(strand: "AGGTCCAAA")
print(dna2.counts()) // return -> ["G": 2, "A": 4, "T": 1, "C": 2]