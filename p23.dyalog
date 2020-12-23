⎕PP←17
p←⍎¨⊃⊃⎕NGET'p23.txt'1
f←{c←r[b←r[a←r[⍵]]] ⋄ k←⊃(1+⍺|⍵-2 3 4 5)~a b c ⋄ ⊃r[⍵ c k]←r[c k ⍵]}
g←{(1⌽⍵)@⍵⊢⍵}
r←g p ⋄ {}(≢r)f⍣100⊢1 ⋄ ∊⍕¨{⍵,r[⊃⌽⍵]}⍣7⊃r ⍝ part 1
r←g p,(≢p)↓⍳1E6 ⋄ {}(≢r)f⍣1E7⊢1 ⋄ ×/a,r[a←⊃r] ⍝ part 2
