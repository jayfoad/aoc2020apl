p←'\S+'⎕S'&'¨('(\n?[^\n])+'⎕S'&')⍠'Mode' 'D'⊃⎕NGET'p4.txt'
p←{⍵/⍨'cid'∘≢¨3↑¨⍵}¨p
p/⍨←7=≢¨p ⋄ ≢p ⍝ part 1
f←{a b←⍺ ⋄ (a∘≤∧≤∘b)⍎⍵}
byr←1920 2002∘f
iyr←2010 2020∘f
eyr←2020 2030∘f
hgt←{(('cm' 'in'⍳⊂¯2↑⍵)⊃(150 193)(59 76)¯1)f'0',¯2↓⍵}
hcl←7=≢
ecl←'amb' 'blu' 'brn' 'gry' 'grn' 'hzl' 'oth'∊⍨⊂
pid←9=≢
+/{∧/{(⍎3↑⍵)4↓⍵}¨⍵}¨p ⍝ part 2
