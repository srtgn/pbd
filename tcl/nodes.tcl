
####################Node's Coordinate##################
set H 300
set S 600

node	1	0	        0	0
node	2	[expr 1*$S]	0	0
node	3	[expr 2*$S]	0	0
node	4	[expr 3*$S]	0	0

node	5	0	        [expr 1*$H]	0
node	6	[expr 1*$S]	[expr 1*$H]	0
node	7	[expr 2*$S]	[expr 1*$H]	0
node	8	[expr 3*$S]	[expr 1*$H]	0

node	9	0	        [expr 2*$H]	0
node	10	[expr 1*$S]	[expr 2*$H]	0
node	11	[expr 2*$S]	[expr 2*$H]	0
node	12	[expr 3*$S]	[expr 2*$H]     0

node	13	0	        [expr 3*$H]	0
node	14	[expr 1*$S]	[expr 3*$H]	0
node	15	[expr 2*$S]	[expr 3*$H]	0
node	16	[expr 3*$S]	[expr 3*$H]	0

node	17	0	        [expr 4*$H]	0
node	18	[expr 1*$S]	[expr 4*$H]     0
node	19	[expr 2*$S]	[expr 4*$H]     0
node	20	[expr 3*$S]	[expr 4*$H]     0