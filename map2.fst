%**************************************************************************
%  File:         map2.fst  
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         April 2003
%  Content:      reads the stems from the lexicon files and deletes
% 		 certain symbols on the upper and lower layer
%**************************************************************************

#include "symbols.fst"

%**************************************************************************
% mapping from disjunctive features to disjunctions
%**************************************************************************

ALPHABET = [#char# #entry-type# #stemtype# #origin# #complexity# #category-KSF#\
  #inflection# #Nom-class# #surface-trigger# #deko-trigger# #morpheme_boundary_marker#]\
  <FB><I><Ge-Nom><UL><QUANT><SS><ge>\
  [#cap-trigger# #orth-trigger# <Old><X><F><PREF><SUFF><VPREF>]:<>\
  <KSF>:<NN> <VPART>:<zu>\
  % disjunctive features
  <frei,fremd>:[<frei><fremd>] \
  <frei,fremd,gebunden>:[<frei><fremd><gebunden>] \
  <frei,fremd,gebunden,kurz>:[<frei><fremd><gebunden><kurz>] \
  <frei,fremd,gebunden,lang>:[<frei><fremd><gebunden><lang>] \
  <frei,fremd,gebunden,nativ>:[<frei><fremd><gebunden><nativ>] \
  <fremd,gebunden,lang>:[<fremd><gebunden><lang>] \
  <frei,fremd,kurz>:[<frei><fremd><kurz>] \
  <frei,fremd,lang>:[<frei><fremd><lang>] \
  <frei,gebunden>:[<frei><gebunden>] \
  <frei,gebunden,kurz>:[<frei><gebunden><kurz>] \
  <frei,gebunden,kurz,lang>:[<frei><gebunden><kurz><lang>] \
  <frei,gebunden,lang>:[<frei><gebunden><lang>] \
  <frei,lang>:[<lang><frei>] \
  <fremd,klassisch,nativ>:[<fremd><klassisch><nativ>] \
  <fremd,klassisch>:[<fremd><klassisch>] \
  <klassisch,nativ>:[<klassisch><nativ>] \
  <frei,nativ>:[<nativ><frei>] \
  <frei,fremd,nativ>:[<frei><fremd><nativ>] \
  <frei,gebunden,nativ>:[<frei><gebunden><nativ>] \
  <fremd,nativ>:[<fremd><nativ>] \
  <gebunden,nativ>:[<gebunden><nativ>] \
  <komposit,prefderiv,simplex,suffderiv>:[<komposit><prefderiv><simplex><suffderiv>] \
  <komposit,prefderiv,simplex>:[<komposit><prefderiv><simplex>] \
  <komposit,simplex,suffderiv>:[<komposit><simplex><suffderiv>] \
  <komposit,simplex>:[<komposit><simplex>] \
  <prefderiv,suffderiv>:[<prefderiv><suffderiv>] \
  <prefderiv,simplex,suffderiv>:[<prefderiv><simplex><suffderiv>] \
  <prefderiv,simplex>:[<prefderiv><simplex>] \
  <simplex,suffderiv>:[<simplex><suffderiv>]

$MAP2$ = .* (<V><base><frei>:<nativ>)? .*

$MAP2$
