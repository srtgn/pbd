

####### C50x50-16f25 #########
set hcf 50
set hcfi [expr $hcf-2*5.]
set bcf 50
set bcfi [expr $bcf-2*5.]
####### C50x50-12f20 #########
set hcs 50
set hcsi [expr $hcs-2*5.]
set bcs 50
set bcsi [expr $bcs-2*5.]
####### tip 3 sotun 
#set hcs 0.762
#set hcsi [expr $hcs-2*0.05]
#set bcs 0.762
#set bcsi [expr $bcs-2*0.05]



######### B50x60 ##########

set hbf 60
set hbfi [expr $hbf-2*5.]
set bbf 50
set bbfi [expr $bbf-2*5.]

######### B50x50 ##########

set hbs 50
set hbsi [expr $hbs-2*5.]
set bbs 50
set bbsi [expr $bbs-2*5.]

######### B50x50 ##########

set hbt 50
set hbti [expr $hbt-2*5.]
set bbt 50
set bbti [expr $bbt-2*5.]

######### B50x50 ##########

set hbp 50
set hbpi [expr $hbp-2*5.]
set bbp 50
set bbpi [expr $bbp-2*5.]

################################

set ColumnSecf 100
set ColumnSecs 101
set ColumnSect 102

set BeamSecf 200
set BeamSecs 201
set BeamSect 202
set BeamSecp 203



###############################

section fiberSec $ColumnSecf {
	patch quad $Ccore 20 20  [expr -$hcfi/2] [expr $bcfi/2] [expr -$hcfi/2] [expr -$bcfi/2] [expr $hcfi/2] [expr -$bcfi/2] [expr $hcfi/2] [expr $bcfi/2]
	patch quad $Ccover 6 20  [expr -$hcf/2] [expr $bcf/2] [expr -$hcf/2] [expr -$bcf/2] [expr -$hcfi/2] [expr -$bcf/2] [expr -$hcfi/2] [expr $bcf/2]
	patch quad $Ccover 20 6  [expr -$hcfi/2] [expr -$bcfi/2] [expr -$hcfi/2] [expr -$bcf/2] [expr $hcfi/2] [expr -$bcf/2] [expr $hcfi/2] [expr -$bcfi/2]
	patch quad $Ccover 6 20  [expr $hcfi/2] [expr $bcf/2] [expr $hcfi/2] [expr -$bcf/2] [expr $hcf/2] [expr -$bcf/2] [expr $hcf/2] [expr $bcf/2]
	patch quad $Ccover 20 6  [expr -$hcfi/2] [expr $bcf/2] [expr -$hcfi/2] [expr $bcfi/2] [expr $hcfi/2] [expr $bcfi/2] [expr $hcfi/2] [expr $bcf/2]
##############we 
	layer straight $Rein 5 [expr pow(2.5,2)*2*asin(1)] [expr -$hcfi/2] [expr $bcfi/2] [expr -$hcfi/2] [expr -$bcfi/2]
	layer straight $Rein 5 [expr pow(2.5,2)*2*asin(1)] [expr $hcfi/2] [expr $bcfi/2] [expr $hcfi/2] [expr -$bcfi/2]
        layer straight $Rein 2 [expr pow(2.5,2)*2*asin(1)] [expr 0.0] [expr $bcfi/2] [expr 0.0] [expr -$bcfi/2]
	layer straight $Rein 2 [expr pow(2.5,2)*2*asin(1)] [expr -$hcfi/4] [expr $bcfi/2] [expr -$hcfi/4] [expr -$bcfi/2]
        layer straight $Rein 2 [expr pow(2.5,2)*2*asin(1)] [expr $hcfi/4] [expr $bcfi/2] [expr $hcfi/4] [expr -$bcfi/2]
             
}


section fiberSec $ColumnSecs {

	patch quad $Ccore 20 20  [expr -$hcsi/2] [expr $bcsi/2] [expr -$hcsi/2] [expr -$bcsi/2] [expr $hcsi/2] [expr -$bcsi/2] [expr $hcsi/2] [expr $bcsi/2]
	patch quad $Ccover 6 20  [expr -$hcs/2] [expr $bcs/2] [expr -$hcs/2] [expr -$bcs/2] [expr -$hcsi/2] [expr -$bcs/2] [expr -$hcsi/2] [expr $bcs/2]
	patch quad $Ccover 20 6  [expr -$hcsi/2] [expr -$bcsi/2] [expr -$hcsi/2] [expr -$bcs/2] [expr $hcsi/2] [expr -$bcs/2] [expr $hcsi/2] [expr -$bcsi/2]
	patch quad $Ccover 6 20  [expr $hcsi/2] [expr $bcs/2] [expr $hcsi/2] [expr -$bcs/2] [expr $hcs/2] [expr -$bcs/2] [expr $hcs/2] [expr $bcs/2]
	patch quad $Ccover 20 6  [expr -$hcsi/2] [expr $bcs/2] [expr -$hcsi/2] [expr $bcsi/2] [expr $hcsi/2] [expr $bcsi/2] [expr $hcsi/2] [expr $bcs/2]

	layer straight $Rein 4 [expr pow(2,2)*2*asin(1)] [expr -$hcsi/2] [expr $bcsi/2] [expr -$hcsi/2] [expr -$bcsi/2]
	layer straight $Rein 4 [expr pow(2,2)*2*asin(1)] [expr $hcsi/2] [expr $bcsi/2] [expr $hcsi/2] [expr -$bcsi/2]
	layer straight $Rein 2 [expr pow(2,2)*2*asin(1)] [expr -$hcsi/6] [expr $bcsi/2] [expr -$hcsi/6] [expr -$bcsi/2]
	layer straight $Rein 2 [expr pow(2,2)*2*asin(1)] [expr $hcsi/6] [expr $bcsi/2] [expr $hcsi/6] [expr -$bcsi/2]
}


#section fiberSec $ColumnSect {
#	patch quad $Ccore 20 20  [expr -$hcsi/2] [expr $bcsi/2] [expr -$hcsi/2] [expr -$bcsi/2] [expr $hcsi/2] [expr -$bcsi/2] [expr $hcsi/2] [expr $bcsi/2]
#	patch quad $Ccover 6 20  [expr -$hcs/2] [expr $bcs/2] [expr -$hcs/2] [expr -$bcs/2] [expr -$hcsi/2] [expr -$bcs/2] [expr -$hcsi/2] [expr $bcs/2]
#	patch quad $Ccover 20 6  [expr -$hcsi/2] [expr -$bcsi/2] [expr -$hcsi/2] [expr -$bcs/2] [expr $hcsi/2] [expr -$bcs/2] [expr $hcsi/2] [expr -$bcsi/2]
#	patch quad $Ccover 6 20  [expr $hcsi/2] [expr $bcs/2] [expr $hcsi/2] [expr -$bcs/2] [expr $hcs/2] [expr -$bcs/2] [expr $hcs/2] [expr $bcs/2]
#	patch quad $Ccover 20 6  [expr -$hcsi/2] [expr $bcs/2] [expr -$hcsi/2] [expr $bcsi/2] [expr $hcsi/2] [expr $bcsi/2] [expr $hcsi/2] [expr $bcs/2]
#
#	layer straight $Rein 4 [expr pow(0.0125,2)*2*asin(1)] [expr -$hcsi/2] [expr $bcsi/2] [expr -$hcsi/2] [expr -$bcsi/2]
#	layer straight $Rein 4 [expr pow(0.0125,2)*2*asin(1)] [expr $hcsi/2] [expr $bcsi/2] [expr $hcsi/2] [expr -$bcsi/2]
#	layer straight $Rein 2 [expr pow(0.0125,2)*2*asin(1)] [expr $hcsi/6] [expr $bcsi/2] [expr $hcsi/6] [expr -$bcsi/2]
#	layer straight $Rein 2 [expr pow(0.0125,2)*2*asin(1)] [expr -$hcsi/6] [expr $bcsi/2] [expr -$hcsi/6] [expr -$b csi/2]
#}
#




#---------------------------Beams----------------
section fiberSec $BeamSecf { 

	patch quad $Ccore 20 20  [expr -$hbfi/2] [expr $bbfi/2] [expr -$hbfi/2] [expr -$bbfi/2] [expr $hbfi/2] [expr -$bbfi/2] [expr $hbfi/2] [expr $bbfi/2]
	patch quad $Ccover 6 20  [expr -$hbf/2] [expr $bbf/2] [expr -$hbf/2] [expr -$bbf/2] [expr -$hbfi/2] [expr -$bbf/2] [expr -$hbfi/2] [expr $bbf/2]
	patch quad $Ccover 20 6  [expr -$hbfi/2] [expr -$bbfi/2] [expr -$hbfi/2] [expr -$bbf/2] [expr $hbfi/2] [expr -$bbf/2] [expr $hbfi/2] [expr -$bbfi/2]
	patch quad $Ccover 6 20  [expr $hbfi/2] [expr $bbf/2] [expr $hbfi/2] [expr -$bbf/2] [expr $hbf/2] [expr -$bbf/2] [expr $hbf/2] [expr $bbf/2]
	patch quad $Ccover 20 6 [expr -$hbfi/2] [expr $bbf/2] [expr -$hbfi/2] [expr $bbfi/2] [expr $hbfi/2] [expr $bbfi/2] [expr $hbfi/2] [expr $bbf/2]

        layer straight $Rein 5 [expr pow(2.5,2)*2*asin(1)] [expr $hbfi/2] [expr $bbfi/2] [expr $hbfi/2] [expr -$bbfi/2]
        layer straight $Rein 4 [expr pow(2.0,2)*2*asin(1)] [expr -$hbfi/2] [expr $bbfi/2] [expr -$hbfi/2] [expr -$bbfi/2]
	
}



section fiberSec $BeamSecs { 

	patch quad $Ccore 20 20  [expr -$hbsi/2] [expr $bbsi/2] [expr -$hbsi/2] [expr -$bbsi/2] [expr $hbsi/2] [expr -$bbsi/2] [expr $hbsi/2] [expr $bbsi/2]
	patch quad $Ccover 6 20  [expr -$hbs/2] [expr $bbs/2] [expr -$hbs/2] [expr -$bbs/2] [expr -$hbsi/2] [expr -$bbs/2] [expr -$hbsi/2] [expr $bbs/2]
	patch quad $Ccover 20 6  [expr -$hbsi/2] [expr -$bbsi/2] [expr -$hbsi/2] [expr -$bbs/2] [expr $hbsi/2] [expr -$bbs/2] [expr $hbsi/2] [expr -$bbsi/2]
	patch quad $Ccover 6 20  [expr $hbsi/2] [expr $bbs/2] [expr $hbsi/2] [expr -$bbs/2] [expr $hbs/2] [expr -$bbs/2] [expr $hbs/2] [expr $bbs/2]
	patch quad $Ccover 20 6  [expr -$hbsi/2] [expr $bbs/2] [expr -$hbsi/2] [expr $bbsi/2] [expr $hbsi/2] [expr $bbsi/2] [expr $hbsi/2] [expr $bbs/2]
	
        layer straight $Rein 5 [expr pow(2.5,2)*2*asin(1)] [expr $hbsi/2] [expr $bbsi/2] [expr $hbsi/2] [expr -$bbsi/2]
        layer straight $Rein 3 [expr pow(2.0,2)*2*asin(1)] [expr -$hbsi/2] [expr $bbsi/2] [expr -$hbsi/2] [expr -$bbsi/2]
}


section fiberSec $BeamSect { 

	patch quad $Ccore 20 20  [expr -$hbti/2] [expr $bbti/2] [expr -$hbti/2] [expr -$bbti/2] [expr $hbti/2] [expr -$bbti/2] [expr $hbti/2] [expr $bbti/2]
	patch quad $Ccover 6 20  [expr -$hbt/2] [expr $bbt/2] [expr -$hbt/2] [expr -$bbt/2] [expr -$hbti/2] [expr -$bbt/2] [expr -$hbti/2] [expr $bbt/2]
	patch quad $Ccover 20 6  [expr -$hbti/2] [expr -$bbti/2] [expr -$hbti/2] [expr -$bbt/2] [expr $hbti/2] [expr -$bbt/2] [expr $hbti/2] [expr -$bbti/2]
	patch quad $Ccover 6 20  [expr $hbti/2] [expr $bbt/2] [expr $hbti/2] [expr -$bbt/2] [expr $hbt/2] [expr -$bbt/2] [expr $hbt/2] [expr $bbt/2]
	patch quad $Ccover 20 6  [expr -$hbti/2] [expr $bbt/2] [expr -$hbti/2] [expr $bbti/2] [expr $hbti/2] [expr $bbti/2] [expr $hbti/2] [expr $bbt/2]
	
        layer straight $Rein 4 [expr pow(2.5,2)*2*asin(1)] [expr $hbti/2] [expr $bbti/2] [expr $hbti/2] [expr -$bbti/2]
        layer straight $Rein 3 [expr pow(2.0,2)*2*asin(1)] [expr -$hbti/2] [expr $bbti/2] [expr -$hbti/2] [expr -$bbti/2]
}

section fiberSec $BeamSecp { 

	patch quad $Ccore 20 20  [expr -$hbpi/2] [expr $bbpi/2] [expr -$hbpi/2] [expr -$bbpi/2] [expr $hbpi/2] [expr -$bbpi/2] [expr $hbpi/2] [expr $bbpi/2]
	patch quad $Ccover 6 20  [expr -$hbp/2] [expr $bbp/2] [expr -$hbp/2] [expr -$bbp/2] [expr -$hbpi/2] [expr -$bbp/2] [expr -$hbpi/2] [expr $bbp/2]
	patch quad $Ccover 20 6  [expr -$hbpi/2] [expr -$bbpi/2] [expr -$hbpi/2] [expr -$bbp/2] [expr $hbpi/2] [expr -$bbp/2] [expr $hbpi/2] [expr -$bbpi/2]
	patch quad $Ccover 6 20  [expr $hbpi/2] [expr $bbp/2] [expr $hbpi/2] [expr -$bbp/2] [expr $hbp/2] [expr -$bbp/2] [expr $hbp/2] [expr $bbp/2]
	patch quad $Ccover 20 6  [expr -$hbpi/2] [expr $bbp/2] [expr -$hbpi/2] [expr $bbpi/2] [expr $hbpi/2] [expr $bbpi/2] [expr $hbpi/2] [expr $bbp/2]
	
        layer straight $Rein 4 [expr pow(2.0,2)*2*asin(1)] [expr $hbpi/2] [expr $bbpi/2] [expr $hbpi/2] [expr -$bbpi/2]
        layer straight $Rein 3 [expr pow(2.0,2)*2*asin(1)] [expr -$hbpi/2] [expr $bbpi/2] [expr -$hbpi/2] [expr -$bbpi/2]
}
