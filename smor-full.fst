%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-full.fst
%  Author:       Rico Sennrich
%  Date:         February 2013
%  Content:      allow spelling variations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"
ALPHABET = [#char# #morpheme_boundary_marker# #part-of-speech# #category# #feature#]

% replacement of ß
$ss$ = {ß}:{ss} ^->? (__ .?)
% replacement of umlaut
$umlaut$ = [äöüÄÖÜ]:[aouAOU]<>:e ^->? (__ .?)
%capitalization
$CAP$ = [^<TRUNC>]* || <CAP>:<> "<smor.a>" || <NoHy>:<>? [a-zà-þ]:[A-ZÀ-Þ] [#char# #morpheme_boundary_marker#]*

$MORPH$ = "<smor.a>" | $CAP$ | "<smor-guesser.a>"

$VARMORPH$ = [^<TRUNC>]* || $MORPH$ || $ss$ || $umlaut$

$MORPH$ | $VARMORPH$