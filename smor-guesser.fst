%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-guesser.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         April 2005
%  Content:      guesser heuristics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"


$PHON$ = "<phon.a>"

% read the morphemes

$LEX$ = "guesser-lexicon"

$LEX$ = ("<map1.a>" || $LEX$) || "<map2.a>"


#include "flexion.fst"


$TMP$ = $LEX$ || "<sufffilter.a>" || "<komposfilter.a>"


%**************************************************************************
% add inflection and filter out incorrect combinations of stems and infl.
%**************************************************************************

$ANY$ = [#char# #orth-trigger# #ss-trigger# #surface-trigger# <FB><CB><VPART> \
	<I><Ge-Nom><UL><NoHy><ge><zu><no-ge> \
	#entry-type#]*

$MORPH$ = $TMP$ <X>:<> $FLEXION$ || $ANY$ $FLEXFILTER$ || "<infixfilter.a>"

$ANY$ = [A-Z���][A-Z���a-z������������\-]* [A-Z���a-z������������]

$MORPH$ = $ANY$ <>:<CB> $MORPH$

$MORPH$ = $MORPH$ || "<uplow.a>"

$MORPH$ = "<elim-disj.a>" || "<elimX.a>" || $MORPH$


%**************************************************************************
%  application of phonological rules
%**************************************************************************

$MORPH$ = <GUESSER>:<WB> $MORPH$ <>:<WB> || $PHON$

ALPHABET = [#char# #stemtype# #feature# <VPREF><VPART><QUANT><X><F><Old>]

<GUESSER> (.* \-)? (\
  [A-Z�-�] [A-Z�-�a-z�-�]* <>:<UC> |\
  [a-z�-�]+ <>:<LC> |\
  [a-z�-�]:[A-Z�-�] [a-z�-�]* <>:<CAP> |\
  [A-Z�-�][A-Z�-�]+ [a-z�-�]* <>:<CAP> |\
  [A-Z�-�]:[a-z�-�] [a-z�-�]* <>:<DECAP>)? .* || $MORPH$
