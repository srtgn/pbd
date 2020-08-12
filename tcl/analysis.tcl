#############################################
constraints Plain
numberer Plain
system BandGeneral
test NormDispIncr 1.e-6 60 0
algorithm ModifiedNewton
integrator LoadControl 0.1
analysis Static
analyze 10
loadConst -time 0.0