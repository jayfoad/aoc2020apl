e se sw w nw ne←(0 1)(1 1)(1 0)(0 ¯1)(¯1 ¯1)(¯1 0)
p←{⊃+/⍎¨'[ns]?.'⎕S'&'⊢⍵}¨⊃⎕NGET'p24.txt'1
+/2|{≢⍵}⌸p ⍝ part 1
A←3 3⍴1 1 0 1 0 1 0 1 1
f←{2=n+⍵∧1=n←{+/,A×⍵}⌺3 3⊢⍵}{0⍪0⍪⍨0,0,⍨⍵}
+/,f⍣100⊢2|⍸⍣¯1{(⊂⍋⍵)⌷⍵}1+p-⌊/p ⍝ part 2
