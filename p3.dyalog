⎕IO←0
p←'#'=↑⊃⎕NGET'p3.txt'1
f←{+/p[(⊂⍴p)|(⊂⍵)×⍳⌈⊃(⍴p)÷⍵]}
f 1 3 ⍝ part 1
×/f¨(1 1)(1 3)(1 5)(1 7)(2 1) ⍝ part 2
