%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-ascii.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         January 2005
%  Content:      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% replacement of umlauts and �
$TMP$ = [A-Za-z0-9\ \-] | {�}:{ss}
$TMP2$ = $TMP$ | [������]:[aouAOU]<>:e
$Filter$ = <NoHy>:<>? $TMP$* ([������]:[aouAOU]<>:e) $TMP2$*

$MORPH$ = "<morph2.a>" || $Filter$

<ASCII>:<> $MORPH$
