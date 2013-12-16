%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-uc.fst
%  Author:       Rico Sennrich
%  Date:         Februar 2013
%  Content:      Use infinitive, nominative singular, and other canonical base forms as lemmas (instead of derivational analysis)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

$MORPH$ = "<morph2.a>"

$remove_final_CB$ = <NoHy>:<>? <NoDef>:<>? [^<NoHy><NoDef>]* [#char#] [#morpheme_boundary_marker#]:<>* [#part-of-speech#] [#part-of-speech# #feature#]*

ALPHABET = [#char#] <NoHy><NoDef> [#morpheme_boundary_marker#]:<>

$remove_CB_from_surface$ = .*

ALPHABET = _$MORPH$

%which form to use as lemma
$nounlemma$ = ((.*<>:<+NN><>:<Masc><>:<Nom><>:<Sg><>:<St>? || $MORPH$) <+NN><Masc>) |\
              ((.*<>:<+NN><>:<Fem><>:<Nom><>:<Sg><>:<St/Wk>? || $MORPH$) <+NN><Fem>) |\
              ((.*<>:<+NN><>:<Neut><>:<Nom><>:<Sg><>:<St>? || $MORPH$) <+NN><Neut>) |\
              ((.*<>:<+NN><>:<NoGend><>:<Nom><>:<Pl><>:<St>? || $MORPH$) <+NN><NoGend>) | \ % plural noun: use Nom. Pl. for lemma
              ((.*<>:<+NPROP><>:<Masc><>:<Nom><>:<Sg> || $MORPH$) <+NPROP><Masc>) |\
              ((.*<>:<+NPROP><>:<Fem><>:<Nom><>:<Sg> || $MORPH$) <+NPROP><Fem>) |\
              ((.*<>:<+NPROP><>:<Neut><>:<Nom><>:<Sg> || $MORPH$) <+NPROP><Neut>) |\
              ((.*<>:<+NPROP><>:<NoGend><>:<Nom><>:<Sg> || $MORPH$) <+NPROP><NoGend>) |\
              ((.*<>:<+NPROP><>:<NoGend><>:<Nom><>:<Pl> || $MORPH$) <+NPROP><NoGend>[<Nom><Acc><Dat><Gen>]<Pl>) %plural-only names; slight overanalysis ("Ackermanns" has "Ackermann" and "Ackermanns" as possible lemmas)

$adverblemma$ = (.*<>:<+ADV> || $MORPH$) <+ADV>
$verblemma$ = (.*<>:<+V><>:<Inf> || $MORPH$) <+V>
$adjectivelemma$ = (.*<>:<+ADJ><>:<Pos><>:[<Adv><Invar><Pred>] || $MORPH$) <+ADJ>

$Lemmatizer$ = $adverblemma$ | $nounlemma$ | $verblemma$ | $adjectivelemma$

$Lemmatizer$ = $Lemmatizer$ || $remove_final_CB$

$special_lemmatisation$ = [<+V><+NN><+ADJ><+ADV><+NPROP>]

%e-elision for verbs happens for some forms (1.p.sg), but not for infinitive: delete ambiguity marker so that lemma is found
%we want to keep ambiguity marker for derivations, and only delete it at the end (before the part-of-speech)
$ambiguity_fix$ = .* (<>:<ambig-e-elisionVerb><+V>)? .*

$MORPH$ = ((^_$Lemmatizer$).* || $ambiguity_fix$ || $MORPH$ || $remove_CB_from_surface$) |\
(.*([#part-of-speech#]-$special_lemmatisation$).* || $MORPH$ || $remove_CB_from_surface$) % forms without special lemmatisation

%remove <St/Wk> for backward compatibility with SMOR grammar (was inserted to identify/lemmatise nouns derived from adjectives)
[^<St/Wk>]* (<>:<St/Wk> | [^<St/Wk>]) || $MORPH$
