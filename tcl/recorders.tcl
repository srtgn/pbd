###################################Recorders############################################

#""""""""""""""""""""""""""""""""""""if for Strain & Def Recorders"""""""""""""""""""""""""""""""""""""""""""""'

if {$i==1} {
set j 1
} else {
if {$i==2} {
set j 8
} else {
if {$i==3} {
set j 15
} else {set j 22}
}}
#######################################################################################
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#				recorder Element -file data[expr $i]/ele[expr $n]Def.out -time -ele $n basicDeformation
#}
#######################################################################################
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Node -file data[expr $i]/node[expr $n]disp.out -time  -node $n -dof 3 disp
#}
#---------------------------------------------------------------------------------------
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Node -file data[expr $i]/node[expr $n]reac.out -time -node $n -dof 1 reaction
#}
#---------------------------------------------------------------------------------------
#""""""""""""""""""""""""""""""""Element's Strain"""""""""""""""""""""""""""""""""""""""
#recorder Element -file     data[expr $i]/name.out            –time  -ele i section fiber $y  $z  <$matID> stressStrain
#---------------------------------------------------------------------------------------

#            
#             --------------      
#           /     z/       /|
#          /y<----/       / |
#         /              /  |
#        /              /   |
#       /--------------/    |
#       |              |    |
#       |              |    |
#       |              |    |     
#       |              |    |
#       |              |    


#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file data[expr $i]/ele[expr $n]CstrainL.out -time -ele $n section fiber 20. 0.0 2 stressStrain
#}
for {set n $j} {$n<=[expr $j+3]} {incr n} {
		
		recorder Element -file dataC[expr $i]/ele[expr $n]CstrainR.out -time -ele $n section fiber [expr -$hcfi/2+$hcfi/20] 0.00 2 stressStrain
}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file data[expr $i]/ele[expr $n]CstrainU.out -time -ele $n section fiber 0.0 20. 2 stressStrain
#}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file data[expr $i]/ele[expr $n]CstrainD.out -time -ele $n section fiber 0.0 -20. 2 stressStrain
#}
#
#---------------------------------------------------------------------------------------

for {set n $j} {$n<=[expr $j+3]} {incr n} {
		
		recorder Element -file dataR[expr $i]/ele[expr $n]RstrainL.out -time -ele $n section fiber [expr $hcfi/2] 0.0 3 stressStrain
}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file data[expr $i]/ele[expr $n]RstrainR.out -time -ele $n section fiber -20. 0.00 3 stressStrain
#}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file data[expr $i]/ele[expr $n]RstrainU.out -time -ele $n section fiber 0.0 20. 3 stressStrain
#}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file data[expr $i]/ele[expr $n]RstrainD.out -time -ele $n section fiber 0.0 -20. 3 stressStrain
#}
#---------------------------------------------------------------------------------------

#""""""""""""""""""""""""""""""""""""if for Drift Recorders"""""""""""""""""""""""""""""""""""""""""""""'

if {$i==1} {
set o 1
} else {
if {$i==2} {
set o 5
} else {
if {$i==3} {
set o 9
} else {set o 13}
}}
 #recorder Drift -file data[expr $i]/drift[expr $i].out -time -iNode $o -jNode [expr $o+4] -dof 1 -perpDirn 2
    
##################################################################################################
recorder  display Frame-$frameID-Story-$i 100 50 600 500 -file display.bmp
vup 0 1 0
vpn 0 0 1
prp 0 0 1
viewWindow -1500 1500 -1500 1500
display 1 1 1

##############################################################################################
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file ele[expr $n]CstrainL.out -time -ele $n section fiber 20. 0.0 2 stressStrain
#}
for {set n $j} {$n<=[expr $j+3]} {incr n} {
		
		recorder Element -file ele[expr $n]CstrainR.out -time -ele $n section fiber [expr -$hcfi/2+$hcfi/20] 0.00 2 stressStrain
}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file ele[expr $n]CstrainU.out -time -ele $n section fiber 0.0 20. 2 stressStrain
#}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file ele[expr $n]CstrainD.out -time -ele $n section fiber 0.0 -20. 2 stressStrain
#}

#---------------------------------------------------------------------------------------

for {set n $j} {$n<=[expr $j+3]} {incr n} {
		
		recorder Element -file ele[expr $n]RstrainL.out -time -ele $n section fiber [expr $hcfi/2] 0.0 3 stressStrain
}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file ele[expr $n]RstrainR.out -time -ele $n section fiber -20. 0.00 3 stressStrain
#}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file ele[expr $n]RstrainU.out -time -ele $n section fiber 0.0 20. 3 stressStrain
#}
#for {set n $j} {$n<=[expr $j+3]} {incr n} {
#		
#		recorder Element -file ele[expr $n]RstrainD.out -time -ele $n section fiber 0.0 -20. 3 stressStrain
#}
#---------------------------------------------------------------------------------------

#""""""""""""""""""""""""""""""""""""if for Drift Recorders"""""""""""""""""""""""""""""""""""""""""""""'

if {$i==1} {
set o 1
} else {
if {$i==2} {
set o 5
} else {
if {$i==3} {
set o 9
} else {set o 13}
}}
recorder Drift -file drift[expr $i].out -time -iNode $o -jNode [expr $o+4] -dof 1 -perpDirn 2
 


