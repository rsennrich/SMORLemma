%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-ss.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         January 2005
%  Content:      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% replacement of ß by ss

$TMP$ = [A-ZÄÖÜa-zäöü0-9\ \-]
$TMP2$ = $TMP$ | {ß}:{ss}
$Filter$ = <NoHy>:<>? $TMP$* {<>ß}:{ss} $TMP2$*

$MORPH$ = "<morph-lemma.a>" || $Filter$

<SS>:<> $MORPH$
