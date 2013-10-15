%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         infixfilter.fst
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         July 2003
%  Content:      enforcement of derivation and composition constraints
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% insertion of the prefix "ge" controlled by the lexical marker <ge>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#tmp# = #surface-trigger# #morpheme_boundary_marker# <^Ax><I><INS-E><NoHy><NoDef><CB><FB><UL><VPART> \
	<Low#><Up#><Fix#> <^imp><^UC><^Ax><^pl><^Gen><^Del>

$C1$ = [#char# #orth-trigger# #ss-trigger# #tmp# <zu><^zz>]

$C2$ = $C1$ | [#entry-type#]

% replace <ge> with "ge" if followed by perfect participle marker
% or ge-nominalisation otherwise delete <ge>

$GE$ =  $C2$* |\
	$C2$* <ge>:<> {<>}:{ge} $C1$* <^pp>:<> $C1$* |\
	$C2$* <ge>:<> {<>}:{ge} $C1$* <Suffix><Ge-Nom>:<> $C1$* |\
	$C2$* <ge>:<> $C1$* |\
	$C2$* $C1$* <^pp>:<> $C1$*


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% insertion of infinitival "zu"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$C1$ = [#char# #orth-trigger# #ss-trigger# #tmp#]

$C1$ = $C1$ | <zu>:<>

$C2$ = $C1$ | [#entry-type#]

% insert "zu" after verbal prefixes if followed by infinitive marker

$ZU$ =  $C2$* |\
	$C2$* {<zu>}:{zu} $C1$* <^zz>:<> $C1$* |\
	$C2$* <Prefix> $C1$* <Stem> {<>}:{zu} $C1$* <^zz>:<> $C1$*


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Imperatives have no separable prefixes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#tmp# = #surface-trigger# #morpheme_boundary_marker# <^Ax><I><INS-E><NoHy><NoDef><FB><UL><^pl><^Gen><^Del>


$C1$ = [#char# #orth-trigger# #ss-trigger# #tmp#\
	<^UC><CB><SS><SSneu><SSalt><Low#><Up#><Fix#> ]

$C2$ =  $C1$ |<VPART>:<> | [<Stem><Prefix>]:<CB> | <Suffix>:<FB>


$IMP$ =  $C2$* | <Stem>:<CB> $C1$* <^imp>:<> $C1$*


$GE$ || $ZU$ || $IMP$
