⎕IO←0 ⋄ ⎕PP←17 ⋄ to←{⍺+⍳1+⍵-⍺}
r y n←1 2 2↓¨{⍵⊂⍨0=≢¨⍵}(⊂''),⊃⎕NGET'p16.txt'1
r←↑{a b c d←⍎¨⍵ ⋄ 1000↑⍸⍣¯1⊢(a to b),c to d}¨'\d+'⎕S'&'¨r ⍝ rules
y←⍎⊃y ⍝ your ticket
n←↑⍎¨n ⍝ nearby tickets
+/(,n)/⍨~,t←(⊂n)⌷∨⌿r ⍝ part 1
v←n⌿⍨∧/t ⍝ valid nearby tickets
×/y/⍨{∨⌿(6>g)⌿2<⌿0⍪⍵⌷⍨⊂g←⍋+/⍵}(↓r)∘.{∧/⍺[⍵]}↓⍉v ⍝ part 2
