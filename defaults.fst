%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         defaults.fst
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         July 2003
%  Content:      generation of default base, derivation and composition stems
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% default derivational and composition stem of adjectives and nouns
% ending in long vowel + ß

ALPHABET = [#char# <SS>]

$C$ = [<ADJ><NN><NPROP>]

$TMP$ = .* ss <SS>? $C$ <>:<base> || $BDKStems$

$F$ = $C$ {<base> [<nativ><fremd><frei>]}:{} \
	[<NFem/Sg><NNeut/Sg_es><Name-Masc_0><Name-Neut_0><FamName_0>]:<>

$DefStems-ss$ = $TMP$ || <Stem>:<> .* ß <SS> $F$

$F$ = $C$ {<base> [<nativ><fremd><frei>]}:{} \
	[<Adj~+e><NFem-s/$sse><NFem-s/ssen><NMasc-s/$sse><NMasc-s/Sg>\
	<NMasc-s/sse><NNeut-s/$sser><NNeut-s/sse>]:<>

$DefStems-ss$ = $DefStems-ss$ | ($TMP$ || <Stem>:<> .* ß <>:<SS> $F$)

$F$ = $C$ {<base> [<nativ><fremd><frei>]}:{} \
	[<Adj$><Adj+e><AdjPos><AdjPosPred><FamName_0><FamName_s><NFem/Sg>\
	<NMasc/Sg_es><NMasc_es_$e><NMasc_es_$er><NMasc_es_e><NNeut/Sg_0>\
	<NNeut/Sg_es><NNeut_es_$e><NNeut_es_e><Name-Masc_0><Name-Neut_0>\
	<Name-Neut_s>]:<>

$DefStems-ss$ = $DefStems-ss$ | ($TMP$ || <Stem>:<> .* ß $F$)


% default derivational stem of adjectives ending in el or er

$DefStems-el/er$ = .* <ADJ> <>:<base> || $BDKStems$ ||\
    <Stem>:<> [#char#]* [#morpheme_boundary_marker#]* <>:<^Ax><ADJ> {<base>[<nativ><fremd><frei>]<Adj-el/er>}:{}


% derivation of default stems from inflected word forms

$TMP$ = $VPrefixes$ <X>:<> $BaseStems$ || $NoDef2NULL$ || "<preffilter.a>"

$TMP$ = ($BaseStems$ | $TMP$) || "<komposfilter.a>"

$ANY$ = [#char# #orth-trigger# #ss-trigger# #surface-trigger# <I> \
	<Ge-Nom><UL><NoDef><NoHy><ge><zu><no-ge><CB><FB><VPART> \
	#entry-type#]*

$TMP$ = $TMP$ $FLEXION$ 
$TMP$ = $TMP$ || $ANY$ $FLEXFILTER$
$TMP$ = $TMP$ || "<infixfilter.a>"
$TMP$ = $TMP$ || "<uplow.a>"


$InsertElisionMarker$ = <ambig-e-elisionGen>:<>

$MORPH$ = $TMP$
#include "phon.fst"
$TMP$ = $MORPH$

% expansion of disjunctive features
ALPHABET = [#char# #feature# \
<Old><X><base><kompos><deriv><NoHy><PREF><VPREF><VPART>] \
[<1><3>]:<13> \
[<Dat><Acc>]:<DA> \
[<Gen><Acc>]:<GA> \
[<Gen><Dat>]:<GD> \
[<Gen><Dat><Acc>]:<GDA> \
[<Masc><Neut>]:<MN> \
[<Nom><Acc>]:<NA> \
[<Nom><Dat><Acc>]:<NDA> \
[<Nom><Gen><Acc>]:<NGA> \
[#case#]:<NGDA> \
[<Pred><Adv>]:<PA> \

$TMP$ = .* || $TMP$


$AN$ = [<OLDORTH><NEWORTH>]?

$NDF$ = [#char# #morpheme_boundary_marker#]*



% default noun composition stems

ALPHABET = _$TMP$

$DefKomposNN$ = ^(.+ <NN><base> $AN$ \
    (<+NN>[<Masc><Neut><NoGend>] <Nom><Sg> |\
     <+NN>[<Masc><Neut>] <Gen><Sg><ambig-e-elisionGen>? |\
     <+NN>[#gender#] <Nom><Pl> <>:<Wk>?) || $TMP$ || $NDF$)\
<NN>

$DefKomposNN$ = $DefKomposNN$ | ^(.+ <NN><SUFF><base> $AN$ \
    (<+NN>[<Masc><Neut><NoGend>] <Nom><Sg> |\
     <+NN>[<Masc><Neut>] <Gen><Sg><ambig-e-elisionGen>? |\
     <+NN>[#gender#] <Nom><Pl> <>:<Wk>?) || $TMP$ || $NDF$)\
<NN><SUFF>:<>

$DefKomposNPROP$ = ^(.+ <NPROP><base> $AN$ \
    (<+NPROP>[#gender#] <Nom><Sg> |\
     <+NPROP>[<Masc><Neut>] <Gen><Sg><ambig-e-elisionGen>? |\
     <+NPROP>[#gender#] <Nom><Pl> <>:<Wk>?) || $TMP$ || $NDF$)\
<NN>

$DefKomposNNfem$ = ^(.+ <NN><base> $AN$ <+NN><Fem><Nom><Sg> || $TMP$ || $NDF$)\
<NN>

$DefKomposNNfem$ = $DefKomposNNfem$ | \
                   ^(.+ <NN><SUFF><base> $AN$ <+NN><Fem><Nom><Sg> || $TMP$ || $NDF$)\
<NN><SUFF>:<>

% Add Fugen-s to the following feminine compounding stems

$T$ = [hk]eit | ung | ion | tät |\
    pflicht | schicht | sicht | flucht | [dmn]acht | [sz]ucht |\
    kunft | schaft | schrift |\
    [Aa]rbeit | mut | fahrt | [Gg]eburt | falt | [Gg]eduld | [Ss]chuld

% mark the stems for insertion
ALPHABET = [#char# #morpheme_boundary_marker#] <NN> <NN>:<sNN>

$R$ = ($T$ [#morpheme_boundary_marker#]*) <NN> <=> <sNN>

$T$ = $DefKomposNNfem$ || $R$


% insertion of the Fugen-s
ALPHABET = [#char# #morpheme_boundary_marker#] <NN>

$DefKomposNNfemFugS$ = $T$ <ambig-KomposFemFugS>:<> || (.* <>:s <sNN>:<NN>)

ALPHABET = [#char#] <>:[#morpheme_boundary_marker#] <ambig-KomposFemFugS> <NN><SUFF>

$DefKomposNN$ = .* || ($DefKomposNN$ | $DefKomposNNfem$ | $DefKomposNNfemFugS$)

% new morpheme boundary marker for Fugenelement
ALPHABET = [#char# #morpheme_boundary_marker#] <NN><SUFF> <\~>:<\->

$DefKomposNN$ = $DefKomposNN$ || <\~> <=> <\->


% default noun derivation stems

% delete final e in derivation stems unless a vowel precedes
% Final en is excluded
$c$ = [bcdfghj-np-tvwxzß]
$C$ = [BCDFGHJ-NP-TVWXZbcdfghj-np-tvwxzß] | s:<SS>

ALPHABET = [#char# #morpheme_boundary_marker#] <NN> e:<> s:[ß<SS>]
$Del-e$ = (s <=> ß (s:. e:. [#morpheme_boundary_marker#]* <NN>)) &\
	  (s:ß s <=> <SS> (e:. [#morpheme_boundary_marker#]* <NN>)) &\
	  ($C$ e <=> <> ([#morpheme_boundary_marker#]* <NN>)) &\
	  !(.* en [#morpheme_boundary_marker#]* <NN>)

ALPHABET = [#char# #morpheme_boundary_marker#]

$DefDerivNN$ = (\
(.+ {}:{<NN><base>} $AN$ \
{}:{<+NN>[#gender#]} {}:{<Nom><Sg>} || $TMP$ || $NDF$)\
<NN>) || $Del-e$

% default proper name derivation stems

$DefDerivNE$ = \
(.+ {}:{<NPROP><base>} \
<>:<+NPROP> <>:[#gender#] <>:<Nom> <>:<Sg> || $TMP$ || $NDF$) \
<NPROP>


$X$ =  .+ <NPROP><>:<base> || $BDKStems$ ||\
    <Stem>:<> [#char# #morpheme_boundary_marker#]+ <NN><base>:<>[<nativ><fremd>]:<> [#Name-inflection#]:<>

$DefDerivNE$ = $DefDerivNE$ | $X$


% default proper name composition stems

$DefKomposNE$ = $DefDerivNE$


% default adjective base stems

$T$ = (. | [<PREF><VPREF><VPART>]<V><X>)* <V> {<deriv><X><deriv>}:{}<V>:<base> $AN$ <>:<+V>

$T2$ = ([a-df-zäöüß] | e:<INS-E>) [#morpheme_boundary_marker#]* t

$DefBaseADJ$ = \
  (($T$ <PPast> || $TMP$ || $NoDef2NULL$ $T2$) <ADJ> <SUFF>:<> <base> {}:{<nativ><Adj&>}) |\
  (($T$ [<PPres><PPast>] <zu>? ||\
   $TMP$ || $NoDef2NULL$ (n|d)) <ADJ> <SUFF>:<> <base> {}:{<nativ><Adj+>})

$DefBaseADJ$ = $DefBaseADJ$ | \
  (meist|best|hoch|höchst) {<ADV><kompos><X>}:{} ($T$ <PPast> || $TMP$ || $NoDef2NULL$ $T2$) <ADJ> <SUFF>:<> <base> {}:{<nativ><Adj&>}

% default adjective composition and derivation stems

$DefKomposADJ$ = \
($T$ [<PPres><PPast>] <zu>? ||\
	$TMP$ || $NoDef2NULL$) <ADJ><SUFF>:<> |\
(.+ $AN$ {}:{<ADJ><base>} $AN$ {}:{<+ADJ><Pos><Pred>} || $TMP$ || $NDF$) <ADJ> |\
(.+ $AN$ <ADJ>{<deriv><X>}:{<><base>} $AN$ {<deriv><ADJ><Comp>}:{<+ADJ><Comp><Pred>} || $TMP$ || $NDF$) <ADJ><SUFF>:<> |\
(.+ $AN$ <ADJ>{<deriv><X>}:{<><base>} $AN$ {<deriv><ADJ><Sup>}:{<+ADJ><Sup><Pred>} || $TMP$ || $NDF$) <ADJ><SUFF>:<>

% delete the final "e" in "bange", "müde" etc.

%ALPHABET = [#char#] e:<> <ADJ>
ALPHABET = (^$DefKomposADJ$) | <ADJ>

$R$ = (.* (e:<> ([#morpheme_boundary_marker#]* <ADJ>))+ .*)+

$DefKomposADJ$ = $DefKomposADJ$ | ($DefKomposADJ$ <ambig-KomposAdjElision>:<> || $R$)

$DefDerivADJ$ = $DefKomposADJ$


% default verb composition stems

ALPHABET = [#char# #morpheme_boundary_marker#] <NoDef> <e> <V> n:<en>

$T$ = ([#char# #morpheme_boundary_marker#] | [<PREF><VPREF><VPART>]<V><X> | {}:{<V><base>})*
$T$ = $T$ {}:{<+V><Inf>} || $TMP$
$DefKomposV$ = ($T$ || $NDF$ || [#char# #morpheme_boundary_marker#]* ({en}:{} | e[rl] [#morpheme_boundary_marker#]? n:<>) [#morpheme_boundary_marker#]*) <V>


% default verb derivation stems

$DefDerivV$ = ($T$ ||\
    <NoDef>:<>? [#char# #morpheme_boundary_marker#]* ({en}:{} | e:<e> [rl] [#morpheme_boundary_marker#]? n:<>) [#morpheme_boundary_marker#]*) <V>

%e-elision for verbs
$DefDerivV$ = $DefDerivV$ | (($T$ || <NoDef>:<>? [#char#]* e:<> [rl] [#morpheme_boundary_marker#]? n:<> ) <ambig-e-elisionVerb>:<> <V>)

ALPHABET = [#char# #entry-type# #stemtype# #origin# #complexity# #category-KSF# \
	#Nom-class# #inflection# #surface-trigger# #deko-trigger# #morpheme_boundary_marker#] \
	<FB><I><Ge-Nom><UL><QUANT><zu><ge><SS><OLDORTH><NEWORTH><NoDef>

$BaseVElision$ = $BDKStems$ || .* <e>:<> [lr] [#morpheme_boundary_marker#]? <V><base><nativ><VVReg-el/er>

$BaseVElision$ = .* <ambig-e-elisionVerb>:<> <V><base> || $BaseVElision$


ALPHABET = [#char# #morpheme_boundary_marker#] <NoDef> <e> <V> n:<en>

$R$ = ([bdgptkfs] | ch) n <=> <en> ([#morpheme_boundary_marker#]* <V>)

ALPHABET = [#char# #morpheme_boundary_marker#] <NoDef> <e>

$R$ = $R$ || .*  {<><en>}:{<e>n}? [#morpheme_boundary_marker#]* <V>

$DefDerivV$ = $DefDerivV$ || $R$


% elimination of selected forms

% avoid problems with empty $DefDerivV$
ALPHABET = (a | _$DefDerivV$)
$TMP$ = !((.*<X>)?einen<V>)
$DefDerivV$ = $TMP$ || $DefDerivV$


ALPHABET = [#char# #morpheme_boundary_marker#] <e> <^Ax>

$T$ = (!(ss|.ß|.<SS>)) & ..
$SS$ = .* ($T$                                      [<ADJ><NN><NPROP><V>] |\
	   ß <SS>:<SS>    [#morpheme_boundary_marker#]* [<ADJ><NN><NPROP>] |\
	   ß <SS>:<SSalt> [#morpheme_boundary_marker#]* [<ADJ><NN><NPROP>] <OLDORTH>:<> |\
	   ß <SS>:<SSneu> [#morpheme_boundary_marker#]* [<ADJ><NN><NPROP>] <NEWORTH>:<> |\
	   ß              [#morpheme_boundary_marker#]* [<ADJ><NN><NPROP><V>] |\
	   ss             [#morpheme_boundary_marker#]* [<ADJ><NN><NPROP>] |\
	   s:ß s:<SS>     [#morpheme_boundary_marker#]* <V> |\
	   s:ß s:<SSalt>  [#morpheme_boundary_marker#]* <V> <OLDORTH>:<> |\
	   s:ß s:<SSneu>  [#morpheme_boundary_marker#]* <V> <NEWORTH>:<> )

$DefKompos$ = ($DefKomposADJ$ | $DefKomposNE$ |$DefKomposNN$ | $DefKomposV$ |\
	 $DefStems-ss$) [<OLDORTH><NEWORTH>]? || $SS$

$DefDeriv$ = ($DefDerivADJ$ | $DefDerivNE$ | $DefDerivNN$ | $DefDerivV$ |\
	 $DefStems-ss$ | $DefStems-el/er$) [<OLDORTH><NEWORTH>]? || $SS$

% move the ORTH markers
ALPHABET = _($DefDeriv$ | $DefKompos$)

$R$ = (<>:<NEWORTH> [#category#] <NEWORTH>:<> | \
       <>:<OLDORTH> [#category#] <OLDORTH>:<>) _-> ()
      
$DefKompos$ = $R$ || $DefKompos$
$DefDeriv$ = $R$ || $DefDeriv$


$BDKStems$ = $BDKStems$ | $BaseVElision$ | <>:<Stem> ($DefBaseADJ$ |\
   $DefDeriv$ <deriv> <>:<nativ> | $DefKompos$ <kompos> <>:<nativ>)

% default stems for generating "Gejammer", "Gejammere", "Gejammre"

$TMP$ = <ambig_gejammere>:<> [#char# <e> #morpheme_boundary_marker#]+ <V><deriv>:<base> || $BDKStems$ || (\
  <Stem> <NoDef>:<>? <ge> [#char# <e> #morpheme_boundary_marker#]+ \
    (<>:e<V><base>:<deriv-genom><nativ> [<VVReg><VVPres><VVPres1><VVPres1+Imp>]:<>|\
     <>:e <V><base>:<deriv-genom><nativ><VVReg-el/er>:<>))

$TMP$ = $TMP$ | (<ambig_gejammre>:<> [#char# <e> #morpheme_boundary_marker#]+ <V><deriv>:<base> || $BDKStems$ || (\
  <Stem> <NoDef>:<>? <ge> [#char# <e> #morpheme_boundary_marker#]+ \
     ({<e>l}:{<>le}|{<e>r}:{<>re}) <V><base>:<deriv-genom><nativ><VVReg-el/er>:<>))

$TMP$ = $TMP$ | (<ambig_gejammer>:<> [#char# <e> #morpheme_boundary_marker#]+ <V><deriv>:<base> || $BDKStems$ || (\
  <Stem> <NoDef>:<>? <ge> [#char# <e> #morpheme_boundary_marker#]+ \
     <V><base>:<deriv-genom><nativ><VVReg-el/er>:<>))

$BDKStems$ = $BDKStems$ | $TMP$