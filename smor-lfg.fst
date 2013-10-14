%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-lfg.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         November 2004
%  Content:      adds hyphenated forms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$MORPH$ = "<morph.a>"


%**************************************************************************
% hyphenated words
%**************************************************************************

% blanks not allowed at the beginning or at the end
$L$ = [A-ZÀÈÌÒÙÁÉÍÚÓÂÊÎÔÛÄËÖÜ]
$l$ = [a-zàèìòùáéíúóâêîôûäëöüßçñ]
$ANY$ = [\"\,\.\;§\$\?\!\'\&\+\%\*½²°\:\(\)0-9\/\<\>] | $L$ | $l$
$ANYB$ = \  | $ANY$
$ANYB-$ = \- | $ANYB$
$TMP$ = $ANY$ ($ANYB$* $ANY$)?
$PrefT$ = \{:<> $TMP$ \}:<> \- <TRUNC>:<>
$Pref$ = \{:<> (($L$|$l$) $l$+ | $L$ $L$+) \}:<> \-

$TMP$ =  <NoHy>:<>? (\- <TRUNC>:<> ([A-ZÀ-Þ]:[a-zà-þ] | $ANY$))? $ANYB-$*

ALPHABET = $MORPH$
ALPHABET = _(.)

% hyphenated forms are restricted to the following parts of speech
$HMORPH$ = .* [<+ADJ><+NN><+NPROP>] .* || $MORPH$

$HMORPH$ = (<>:\- <TRUNC>)? $PrefT$* $HMORPH$ || $TMP$

$TMP$ = $PrefT$* $Pref$ <+TRUNC>:<>

$HMORPH$ = $HMORPH$ | $TMP$

$MORPH$ = $MORPH$ || <NoHy>:<>? $ANYB-$*

$MORPH$ | $HMORPH$
