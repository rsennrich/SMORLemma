%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:    smor-cap.fst
%  Author:  Helmut Schmid; IMS, Universitaet Stuttgart
%  Content: analysis capitalised word forms which are normally
%           written in lower case
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

$MORPH$ = "<morph-lemma.a>"

% capitalise the first character
<CAP>:<> $MORPH$ || <NoHy>:<>? [a-zà-þ]:[A-ZÀ-Þ] [#char# #morpheme_boundary_marker#]*

