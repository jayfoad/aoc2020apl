⎕IO←0
p←⍎⊃⊃⎕NGET'p15.txt'1
f←{a←(⍳≢⍵)@⍵⊢⍺/⍺ ⋄ {0⌈⍺-(a[⍵]←⍺)⊢a[⍵]}/⌽0,(≢⍵)↓⍳⍺-1}
2020 f p ⍝ part 1
30E6 f p ⍝ part 2
