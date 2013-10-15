%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         sufffilter.fst
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         July 2003
%  Content:      enforcement of derivation and composition constraints
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

% expression matching either a simplex word form
% or the features of the last morphem

#tmp# = #surface-trigger# #morpheme_boundary_marker# <^Ax><I><Ge-Nom><INS-E><FB><VPART><UL>

$C1$ = [#char# #orth-trigger# #deko-trigger# #ss-trigger# #tmp# \
     <FB><zu><Prefix>]

$C2$ = [#char# #ss-trigger# #tmp# <FB><Suffix>]

$C3$ = [#char# #category-KSF# #stemtype# #origin# #Nom-class# #ss-trigger# \
     #tmp# <FB><ge><zu>]

$TAIL$ = ($C1$* <Stem> $C1$* $C2$*)? $C3$* [#inflection#]?


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% phonological rules applied prior to the feature checking
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Physi+ik -> Physik
ALPHABET = [#char# #entry-type# #deko-trigger# #orth-trigger# #ss-trigger# \
	    #tmp# #category-KSF# #stemtype# <FB><zu>]  $TAIL$ i:<>

$SF_X$ = (Phys|Anästhesi|Epidemi)
$Y$ = <NN><deriv><gebunden>[<OLDORTH><NEWORTH>]? \
      <Suffix><gebunden><deriv><NN><UL>?

$SUFFFILTER$ = ($SF_X$) i <=> <> ([#morpheme_boundary_marker#]* $Y$ (ik|isch|ie))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Herkunft Filter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ALPHABET = [#entry-type# #char# #category-KSF# #stemtype# #deko-trigger# \
	 #orth-trigger# #ss-trigger# #tmp# <FB><zu>]

$ANY$ = .*

$B$ = [<OLDORTH><NEWORTH>]? <Suffix>

$FILTER$ = (\
	<nativ>:<>   $B$ <nativ>:<> |\
	<frei>:<>    $B$ <frei>:<> |\
	<gebunden>:<>$B$ <gebunden>:<> |\
	<kurz>:<>    $B$ <kurz>:<> |\
	[<lang><lang2>]:<>    $B$ <lang>:<> |\
	<lang2>:<>    $B$ <lang2>:<> |\
	<fremd>:<>   $B$ <fremd>:<> |\
	<NSFem_0_en>:<>	$B$	<NSFem_0_en>:<> |\
	<NSFem_0_$e>:<>	$B$	<NSFem_0_$e>:<> |\
	<NSFem_0_n>:<>	$B$	<NSFem_0_n>:<> |\
	<NSFem/Sg>:<>		$B$	<NSFem/Sg>:<> |\
	<NS-er>:<>		$B$	<NS-er>:<> |\
	<NSMasc-s/$sse>:<>	$B$	<NSMasc-s/$sse>:<> |\
	<NSMasc_es_$e>:<>	$B$	<NSMasc_es_$e>:<> |\
	<NSMasc_es_e>:<>	$B$	<NSMasc_es_e>:<> |\
	<NSMasc/Sg_es>:<>	$B$	<NSMasc/Sg_es>:<> |\
	<NSMasc/Pl>:<>		$B$	<NSMasc/Pl>:<> |\
	<NSNeut_es_e>:<>	$B$	<NSNeut_es_e>:<>)

$HERKUNFT$ = ($ANY$ $FILTER$)* $TAIL$

% optional e deletion at the end of feminine nominalizations: Bitte -> Bitt
$HERKUNFT$ = $HERKUNFT$ |\
  <Stem>[a-z]+e:<><V><deriv><NSFem_0_n>:<>[<OLDORTH><NEWORTH>]?<Suffix><NSFem_0_n>:<><deriv><V><NN><kompos><nativ>



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% check of stem type feature
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ALPHABET = [#char# #entry-type# #category-KSF# #deko-trigger# #orth-trigger# \
	 #ss-trigger# #tmp# <FB><zu>]

$ANY$ = .*

$FILTER$ = (\
	<deriv>:<>  $B$ <deriv>:<> |\
    <deriv-genom>:<>  $B$ <deriv-genom>:<> |\
	<kompos>:<> $B$ <kompos>:<>)


$STEMTYPE$ = ($ANY$ $FILTER$)* $TAIL$


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% check of category feature
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ALPHABET = [#char# #entry-type# #deko-trigger# #orth-trigger# #ss-trigger#\
	  #tmp# <FB><zu>]

$ANY$ = .*

$FILTER$ = (\
	<ABBR>:<>	$B$	<ABBR>:<> |\
	<ADJ>:<>	$B$	<ADJ>:<> |\
	<ADV>:<>	$B$	<ADV>:<> |\
	<CARD>:<>	$B$	<CARD>:<> |\
	<DIGCARD>:<>	$B$	<DIGCARD>:<> |\
	<NN>:<>		$B$	<NN>:<> |\
	<NPROP>:<>	$B$	<NPROP>:<> |\
	<ORD>:<>	$B$	<ORD>:<> |\
	<PRO>:<>	$B$	<PRO>:<> |\
	<V>:<>		$B$	<V>:<>)

$CATCHECK$ = ($ANY$ $FILTER$)* $TAIL$


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% phonological rules
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


ALPHABET = [#char# #entry-type# #deko-trigger# #orth-trigger# #ss-trigger#\
	 #tmp# <zu>]


$Cons$ = [BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyzß]

$SF_TMP$ = [AOU]:[ÄÖÜ] | A:Ä (a:<> | u) | $Cons$ ([aou]:[äöü] | a:ä (a:<> | u))

$UMLAUTUNG$ =  .* ($SF_TMP$ $Cons$* ([e<e>][rl])? [#ss-trigger#]? [#morpheme_boundary_marker#]*\
	($B$ <UL>:<> .*)+) $TAIL$

$SUFFFILTER$ = $SUFFFILTER$ || $HERKUNFT$ || $STEMTYPE$ || $CATCHECK$

ALPHABET = [#char# #entry-type# #deko-trigger# #orth-trigger# #ss-trigger# #tmp# <zu>] $TAIL$

% fieber+ig -> fiebrig
$C$ = [bdfghklmnprstvwxz]
$R$ = (.* ($C$ e:<> [rl] [#morpheme_boundary_marker#]* [<OLDORTH><NEWORTH>]? <Suffix><UL>? ig<ADJ>)+ .*)+


ALPHABET = [#char# #cap-trigger# #feature# #stemtype#\
    <SUFF><HYP><QUANT><Old><13><DA><GA><GD><GDA><MN><NA><NDA><NGA><NGDA><PA><F>] \
    <PREF><VPREF><VPART><TRUNC><X>

$TMP$ = $TMP$ || $SUFFFILTER$
$TMP$ = ((.* <ambig_umlautung>:<ambig_umlautung_temp>* .*)* || ($TMP$ || $UMLAUTUNG$)) | $TMP$
$TMP$ = $TMP$ | (($TMP$ || $R$) <ambig_e-elision-ig>:<>)
