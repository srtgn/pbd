############################gravity##########################

pattern Plain 4 Linear {

set hb1	$hbf			
set bb1	$bbf			
set hb2	$hbf			
set bb2	$bbf			
set hb3	$hbf			
set bb3	$bbf			
set hb4	$hbf			
set bb4	$bbf

################ Distributed Load ( Aci 318-14 Table 5.3.1 formula 5.3.1e -----> 1.2D+1.0L+1.0E+0.2S ) for 6m loading Span###################	
		
#1th Story#				
eleLoad	-ele 5 6 7 -type -beamUniform [expr -508.80-($S*$hb1*$bb1/100000000*25000)]	
			
#2nd Story#				
eleLoad	-ele 12 13 14 -type -beamUniform [expr -508.80-($S*$hb2*$bb2/100000000*25000)]

#3rd Story#				
eleLoad	-ele 19 20 21 -type -beamUniform [expr -508.80-($S*$hb3*$bb3/100000000*25000)]
				
#4th Story#				
eleLoad	-ele 26 27 28 -type -beamUniform [expr -440.40-($S*$hb4*$bb4/100000000*25000)]
				
################ Concentrated Load ( columns wieght )###################
					
#1th Story#				
load	5	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	6	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	7	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	8	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
#2nd Story#				
load	9	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	10	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	11	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	12	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
#3rd Story#				
load	13	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	14	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	15	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0
load	16	0.0	[expr $H*$hcf*$bcf/1000000*-25000]	0.0

#4th Story#				
load	13	0.0	[expr $H*$hcf*$bcf/1000000*-25000/2]	0.0
load	14	0.0	[expr $H*$hcf*$bcf/1000000*-25000/2]	0.0
load	15	0.0	[expr $H*$hcf*$bcf/1000000*-25000/2]	0.0
load	16	0.0	[expr $H*$hcf*$bcf/1000000*-25000/2]	0.0
}
