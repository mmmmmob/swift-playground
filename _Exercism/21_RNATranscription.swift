/*
 - Both DNA and RNA strands are a sequence of nucleotides.
 - The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).
 - The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).

 Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement:
   G -> C
   C -> G
   T -> A
   A -> U

 - Your task is determine the RNA complement of a given DNA sequence.
 */

func toRna(_ dna: String) -> String {
    var rna = ""

    for dn in dna {
        var rn: String
        switch dn {
        case "G":
            rn = "C"
        case "C":
            rn = "G"
        case "T":
            rn = "A"
        case "A":
            rn = "U"
        default:
            rn = ""
        }
        rna.append(rn)
    }

    return rna
}

print(toRna("AGCCT"))
