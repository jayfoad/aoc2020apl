p←'\w+'⎕S'&'¨'(\n?[^\n])+'⎕S'&'⍠'Mode' 'D'⊃⎕NGET'p6.txt'
≢∊∪/¨p ⍝ part 1
≢∊∩/¨p ⍝ part 2
