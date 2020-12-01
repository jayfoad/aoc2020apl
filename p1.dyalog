p←⍎¨⊃⎕NGET'p1.txt'1
f←{∪(,2020=⊃∘.+/⍵)/,⊃∘.×/⍵}
f 2/⊂p ⍝ part 1
f 3/⊂p ⍝ part 2
