p←⊃⎕NGET'p8.txt'1
acc←{a+←⍵ ⋄ i+←1} ⋄ jmp←{i+←⍵} ⋄ nop←{i+←1}
a←0 ⋄ i←1 ⋄ z←0/⍨≢p ⋄ {z[i]:a ⋄ z[i]←1 ⋄ ∇⍎i⊃p}0 ⍝ part 1
jmp←{i+←⍵*i≠x} ⋄ nop←{i+←⍵*i=x}
∊{a←0 ⋄ i←1 ⋄ x←⍵ ⋄ {⍵=100:⍬ ⋄ i>≢p:a ⋄ _←⍎i⊃p ⋄ ∇⍵+1}0}¨⍳≢p ⍝ part 2
