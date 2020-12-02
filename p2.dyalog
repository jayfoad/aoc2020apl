a b c d←↓⍉⎕CSV('\W+'⎕R','⊃⎕NGET'p2.txt' 1)''4
c←⊃¨c
+/(t≤b)∧a≤t←+/¨c=d ⍝ part 1
+/(c=a⊃¨d)≠c=b⊃¨d ⍝ part 2
