⎕IO←0 ⋄ ⎕PP←17
q←3+⊃⌽p←{⍵[⍋⍵]}⍎¨⊃⎕NGET'p10.txt'1
×/+/1 3∘.=¯2-/0,p,q ⍝ part 1
a←1,q/0 ⋄ {a[⍵]←+/¯3↑⍵↑a}¨p,q ⋄ ⊃⌽a ⍝ part 2
