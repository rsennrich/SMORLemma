%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:    smor-cap.fst
%  Author:  Helmut Schmid; IMS, Universitaet Stuttgart
%  Content: analysis capitalised word forms which are normally
%           written in lower case
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

$MORPH$ = "<morph2.a>"

% capitalise the first character
<CAP>:<> $MORPH$ || <NoHy>:<>? [a-zà-þ]:[A-ZÀ-Þ] [#char#]*

