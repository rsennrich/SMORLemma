%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         uplow.fst
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         July 2003
%  Content:      enforcement of derivation and composition constraints
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

#tmp# = #surface-trigger# <^Ax><I><INS-E><NoHy><NoDef><FB><UL><^pl><^Gen><^Del>

$C$ = [#char# #orth-trigger# #ss-trigger# #tmp# <^imp><^zz><ge>]

$S$  = $C$ ($C$ | <CB>)*

$S2$ = (<CB>:<>[A-ZÀ-Þ] | <CB>:<>?[a-zà-þ]) $S$

$UPLOW$ = <^UC>:<> [<NoHy><NoDef>]? <>:<^UC> $S2$ <Low#>:<> |\
	  <CB>:<>  $S$ <Fix#>:<> |\
	  [<CB><>]:<^UC> $S$ <Up#>:<> |\
	  [<CB><>]:<CB>  $S$ <Low#>:<> |\
	  <CB>:<>  $S$ [\ ] $S$ <Low#>:<>

$UPLOW$
