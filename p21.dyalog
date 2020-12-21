⎕IO←0
p←⊃⎕NGET'p21.txt'1
a←{'\w+'⎕S'&'⊢⍵↑⍨⍵⍳'('}¨p ⍝ ingredients
b←{'\w+'⎕S'&'⊢⍵↓⍨9+⍵⍳'('}¨p ⍝ allergens
c←∪⊃,/b ⍝ unique allergens
d←{⊃∩/a/⍨(⊂⊂⍵)∊¨b}¨c ⍝ ingredients that might contain each allergen
+/~(⊃,/a)∊⊃,/d ⍝ part 1
1↓∊',',¨(⊂⍋c)⌷c{1∊m←1=≢¨⍵:z@{m}⍺∇⍵~¨⊂z←⊃¨m/⍵ ⋄ ⍺}d ⍝ part 2
