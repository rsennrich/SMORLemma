%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         NUM.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         July 2003
%  Content:      definition of cardinal and ordinal number stems
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% exports:
% $NumStems$
% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Cardinals                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$CardStem/2-9$ = zw(ei|o) | drei | vier | fünf | sechs | sieben | acht | neun
$NumStem/11-19$ = elf | zwölf | (drei|vier|fünf|sech|sieb|acht|neun)zehn
$NumStem/10-19$ = zehn | $NumStem/11-19$
$NumStem/20-90$ = dreißig | (zwan|vier|fünf|sech|sieb|acht|neun)zig

$Card/2-99$ = \
	$CardStem/2-9$ |\
	$NumStem/10-19$ |\
	((ein | $CardStem/2-9$) und)? $NumStem/20-90$

$Card/2-999$ = \
	$Card/2-99$ |\
	(ein | $CardStem/2-9$ | $NumStem/11-19$)? hundert((und)? $Card/2-99$)?

$Card/101-901$ = \
	((ein | $CardStem/2-9$ | $NumStem/11-19$)? hundert (und)?) ein

$Card/2-999999$ = \
	$Card/2-999$ | \
	(ein | $Card/2-999$)? tausend ((und)? $Card/2-999$)?

$Card/101-999901$ = \
	$Card/101-901$ | \
	(ein | $Card/2-999$)? tausend (und)? (ein | $Card/101-901$)

$T$ = ein | $Card/2-999999$ | $Card/101-999901$ s?

$Cardeinhalb$ =  $T$ (ein (halb | drittel | viertel) |\
	zweidrittel | dreiviertel) | anderthalb | zweidrittel| dreiviertel

$CardDeriv$ =  null | eins | $Card/2-999$? Milli(on<>:e|arde)<>:n |\
	$Card/2-999999$ | $Card/101-999901$ s | $Cardeinhalb$

$CardDeriv1$ =  ein | $CardDeriv$

$CardKompos$ = $CardDeriv$

$CardBase$ = null | $Card/2-999999$ | $Cardeinhalb$ |\
	((ein | $CardStem/2-9$) ein | andert) halbtausend

$CardBase1$ = (ein | $Card/101-999901$) s:<>


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Ordinals                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$OrdStem/3-9$ = dritt | viert | fünft | sechst | sieb(en)?t | acht | neunt
$OrdStem/1-9$ = erst | zweit | $OrdStem/3-9$

$Ord/3-99$ = ( \
	$OrdStem/3-9$ |\
	$NumStem/10-19$t |\
	$NumStem/20-90$st |\
	(ein | $CardStem/2-9$) und $NumStem/20-90$st )
$Ord/1-99$ = erst | zweit | $Ord/3-99$

$Ord/3-999$ = ( \
	$Ord/3-99$ |\
	(ein | $CardStem/2-9$)? hundertst |\
	(ein | $CardStem/2-9$)? hundert (und)? $Ord/1-99$ )
$Ord/1-999$ = erst | zweit | $Ord/3-999$

$Ord/3-999999$ = ( \
	$Ord/3-999$ | \
	(ein | $Card/2-999$)? tausendst |\
	(ein | $Card/2-999$)? tausend (und)? $Ord/1-999$ )

$Ord/mill$ = (ein | zehn | elf | zwölf | $CardStem/2-9$)? [mb]illi(on|ard)st

$Ord0$ = nullt | erst | zweit | $Ord/3-999999$ | $Ord/mill$


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Digit Numbers                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$DigCard$ = [0-9]+ ([\,\./] [0-9]+)*
$DigOrd$ = $DigCard$\.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Roman Numbers                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$Roman1-9$ = I | II | III | IV | V | VI | VII | VIII | IX 
$Roman10-90$ = X | XX | XXX | XL | L | LX | LXX | LXXX | XC 
$Roman100-900$ = C | CC | CCC | CD | D | DC | DCC | DCCC | CM 
$Roman1000-3000$ = M | MM | MMM
$Roman$ = $Roman1000-3000$? $Roman100-900$? $Roman10-90$? $Roman1-9$?

$Roman$ = $Roman$ & [IVXLCDM]+

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        Resulting transducers                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$CbnC$ = <CARD><base><nativ><Card>
$CbnC1$ = <CARD><base><nativ><Card1>
$ObnO$ = <ORD><base><nativ><Ord>
$ObnD$ = <ORD><base><nativ><DigOrd>

$NumBase$ = <Stem><Initial>\
	($CardBase$	$CbnC$ |\
	 $CardBase1$	$CbnC1$ |\
	 $Ord0$		$ObnO$ |\
	 $DigCard$	$CbnC$ |\
	 $DigOrd$	$ObnD$ |\
	 $Roman$	$CbnC$)

$NumDeriv$ = <Stem>\
	 ($CardDeriv$	<CARD> |\
	  $Ord0$	<ORD> |\
	  $DigCard$	<CARD>:<DIGCARD>) <deriv><nativ>

$NumKompos$ = <Stem> (\
	    $Ord0$	 <ORD> |\
	    $CardKompos$ <CARD> \
	    ) <kompos><nativ>

$NumPref$ = <Prefix> (\
	$CardDeriv1$ |\
	$DigCard$ \-? |\
	beid | mehr | viel | doppel | ganz | gegen | dies | vor | nach) \
	<PREF>[<ADJ><NN>][<nativ><fremd><klassisch>]


$T$ = <Stem>ver<VPREF>:<>$CardBase$<CARD>:<>fach {<ADJ><SUFF>}:{}{en}:{}

$verXfachen$ = $T$ (<V><SUFF>:<><base><nativ><VVReg> |\
  <V><SUFF>:<><deriv><nativ> |\
  {<V><SUFF>}:{} <PPast>:t <ADJ><SUFF>:<><base><nativ><Adj&> |\
  {<V><SUFF>}:{} {}:{end} <PPres>:<><ADJ><SUFF>:<><base><nativ><Adj+>)

$NumStems$ = $NumBase$ | $NumDeriv$ | $NumKompos$ | $verXfachen$ | $Roman$

