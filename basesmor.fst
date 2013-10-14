%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         basesmor.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         November 2004
%  Content:      deletes redundant features in the SMOR analyses
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

$MORPH$ = "<basemorph.a>"

ALPHABET = [#char# #stemtype# #feature# \
<NoHy><CAP><QUANT><Old><X><F> \
<13><DA><GA><GD><GDA><MN><NA><NDA><NGA><NGDA><PA><PREF>] \
<PREF>:[<VPART><VPREF>]

$MORPH$ = .* || $MORPH$


%**************************************************************************
% hyphenated words
%**************************************************************************

% blanks not allowed at the beginning or at the end
$ANY$ = [\"\,\.\;ß\?\!\'\&\+\%\*Ω≤∞\:\(\)0-9\/A-Za-z‡ËÏÚ˘·ÈÌ˙Û‚ÍÓÙ˚‰Îˆ¸¿»Ã“Ÿ¡…Õ⁄”¬ Œ‘€ƒÀ÷‹ﬂÁÒ\<\>]
$ANYB$ = \  | $ANY$
$ANYB-$ = \- | $ANYB$
$TMP$ = $ANY$ ($ANYB$* $ANY$)?
$Pref$ = \{:<> $TMP$ \}:<> \- {<TRUNC><X>}:{}

ALPHABET = _$MORPH$
% hyphenated forms are restricted to the following parts of speech
$HMORPH$ = .* [<+ADJ><+NN><+NPROP>] .* || $MORPH$

$TMP$ =  (\- [A-Z¿-ﬁ]:[a-z‡-˛])? $ANYB-$*

$MORPH$ = $MORPH$ || <NoHy>:<>? $ANYB-$*

$T$ = (\- <HYP>:<><X>:<>)? $Pref$+ $HMORPH$
$MORPH$ = $MORPH$ | $T$

$T$ = (\- <HYP>:<><X>:<>) $HMORPH$ || $TMP$
$MORPH$ = $MORPH$ | $T$

$T$ = $Pref$+ <+TRUNC>:<>
$MORPH$ = $MORPH$ | $T$

$MORPH$

% ($MORPH$ || <NoHy>:<>? $ANYB-$*) |\
%   $Pref$+ <+TRUNC>:<> |\
%   (\- <HYP>:<><X>:<>)? $Pref$+ $HMORPH$ |\
%  ((\- <HYP>:<><X>:<>) $HMORPH$ || $TMP$)
