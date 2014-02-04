%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         komposfilter.fst
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         July 2003
%  Content:      enforcement of derivation and composition constraints
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

#tmp# = #surface-trigger# #morpheme_boundary_marker# <^Ax><I><Ge-Nom><INS-E><FB><VPART><UL>


% deletes base stem and compound stem features

ALPHABET = [#char# #entry-type# #orth-trigger# #ss-trigger# #tmp# <ge><zu>] \
[#category-KSF# #origin# <NoPref>]:<>

$ANY3$ = (. | <kompos>:<> .* [#char#] [#char#] [#char#])*
$ANY2$  = .*
$ANY$ = (. | <kompos>:<>)*

$hk$ = [#origin#]:<>

$KOMPOSFILTER$ = \
	(<Stem> (<Initial>:<> | <NoHy> | <NoDef>))? \
	($ANY2$ [<ABBR><ADV><CARD><NPROP><PRO><V><ORD><OTHER>]:<> |\
	 $ANY$  [<ADJ>]:<> |\
	$ANY3$  [<NN><TRUNC>]:<>) \
	<base>:<> $hk$ [#inflection#]

$KOMPOSFILTER$
