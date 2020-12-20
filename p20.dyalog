⎕IO←0 ⋄ ⎕PP←17
p←1↓¨{⍵⊂⍨0=≢¨⍵}(⊂''),¯1↓⊃⎕NGET'p20.txt'1
n←{⍎⊃'\d+'⎕S'&'⊃⍵}¨p ⍝ tile numbers
t←'#'=↑¨1↓¨p ⍝ tiles
t8←{⍵,⍉¨⍵}{⍵,⌽¨⍵}{⍵,⊖¨⍵}⍪t ⍝ tiles flipped and rotated
×/n/⍨12=+/⍣3∘.≡⍨⊣⌿¨t8 ⍝ part 1
f←{x y←⍵ ⋄ 0=≢i←⍸(⊢⌿x)∘≡¨⊣⌿¨y:⍵ ⋄ (x⍪y⊃⍨i)(y⌿⍨(⊃⊃i)≠⍳≢y)} ⍝ find next tile below
g←{f⍣≡⊖¨f⍣≡⍵} ⍝ assemble column
h←{x y←⍵ ⋄ ⊃⍪/{⍉⊃g(⍉⍵)y}¨⊂[1 2]12 10 10⍴x} ⍝ assemble image
i←{m←(≢⍵)⍴~1⌽10↑1 1 ⋄ m/m⌿⍵}h g(⊃t8)(1↓t8) ⍝ image
i8←{⍵,⍉¨⍵}{⍵,⌽¨⍵}{⍵(⊖⍵)}i ⍝ image flipped and rotated
m←'#'=3 20⍴'..................#.#....##....##....###.#..#..#..#..#..#...' ⍝ monster
n←+/∊{∧/,⍵≥m}⌺(⍴m)¨i8 ⍝ number of monsters
(+/,i)-n×+/,m ⍝ part 2
