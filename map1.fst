%**************************************************************************
%  File:         map1.fst  
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         April 2003
%  Content:      reads the stems from the lexicon files and deletes
% 		 certain symbols on the upper and lower layer
%**************************************************************************

#include "symbols.fst"

%**************************************************************************
% definition of the lexical features which are deleted in the analysis string
%**************************************************************************

ALPHABET = [#char# #category# #stemtype# #cap-trigger# #orth-trigger#] \
  <Ge-Nom><X><Old><F><SUFF><PPast><PPres> \
  n:<n> e:<e> d:<d> I:<I> \
  <>:[#origin# #complexity# #entry-type# #inflection# #Nom-class#]\
  <>:[<Initial><NoHy><NoPref><NoDef><ge> <SS><FB><QUANT><~n>] \
  <ambig_umlautung_temp>:<UL> \
  % disjunctive features
  <>:[<frei,fremd><frei,fremd,gebunden><frei,fremd,gebunden,kurz> \
  <fremd,gebunden,lang><frei,fremd,gebunden,lang><frei,fremd,kurz> \
  <frei,fremd,lang><frei,gebunden><frei,gebunden,kurz><frei,gebunden,kurz,lang>\
  <frei,gebunden,lang><frei,lang><gebunden,nativ><klassisch,nativ> \
  <fremd,klassisch,nativ><fremd,klassisch><frei,nativ> \
  <frei,fremd,nativ><fremd,nativ><komposit,prefderiv,simplex,suffderiv> \
  <prefderiv,suffderiv><komposit,prefderiv,simplex><komposit,simplex,suffderiv>\
  <komposit,simplex><prefderiv,simplex,suffderiv><prefderiv,simplex> \
  <simplex,suffderiv><frei,gebunden,nativ><frei,fremd,gebunden,nativ>]

$MAP1$ = (. | {er}:{<er>} |\
	<PREF> <ADJ>:<>  <X>:<> [a-zäöüßA-ZÄÖÜ]+ <ADJ> |\
	<PREF> <NPROP>:<><X>:<> [a-zäöüßA-ZÄÖÜ]+ <NPROP> |\
	<PREF> <NN>:<>   <X>:<> [a-zäöüßA-ZÄÖÜ]+ <NN> |\
	[<VPART><VPREF>] <V>:<><X>:<> <>:<ge>? [a-zäöüßA-ZÄÖÜ])* |\
	<>:<Prefix> (<PREF>|.)* <PREF>[<ADJ><NPROP><NN>] .* |\
	<>:<Prefix> (.* <VPART>:<PREF><V>:<><X>:<>)* .* <VPART>:<PREF><V> .*|\
	<>:{<Prefix><no-ge>} .* <VPREF>:<PREF><V> .* |\
	<>:<Prefix> .* <VPREF><V> .*  % needed for verb prefix "miss"

% add mark-up for hard-coded derivations
#POS# = <NN><V><ADJ><NPROP><CARD>
#=POS# = #POS#
$POS$ = [#POS#]
#L# = A-ZÄÖÜa-zäöüß
$L$ = [#L#]
$W$ = $L$+

ALPHABET = [#char# #category# #stemtype# #cap-trigger# #orth-trigger#] <Ge-Nom><X><F> <PPast><PPres><Old><PREF><SUFF><VPART><VPREF><ambig_umlautung_temp>

$T$ = $POS$ {<kompos><X>}:{} $L$ 
$MAP1$ = $T$ _-> () || $MAP1$

$T$ = [#=POS#] {<deriv><X><deriv>[#=POS#]}:{<kompos><X>} $W$ $POS$ <SUFF>
$MAP1$ = $T$ _-> () || $MAP1$

$T$ = [#=POS#]<SUFF> {<deriv><X><deriv>[#=POS#]}:{} [<PPast><PPres> #L#]

$MAP1$ = $T$ _-> () || $MAP1$

$MAP1$
