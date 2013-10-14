%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         elimX.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         August 2006
%  Content:      deletes redundant features in the SMOR analyses
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

$C$ = [#char#]
$DELPOS$ = <>:[#category#]

ALPHABET = [#char# #cap-trigger# #feature# \
<SUFF><HYP><QUANT><Old><13><DA><GA><GD><GDA><MN><NA><NDA><NGA><NGDA><PA><F>]

$X$ = [#orth-trigger#]? <>:<X>

(. |\
[<PREF><VPREF><VPART>] $DELPOS$ $X$ |\
<TRUNC> <X> |\
<>:<deriv>  $X$ <>:<deriv> $DELPOS$ |\
<>:<kompos> $X$ <>:<kompos> $DELPOS$ |\
<>:<kompos> $X$ $C$ |\
$DELPOS$ <SUFF>? <>:<base> $X$)*
