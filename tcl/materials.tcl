#####################################
set transftagbeam 1000
set transftagcolumn 2000
set PDeltatransftag 3000

geomTransf Linear  $transftagbeam 
geomTransf PDelta $transftagcolumn 
geomTransf PDelta $PDeltatransftag 

set Ccover 1
set Ccore 2
set Rein 3

#uniaxialMaterial Concrete01 $matTag $fpc  $epsc0  $fpcu  $epsU
uniaxialMaterial Concrete01 $Ccore -2155 -0.0033  -1077.5 -0.0083  
#uniaxialMaterial Concrete02 $matTag $fpc $epsc0  $fpcu $epsU $lambda $ft    $Ets
#uniaxialMaterial Concrete02 $Ccore -2480 -0.0035  -2256. -0.015  0.1   278.  2.09e6
uniaxialMaterial Concrete01 $Ccover -2000 -0.002  -1000. -0.003

#uniaxialMaterial Steel02 $matTag $Fy   $E  $b  $R0 $cR1 $cR2
uniaxialMaterial Steel02 $Rein  12667. 0.63335e7 0.01 15. .925 .15
