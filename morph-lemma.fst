%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         morph-lemma.fst
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
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NN><>:<Masc><>:<Nom><>:<Sg><>:<St>? || $MORPH$) <+NN><Masc>)
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NN><>:<Fem><>:<Nom><>:<Sg><>:<St/Wk>? || $MORPH$) <+NN><Fem>) | $nounlemma$
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NN><>:<Neut><>:<Nom><>:<Sg><>:<St>? || $MORPH$) <+NN><Neut>)  | $nounlemma$
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NN><>:<NoGend><>:<Nom><>:<Pl><>:<St>? || $MORPH$) <+NN><NoGend>) | $nounlemma$  % plural noun: use Nom. Pl. for lemma
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NPROP><>:<Masc><>:<Nom><>:<Sg> || $MORPH$) <+NPROP><Masc>) | $nounlemma$
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NPROP><>:<Fem><>:<Nom><>:<Sg> || $MORPH$) <+NPROP><Fem>) | $nounlemma$
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NPROP><>:<Neut><>:<Nom><>:<Sg> || $MORPH$) <+NPROP><Neut>) | $nounlemma$
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NPROP><>:<NoGend><>:<Nom><>:<Sg> || $MORPH$) <+NPROP><NoGend>) | $nounlemma$
$nounlemma$ = (([^<OLDORTH>]*<OLDORTH>:<>?<>:<+NPROP><>:<NoGend><>:<Nom><>:<Pl> || $MORPH$) <+NPROP><NoGend>[<Nom><Acc><Dat><Gen>]<Pl>) | $nounlemma$ %plural-only names; slight overanalysis ("Ackermanns" has "Ackermann" and "Ackermanns" as possible lemmas)

$adverblemma$ = ([^<OLDORTH>]*<OLDORTH>:<>?<>:<+ADV> || $MORPH$) <+ADV>
$verblemma$ = ([^<OLDORTH>]*<OLDORTH>:<>?<>:<+V><>:<Inf> || $MORPH$) <+V>
$adjectivelemma$ = ([^<OLDORTH>]*<OLDORTH>:<>?<>:<+ADJ><>:<Pos><>:[<Adv><Pred>] || $MORPH$) <+ADJ>

$Lemmatizer_nn$ = $nounlemma$ || $remove_final_CB$
$Lemmatizer_adv$ = $adverblemma$ || $remove_final_CB$
$Lemmatizer_v$ = $verblemma$ || $remove_final_CB$
$Lemmatizer_adj$ = $adjectivelemma$ || $remove_final_CB$

$special_lemmatisation$ = [<+V><+NN><+ADJ><+ADV><+NPROP>]

%e-elision for verbs happens for some forms (1.p.sg), but not for infinitive: delete ambiguity marker so that lemma is found
%we want to keep ambiguity marker for derivations, and only delete it at the end (before the part-of-speech)
$ambiguity_fix$ = .* (<>:<ambig-e-elisionVerb><+V>)? .*

$MORPH$ = $MORPH$ || $remove_CB_from_surface$

% get lemmatisation by (expensive) composition of transducer with (almost) reverse of itself.
% first transducer (Lemmatiser) goes from lemma to derivational analysis
% second transducer (MORPH) goes from derivational analysis to surface form
$MORPH_lemmatise_nn$ = ((^_$Lemmatizer_nn$).* || $ambiguity_fix$ || $MORPH$)
$MORPH_lemmatise_adv$ = ((^_$Lemmatizer_adv$).* || $ambiguity_fix$ || $MORPH$)
$MORPH_lemmatise_v$ = ((^_$Lemmatizer_v$).* || $ambiguity_fix$ || $MORPH$)
$MORPH_lemmatise_adj$ = ((^_$Lemmatizer_adj$).* || $ambiguity_fix$ || $MORPH$)

% no need to apply this trick to parts of speech that are invariant anyway
$MORPH_nolemmatise$ = (.*([#part-of-speech#]-$special_lemmatisation$).* || $MORPH$)

% skip standard lemmatisation step for invariant adjectives (derived from proper nouns and numbers) to reduce compilation cost
% remove e from stem because all relevant suffixes start with e
% note: this rule currently doesn't handle complex forms like "Ober<#>hausen<~>er"
$MORPH_adj_invariant$ = [#char#]* (<>:e|[^e]) <~>:[<CARD><ORD><NPROP>] [#char#]* <>:<SUFF><+ADJ><Pos><Invar> || $MORPH$

$MORPH$ = $MORPH_lemmatise_nn$ | $MORPH_lemmatise_adv$ | $MORPH_lemmatise_v$ | $MORPH_lemmatise_adj$ | $MORPH_nolemmatise$ | $MORPH_adj_invariant$

%remove <St/Wk> for backward compatibility with SMOR grammar (was inserted to identify/lemmatise nouns derived from adjectives)
[^<St/Wk>]* (<>:<St/Wk> | [^<St/Wk>]) || $MORPH$
