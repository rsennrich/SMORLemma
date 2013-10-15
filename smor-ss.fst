%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-ss.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         January 2005
%  Content:      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% replacement of � by ss

$TMP$ = [A-Z���a-z���0-9\ \-]
$TMP2$ = $TMP$ | {�}:{ss}
$Filter$ = <NoHy>:<>? $TMP$* {<>�}:{ss} $TMP2$*

$MORPH$ = "<morph2.a>" || $Filter$

<SS>:<> $MORPH$
