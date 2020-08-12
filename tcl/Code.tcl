 #----------------------------------------------------------------------------#
 #                                                                            #
 #This Pushover Tcl script for RC frame ID number : 4001                      #
 #		                                                              # 
 #units : N (force), kg (mass), cm (length), sec (time)                       # 
 #                                                                            #   
 #This file developed by : SaEeD RaStEgArIaN of FSR University                #
 #                                                                            #   
 #Updated : Jan,21,2016                                                       #
 #                                                                            #   
 #Date : Jan,21,2015                                                          #
 #                                                                            #
 #Other files used in developing this model:                                  #
 #  	                                                                      #
 #----------------------------------------------------------------------------#
##units : N (force), kg (mass), cm (length), sec (time)##

set frameID 4001
for {set i 1} {$i<=4} {incr i} {
		
wipe
wipeAnalysis

file mkdir dataC$i
file mkdir dataR$i

model basic -ndm 2 -ndf 3

source tcl/nodes.tcl
source tcl/mass.tcl
source tcl/boundary.tcl
source tcl/materials.tcl
source tcl/sections.tcl
source tcl/elements.tcl
#----------------------------
puts "FrameID#$frameID Story #$i build!"
#-----------------------------
source tcl/load.tcl
source tcl/analysis.tcl
#source tcl/recorders test.tcl
source tcl/recorders.tcl
source tcl/pushover.tcl
puts "End of Story #$i Analysis ! "
}
puts "!! End of FrameID#$frameID Analysis !!"