⎕IO←0
a←⍎⊃p←⊃⎕NGET'p13.txt'1
d←⍎¨b⌷⍨⊂c←⍸(,'x')∘≢¨b←'\w+'⎕S'&'⊃⌽p
{(⊃⍋⍵)⊃d×⍵}d|-a ⍝ part 1
⎕PP←17 ⋄ ⎕FR←1287
gcd←{⍵=0:⍺ 1 0 ⋄ g s t←⍵∇⍵|⍺ ⋄ g t(s-t×⌊⍺÷⍵)}
crt←{z←⍵÷⍨m←×/⍵ ⋄ m|+/⍺×z×1⊃¨z gcd¨⍵}
(-c)crt d ⍝ part 2
