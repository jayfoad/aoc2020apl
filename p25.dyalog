p q←⍎¨⊃⎕NGET'p25.txt'1
M←20201227
pow←{{M|⍺×M|⍵×⍵}/⍺*⌽2⊥⍣¯1⊢⍵}
seq←{⍺≤≢⍵:⍵ ⋄ ⍺∇⍵,M|⍵×⊃⌽⍵}
log←{s←⌈M*÷2 ⋄ t←⊃(a←s seq ⍺ pow s)∩b←M|⍵×s seq ⍺ pow M-2 ⋄ s 1+.×a b⍳¨t}
p pow 7 log q ⍝ part 1
