%**************************************************************************
%  File:         PRO.fst
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         November 2004
%  Content:      pronouns, determiners
%**************************************************************************

% deletion of features of the surface

#tmp# = #case# #gender# <MN> <+ART><+DEM><+INDEF><+POSS><+PPRO><+REL><+WPRO><1><2><3><13><Sg><Pl><Def><Indef><Pers><Refl><Rec><Subst><NGDA><NGA><NDA><NA><GA><GD><GDA><DA><Attr><Pred><St><Wk><Invar><NEWORTH><OLDORTH>


$TMP$ = [#tmp# <Pro> <Prfl> <WeakGen><CAP>]:<>*

$Pro_Stems$ = "lexicon/pro.lex" || [A-ZÄÖÜa-zäöüß]+ $TMP$


% insertion of additional features in the analysis

$TMP$ = ([#tmp#] | [<Attr><Subst>]:<Pro> | [<Pers><Refl>]:<Prfl>)*\

$Pro_Stems$ = [A-ZÄÖÜa-zäöüß]+ <CAP>? {<PRO><base><X>}:{} $TMP$ || $Pro_Stems$