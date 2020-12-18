⎕PP←17
p←'\*' ' '⎕R'×' ''¨⊃⎕NGET'p18.txt'1
+/⍎¨'\(' '\)'⎕R(,¨')(')∘⌽¨p ⍝ part 1
f←{⍎'\d+(\+\d+)+'⎕R'(&)'⊢⍵} ⍝ eval without parens
g←{f'\([^()]*\)'⎕R{⍕f ⍵.Match}⍣≡⍵} ⍝ eval with parens
+/g¨p ⍝ part 2
