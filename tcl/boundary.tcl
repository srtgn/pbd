
 
if {$i==1} {
fix 1 1 1 1
fix 2 1 1 1
fix 3 1 1 1
fix 4 1 1 1
} else {
if {$i==2} {
fix 1 1 1 1
fix 2 1 1 1
fix 3 1 1 1
fix 4 1 1 1
fix 5 1 1 0
} else {
if {$i==3} {
fix 1 1 1 1
fix 2 1 1 1
fix 3 1 1 1
fix 4 1 1 1
fix 5 1 1 0
fix 9 1 1 0
} else {
fix 1 1 1 1
fix 2 1 1 1
fix 3 1 1 1
fix 4 1 1 1
fix 5 1 1 0
fix 9 1 1 0
fix 13 1 1 0
}}}
#####################################

##
equalDOF 5 6  1 
equalDOF 5 7 1 
equalDOF 5 8 1 

##
equalDOF 9 10  1 
equalDOF 9 11 1 
equalDOF 9 12 1 
 
#
equalDOF 13 14 1 
equalDOF 13 15 1 
equalDOF 13 16 1 

#
equalDOF 17 18 1 
equalDOF 17 19 1 
equalDOF 17 20 1 

#####################################