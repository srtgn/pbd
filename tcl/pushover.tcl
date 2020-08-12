if {$i==1} {
set f 5
} else {
if {$i==2} {
set f 9
} else {
if {$i==3} {
set f 13
} else {set f 17}
}}

set IDctrlNode [expr $f]
set IDctrlDOF 1
set Dmax 55.
set Dincr .1

pattern Plain 2 Linear {		
	  load $f 10.0  0. 0. 
      
}

constraints Plain
numberer RCM
system BandGeneral
set Tol 1.e-3
set maxNumIter 100
set printFlag 0
set TestType NormDispIncr
test $TestType $Tol $maxNumIter $printFlag
set algorithmType Newton
algorithm $algorithmType
integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
analysis Static

set Nsteps [expr int($Dmax/$Dincr)];        # number of pushover analysis steps
set ok [analyze $Nsteps];                # this will return zero if no convergence problems were encountered

# ---------------------------------- in case of convergence problems
if {$ok != 0} {      
# change some analysis parameters to achieve convergence
# performance is slower inside this loop
	set ok 0;
	set controlDisp 0.0;		# start from zero
	set D0 0.0;		# start from zero
	set Dstep [expr ($controlDisp-$D0)/($Dmax-$D0)]
	while {$Dstep < 1.0 && $ok == 0} {	
		set controlDisp [nodeDisp $IDctrlNode $IDctrlDOF ]
		set Dstep [expr ($controlDisp-$D0)/($Dmax-$D0)]
		set ok [analyze 1 ]
		if {$ok != 0} {
			puts "Trying Newton with -initial(dx/30)........**********........"
			test NormDispIncr   $Tol 2000  0
			algorithm Newton -initial
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			algorithm $algorithmType
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
		}
		if {$ok != 0} {
			puts "Trying Newton with -initial tol e-4........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm Newton -initial
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			algorithm $algorithmType
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
		}


		if {$ok != 0} {
			puts "Trying KrylovNewton........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm KrylovNewton
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}
		if {$ok != 0} {
			puts "Trying KrylovNewton with -initial........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm KrylovNewton -initial
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}
		if {$ok != 0} {
			puts "Trying Broyden........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm Broyden 8
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}
		if {$ok != 0} {
			puts "Trying NewtonWithLineSearch  0.8 ........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm NewtonLineSearch .8
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}


		if {$ok != 0} {
			puts "Trying NewtonWithLineSearch 0.7 ........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm NewtonLineSearch .7
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}
		if {$ok != 0} {
			puts "Trying NewtonWithLineSearch 0.6 ........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm NewtonLineSearch .6
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}
		if {$ok != 0} {
			puts "Trying ModifiedNewton........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm ModifiedNewton
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}
		if {$ok != 0} {
			puts "Trying ModifiedNewton with -initial........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm ModifiedNewton -initial
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}
		if {$ok != 0} {
			puts "Trying BFGS........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm BFGS
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}
		if {$ok != 0} {
			puts "Trying BFGS with -initial........**********........"
			test NormDispIncr   [expr $Tol*100] 2000  0
			algorithm BFGS -initial
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF [expr $Dincr/30]
			set ok [analyze 1 ]
			test $TestType $Tol $maxNumIter  0
			integrator DisplacementControl  $IDctrlNode   $IDctrlDOF $Dincr
			algorithm $algorithmType
		}


	};	# end while loop

};      # end if ok !0


puts "DonePushover"