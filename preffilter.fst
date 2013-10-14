%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         preffilter.fst
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         July 2003
%  Content:      enforcement of derivation and composition constraints
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prefix Filter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#tmp# = #surface-trigger# <^Ax><I><Ge-Nom><INS-E><FB><VPART><UL>

ALPHABET = [#char# #entry-type# #orth-trigger# #ss-trigger# #tmp# \
	 <no-ge><Initial><NoHy><NoDef> <zu>]
 
$ANY2$ = .*
$ANY$ = (.|<ge>)*

$bdk$ = [#stemtype#]
$klassisch$ = [<frei><gebunden><kurz><lang><lang2>]
$NS$ = [<nativ> #Nom-class#]

% prefixes like "ver" delete the <ge> marker and generate a pseudo stem.
% A following uppercase character is turned to lowercase.
$GE$ = <Stem>:<> <ge>:<>? [A-ZÄÖÜ]:[a-zäöü]? [a-zäöüß]

$FILTER$ = \
(<Prefix>:<Stem> <no-ge>:<> [#char# #surface-trigger# #ss-trigger# <^Ax><I>]* \
	{<V><nativ>}:{<>} <NoDef>? $GE$ $ANY2$ <V> $bdk$ $NS$) |\
(<Prefix>:<Stem> <no-ge>:<> [#char# #surface-trigger# #ss-trigger# <^Ax><I>]* \
	{<V><klassisch>}:{<>} <NoDef>? $GE$ $ANY2$ <V> $bdk$ $klassisch$) |\
(<Prefix>:<Stem> <no-ge>:<> [#char# #surface-trigger# #ss-trigger# <^Ax><I>]* \
	{<V><fremd>}:{<>} <NoDef>? $GE$ $ANY2$ <V> $bdk$ <fremd>) |\
(<Prefix> [#char# #ss-trigger# #surface-trigger# <^Ax><I><Ge-Nom><INS-E><FB>]* (\
	{<ADJ><nativ>}:{<>}    $ANY$ <ADJ>$bdk$ <nativ> |\
	{<ABBR><nativ>}:{<>}   $ANY$ <ABBR>$bdk$ <nativ> |\
	{<NN><nativ>}:{<>}     $ANY$ <NN> $bdk$ <nativ>  |\
	{<NN><fremd>}:{<>}     $ANY$ <NN> $bdk$ <fremd>  |\
	{<NPROP><nativ>}:{<>}  $ANY$ <NPROP> $bdk$ <nativ>  |\
	{<NPROP><fremd>}:{<>}  $ANY$ <NPROP> $bdk$ <fremd>  |\
	{<ADJ><fremd>}:{<>}    $ANY$ <ADJ>$bdk$ <fremd>  |\
	{<ADJ><klassisch>}:{<>}$ANY$ <ADJ>$bdk$ $klassisch$ |\
	{<NN><klassisch>}:{<>} $ANY$ <NN> $bdk$ $klassisch$ |\
	{<V><nativ>}:{<>}      $ANY$ <V>  $bdk$ $NS$ |\
	{<V><klassisch>}:{<>}  $ANY$ <V>  $bdk$ $klassisch$ |\
	{<V><fremd>}:{<>}      $ANY$ <V>  $bdk$ <fremd>))

$PREFFILTER$ = $FILTER$ [#inflection#]?

$PREFFILTER$
