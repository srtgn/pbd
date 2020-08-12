set	np	3;	#	number	of	integration	points	along	the	element#		
element	nonlinearBeamColumn	1	1	5	$np	$ColumnSecf	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	2	2	6	$np	$ColumnSecf	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	3	3	7	$np	$ColumnSecf	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	4	4	8	$np	$ColumnSecf	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	8	5	9	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	9	6	10	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	10	7	11	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	11	8	12	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	15	9	13	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	16	10	14	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	17	11	15	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	18	12	16	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	22	13	17	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	23	14	18	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	24	15	19	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001		
element	nonlinearBeamColumn	25	16	20	$np	$ColumnSecs	$transftagcolumn	;#-mass	0.00001	
	
#set Af [expr $hbf*$bbf]
#set As [expr $hbs*$bbs]
#set fc 20
#set E [expr pow($fc,0.5)*4700*100*0.35]
#set Izf [expr pow($hbf,3)*$bbf/12*.35];  # The effective flexural stiffness for beam is estimated from moment curvature analysis as 0.4EIgross (page#174 Yavari's Thesis)
#set Izs [expr pow($hbs,3)*$bbs/12*.35]		
									
#element	elasticBeamColumn	5	5	6	$Af	$E	$Izf	$transftagbeam	;	#-mass	0.14
#element	elasticBeamColumn	6	6	7	$Af	$E	$Izf	$transftagbeam	;	#-mass	0.14
#element	elasticBeamColumn	7	7	8	$Af	$E	$Izf	$transftagbeam	;	#-mass	0.14
#element	elasticBeamColumn	12	9	10	$As	$E	$Izs	$transftagbeam	;	#-mass	0.14
#element	elasticBeamColumn	13	10	11	$As	$E	$Izs	$transftagbeam	;	#-mass	0.14
#element	elasticBeamColumn	14	11	12	$As	$E	$Izs	$transftagbeam	;	#-mass	0.14
#element	elasticBeamColumn	19	13	14	$As	$E	$Izs	$transftagbeam	;	#-mass	1.14
#element	elasticBeamColumn	20	14	15	$As	$E	$Izs	$transftagbeam	;	#-mass	2.14
#element	elasticBeamColumn	21	15	16	$As	$E	$Izs	$transftagbeam	;	#-mass	3.14
#element	elasticBeamColumn	26	17	18	$As	$E	$Izs	$transftagbeam	;	#-mass	4.14
#element	elasticBeamColumn	27	18	19	$As	$E	$Izs	$transftagbeam	;	#-mass	5.14
#element	elasticBeamColumn	28	19	20	$As	$E	$Izs	$transftagbeam	;	#-mass	6.14

#----------------------------

element	nonlinearBeamColumn	5	5	6	$np	$BeamSecf	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	6	6	7	$np	$BeamSecf	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	7	7	8	$np	$BeamSecf	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	12	9	10	$np	$BeamSecs	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	13	10	11	$np	$BeamSecs	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	14	11	12	$np	$BeamSecs	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	19	13	14	$np	$BeamSect	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	20	14	15	$np	$BeamSect	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	21	15	16	$np	$BeamSect	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	26	17	18	$np	$BeamSecp	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	27	18	19	$np	$BeamSecp	$transftagbeam 	;#-mass	0.00001
element	nonlinearBeamColumn	28	19	20	$np	$BeamSecp	$transftagbeam 	;#-mass	0.00001
