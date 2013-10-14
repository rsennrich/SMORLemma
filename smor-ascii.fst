%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-ascii.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         January 2005
%  Content:      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% replacement of umlauts and ß
$TMP$ = [A-Za-z0-9\ \-] | {ß}:{ss}
$TMP2$ = $TMP$ | [הצüִײÜ]:[aouAOU]<>:e
$Filter$ = <NoHy>:<>? $TMP$* ([הצüִײÜ]:[aouAOU]<>:e) $TMP2$*

$MORPH$ = "<morph2.a>" || $Filter$

<ASCII>:<> $MORPH$
