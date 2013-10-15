%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-uc.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         November 2004
%  Content:      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


$MORPH$ = "<morph2.a>"

$TMP$ = ([\ -`\{-�] | [a-z�-�]:[A-Z�-�] | {�}:{SS})*

$TMP$ = <NoHy>:<>? $TMP$ [a-z�-�]:[A-Z�-�] $TMP$

<UC>:<> ($MORPH$ || $TMP$)
