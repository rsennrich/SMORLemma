%**************************************************************************
%  File:         map3.fst  
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         April 2003
%  Content:      reads the stems from the lexicon files and deletes
% 		 certain symbols on the upper and lower layer
%**************************************************************************

#include "symbols.fst"

$X$ = [#char# #entry-type# #stemtype# #origin# #complexity# #category-KSF#  \
	#Nom-class# #inflection# #surface-trigger# #deko-trigger# #morpheme_boundary_marker#] \
	<FB><I><Ge-Nom><UL><QUANT><zu><ge>

ALPHABET = $X$ <SS><OLDORTH><NEWORTH> e:<e>

$T$ = e <=> <e> ([lr] <V><base><nativ><VVReg-el/er>)


ALPHABET = $X$

$T$ || .* (<SS> .* | <SS>:<SSalt> .* <OLDORTH> |\
                     <SS>:<SSneu> .* <NEWORTH>:<>)?
