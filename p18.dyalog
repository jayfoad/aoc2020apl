⎕PP←17
p←⊃⎕NGET'p18.txt'1
+/⍎¨'\(' '\)' '\*'⎕R(,¨')' '(' '×')∘⌽¨p ⍝ part 1
f←{⍎'\*'⎕R'×'⊢'\d+( \+ \d+)+'⎕R{⍕⍎⍵.Match}⍵} ⍝ eval without parens
g←{f'\([^()]*\)'⎕R{⍕f 1↓¯1↓⍵.Match}⍣≡⍵} ⍝ eval with parens
+/g¨p ⍝ part 2
