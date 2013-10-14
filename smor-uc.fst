%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-uc.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         November 2004
%  Content:      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


$MORPH$ = "<morph2.a>"

$TMP$ = ([\ -`\{-ß] | [a-zà-þ]:[A-ZÀ-Þ] | {ß}:{SS})*

$TMP$ = <NoHy>:<>? $TMP$ [a-zà-þ]:[A-ZÀ-Þ] $TMP$

<UC>:<> ($MORPH$ || $TMP$)
