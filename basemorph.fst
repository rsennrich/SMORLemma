%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         basemorph.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         April 2003
%  Content:      main file of the German morphology   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

% define a transducer for numeric morphemes
#include "NUM.fst"

% read the morphemes

$LEX$ = "lexicon/lexicon" \
% add the numeric stems to the other morphems
| $NumStems$ \
% add repetitive prefixes
| <Prefix>((ur<PREF>)+ | (vor<PREF>)+) [<ADJ><NN>]<nativ>

% delete certain symbols on the upper and lower level
$NumPref$ = "<map1.a>" || $NumPref$ || "<map2.a>"

$LEX$ = ("<map1.a>" || $LEX$ || "<map2.a>") [<OLDORTH><NEWORTH>]? || "<map3.a>"



%**************************************************************************
% extraction of sublexica
%**************************************************************************

ALPHABET = [#char# #category-KSF# #stemtype# #origin# #inflection# #Nom-class#\
	 #ss-trigger# #surface-trigger# #morpheme_boundary_marker#] <FB><^Ax><I><Ge-Nom><UL><VPART> \
	 <Initial><NoHy><ge><no-ge><zu><NoPref>


$NoDef2NULL$ = (.* | <NoDef>:<> | <INS-E> | [#entry-type#])*

% base derivation and compound stems (without derivation suffixes)
$I$ = <Stem> (. | <NoDef>)*
$BDKStems$ = $LEX$ || $I$
$BaseStems$ = $BDKStems$ || ($I$ <base> .*)
$NounCompFilter$ = ($I$ <NN><kompos> .*)

% prefix morphemes
$Prefixes$ = $LEX$ || (<Prefix> .*)
$VPrefixes$ = $Prefixes$ || (<Prefix> .* <V> .*)

% derivation suffixes which combine with simplex stems
$SimplexSuffixes$   = $LEX$ || (<Suffix><simplex>:<> .*)

% derivation suffixes which combine with suffixed stems
$SuffDerivSuffixes$ = $LEX$ || (<Suffix><suffderiv>:<> .*)

% derivation suffixes which combine with prefixed stems
$PrefDerivSuffixes$ = $LEX$ || (<Suffix><prefderiv>:<> .*)

% suffixes combining with a number and a simplex stem like "dreiarmig"
$QuantSuffixes$ = $LEX$ || (<Suffix><QUANT>:<> <simplex>:<> .*)


#include "flexion.fst"
#include "defaults.fst"

$BDKStems$ = $BDKStems$ || $NoDef2NULL$


%**************************************************************************
% derivation and composition
%**************************************************************************

$X$ = [<OLDORTH><NEWORTH>]? <X>:<>

% derivation suffixes to be added to simplex stems
$Suffs1$ = ($X$ $SimplexSuffixes$ ($X$ $SuffDerivSuffixes$)*)?

% derivation suffixes to be added to prefixed stems
$Suffs2$ = ($X$ $PrefDerivSuffixes$ ($X$ $SuffDerivSuffixes$)*)?

% suffixes for "Dreifarbigkeit"
$QSuffs$ = $X$ $QuantSuffixes$ ($X$ $SuffDerivSuffixes$)*

% dreistündig, 3stündig, 3-stündig, Mehrfarbigkeit, Vierfarbdrucker
$NounCompStems$ = $BDKStems$ || $NounCompFilter$
$Sx$ = $BDKStems$ $QSuffs$

$TMP$ = $Sx$
#include "sufffilter.fst"
$Sx$ = $TMP$

$Sx$ = $NumPref$ $X$ ($Sx$ | $NounCompStems$)
$Sx$ = $Sx$ || "<preffilter.a>"

$S0$ = $BDKStems$ $Suffs1$

$TMP$ = $S0$
#include "sufffilter.fst"
$S0$ = $TMP$

$P1$ = $Prefixes$ $X$ $S0$ || "<preffilter.a>"

$S1$ = $P1$ $Suffs2$

$TMP$ = $S1$
#include "sufffilter.fst"
$S1$ = $TMP$

$P1$ = <>

$TMP$ = $S0$ | $S1$ | $Sx$
$Sx$ = <>
$S0$ = <>
$S1$ = <>

$T$ = $TMP$ $X$

$TMP$ = $T$* $TMP$
$T$ = <>

$TMP$ = $TMP$ || "<komposfilter.a>"

%**************************************************************************
% add inflection and filter out incorrect combinations of stems and infl.
%**************************************************************************

$MORPH$ = $TMP$ <X>:<> $FLEXION$ || $FLEXFILTER$ || "<infixfilter.a>"
$TMP$ = <>

$MORPH$ = $MORPH$ || "<uplow.a>"


#include "FIX.fst"
#include "PRO.fst"

$MORPH$ = $Fix_Stems$ | $Pro_Stems$ | $MORPH$


%**************************************************************************
%  application of phonological rules
%**************************************************************************

$InsertElisionMarker$ = <>

#include "phon.fst"

ALPHABET = [#char# #cap-trigger# #feature# #stemtype#\
    <SUFF><HYP><QUANT><Old><13><DA><GA><GD><GDA><MN><NA><NDA><NGA><NGDA><PA><F>] \
    <PREF><VPREF><VPART><TRUNC><X>

%filter: el/er e-elision can only happen if next morpheme starts with "eui"
$ANALYSIS_FILTER$ = ([^<ambig-e-elisionVerb><ambig_umlautung_temp>]* (<ambig-e-elisionVerb> [#stemtype# <X> #feature#]+ ([EUIeui] | <+V><1><Sg><Pres>))* [^<ambig-e-elisionVerb><ambig_umlautung_temp>]*)*

$ANALYSIS_FILTER$ || $MORPH$