/*
  When cells divide, their DNA replicates too. Sometimes during this process mistakes happen and single pieces of DNA get encoded with the incorrect information. If we compare two strands of DNA and count the differences between them we can see how many mistakes occurred. This is known as the "Hamming Distance".

  We read DNA using the letters C,A,G and T. Two strands might look like this:
      GAGCCTACTAACGGGAT
      CATCGTAATGACGGCCT
      ^ ^ ^  ^ ^    ^^

  They have 7 differences, and therefore the Hamming Distance is 7.

  The Hamming distance is only defined for sequences of equal length, so an attempt to calculate it between sequences of different lengths should not work.
*/

enum Hamming: Error {
  case isNotEqual
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
  if dnaSequence.count != against.count {
    throw Hamming.isNotEqual
  }

  if dnaSequence.count == 0 { return 0 } 
  else {
    var result: Int? = 0

    for i in 0...dnaSequence.count - 1 {
      let index = dnaSequence.index(dnaSequence.startIndex, offsetBy: i)
      if dnaSequence[index] != against[index] {
        result! += 1
      }
    }

    return result!
  }
}

print(try? compute("GGACGGATTCTG", against: "AGGACGGATTCT")) // 9
//print(try compute("AATG", against: "AAA")) // throws error enum (try? -> return nil)
print(try? compute("G", against: "T")) // 1
print(try? compute("GGACTGAAATCTG", against: "GGACTGAAATCTG")) // 0
