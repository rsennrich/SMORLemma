%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         symbols.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Content:      definition of the symbol sets
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#char# = \ -\~¡-ÿ

#phon-trigger1# = <INS-E><FB><^Gen><^Del><^pl><^Ax><WB>
#phon-trigger2# = <CB><^UC><NoHy><NoDef><I>
#phon-trigger# = #phon-trigger1# #phon-trigger2#
#phon-trigger3# = <UL><SS><SSneu><SSalt><NEWORTH><OLDORTH><e>

#surface-trigger# = <~n><d><e><er><n>

#orth-trigger# = <NEWORTH><OLDORTH>

#ss-trigger# = <SS><SSneu><SSalt>

#cap-trigger# = <UC><LC><CAP><DECAP>

#marker# = <PPast><PPres><PREF><SUFF><CAP><DECAP>

#deko-trigger# = <Initial><NoHy><NoPref><NoDef><ge><no-ge>

#category-KSF#  = <ABBR><ADJ><ADV><CARD><DIGCARD><NN><NPROP><ORD><OTHER> \
		<PRO><TRUNC><V>
#category# = #category-KSF# <KSF>

#part-of-speech# = <+ADJ><+ADV><+ART><+CARD><+CHAR><+CIRCP><+DEM><+INDEF>\
   <+INTJ><+PUNCT><+CONJ><+NPROP><+NN><+ORD><+POSS><+POSTP><+PPRO><+PREPART>\
   <+PREP><+PROADV><+PTCL><+REL><+SYMBOL><+TRUNC><+V><+VPART><+WADV><+WPRO>

#gender# = <Masc><Fem><Neut><NoGend>

#case# = <Nom><Gen><Dat><Acc>

#feature# = #case# #gender# #category# #part-of-speech# #orth-trigger# \
   <1><2><3> <Sg><Pl> <Def><Indef> <St><Wk> <Pos><Comp><Sup> \
   <Pred><Attr><Subst><Pro> <PPres><PPast> <Pres><Past> <Imp><Ind><Inf><Subj> \
   <Pers><Prfl><Refl><Rec><Right><Left> <Sub><Coord><Compar> \
   <^ABBR><^VPRES><^VPAST> <Norm><Comma> <Neg><Adj><Ans><Adv> \
   <Ge-Nom><ProAdv><Simp><WeakGen><Invar><SUFF><zu>

#entry-type# = <Stem><Suffix><Prefix>

#stemtype# = <base><deriv><kompos>

#origin# = <nativ><frei><gebunden><kurz><lang><lang2><fremd><klassisch>

#Nom-class# = <NSNeut_es_e><NSFem_0_n><NSFem_0_en><NSMasc_es_e><NSMasc/Sg_es>\
	    <NSMasc/Pl><NSMasc_es_$e><NSMasc-s/$sse><NSFem/Sg><NS-er>

#complexity# = <komposit><prefderiv><simplex><suffderiv>


#Abk-inflection# = <Abk_ADJ><Abk_ADV><Abk_ART><Abk_KONJ><Abk_NE-Low><Abk_NE><Abk_NEFem><Abk_NEMasc><Abk_NENeut><Abk_NFem><Abk_NMasc><Abk_NN-Low><Abk_NN><Abk_NNeut><Abk_PREP><Abk_VPPAST><Abk_VPPRES>

#Adj-inflection# = <Adj$><Adj$e><Adj&><Adj+(e)><Adj+><Adj+Lang><Adj+e><Adj-el/er><Adj0-Up><Adj0><AdjComp><AdjFlexSuff><AdjNN><AdjNNSuff><AdjPos><AdjPosAttr-Up><AdjPosAttr><AdjPosPred><AdjPosSup><AdjSup><Adj~+e>

#Noun-inflection# = <N?/Pl_0><N?/Pl_x><NFem-a/en><NFem-in><NFem-is/en><NFem-is/iden><NFem-s/$sse><NFem-s/sse><NFem-s/ssen><NFem/Pl><NFem/Sg><NFem_0_$><NFem_0_$e><NFem_0_e><NFem_0_en><NFem_0_n><NFem_0_s><NFem_0_x><NMasc-Adj><NMasc-ns><NMasc-s/$sse><NMasc-s/Sg><NMasc-s/sse><NMasc-s0/sse><NMasc-us/en><NMasc-us/i><NMasc/Pl><NMasc/Sg_0><NMasc/Sg_es><NMasc/Sg_s><NMasc_0_x><NMasc_en_en=in><NMasc_en_en><NMasc_es_$e><NMasc_es_$er><NMasc_es_er><NMasc_es_e><NMasc_es_en><NMasc_n_n=$in><NMasc_n_n=in><NMasc_n_n><NMasc_s_$><NMasc_s_$x><NMasc_s_0=in><NMasc_s_0><NMasc_s_e=in><NMasc_s_e><NMasc_s_$e><NMasc_s_en=in><NMasc_s_en><NMasc_s_n><NMasc_s_s><NMasc_s_x><NNeut-0/ien><NNeut-Herz><NNeut-Inner><NNeut-a/ata><NNeut-a/en><NNeut-on/a><NNeut-s/$sser><NNeut-s/sse><NNeut-um/a><NNeut-um/en><NNeut/Pl><NNeut/Sg_0><NNeut/Sg_en><NNeut/Sg_es><NNeut/Sg_s><NNeut_0_x><NNeut_es_$e><NNeut_es_$er><NNeut_es_e><NNeut_es_en><NNeut_es_er><NNeut_s_$><NNeut_s_0><NNeut_s_e><NNeut_s_en><NNeut_s_n><NNeut_s_s><NNeut_s_x><NTrunc>

#Name-inflection# = <Name-Fem_0><Name-Fem_s><Name-Masc_0><Name-Masc_s><Name-Neut_0><Name-Neut_s><Name-Pl_0><Name-Pl_x><FamName_0><FamName_s>

#Num-inflection# = <Card1><Card><DigOrd><Ord><NumAdjFlex>

#Verb-inflection# = <VAImpPl><VAImpSg><VAPastKonj2><VAPres1/3PlInd><VAPres1SgInd><VAPres2PlInd><VAPres2SgInd><VAPres3SgInd><VAPresKonjPl><VAPresKonjSg><VInf+PPres><VInf><VMPast><VMPastKonj><VMPresPl><VMPresSg><VPPast><VPPres><VPastIndReg><VPastIndStr><VPastKonjStr><VPresKonj><VPresPlInd><VVPP-en><VVPP-t><VVPastIndReg><VVPastIndStr><VVPastKonjReg><VVPastKonjStr><VVPastStr><VVPres1+Imp><VVPres1><VVPres2+Imp0><VVPres2+Imp><VVPres2><VVPres2t><VVPres><VVPresPl><VVPresSg><VVReg-el/er><VVReg><VVRegFin>

#Other-inflection# = <Adv><Circp><Intj><IntjUp><Konj-Inf><Konj-Kon><Konj-Sub><Konj-Vgl><PInd-Invar><Postp-Akk><Postp-Dat><Postp-Gen><Pref/Adj><Pref/Adv><Pref/N><Pref/ProAdv><Pref/Sep><Pref/V><Prep-Akk><Prep-DA><Prep-Dat><Prep-GD><Prep-GDA><Prep-Gen><Prep/Art-m><Prep/Art-n><Prep/Art-r><Prep/Art-s><ProAdv><Ptkl-Adj><Ptkl-Ant><Ptkl-Neg><Ptkl-Zu><Trunc><WAdv>

#inflection# = #Abk-inflection# #Adj-inflection# #Noun-inflection# #Name-inflection# #Num-inflection# #Verb-inflection# #Other-inflection#

