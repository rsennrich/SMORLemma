%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         FIX.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         July 2003
%  Content:      fixed stems not listed in IMSLex
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%**************************************************************************
% Punctuation, symbols etc.
%**************************************************************************

$Fix_Stems$ = \
  ([\'\"\(«\<\[\{/]|\'\') {<+PUNCT><Left>}:{} |\
  (\,\, | [\)»\>\]\}\\])  {<+PUNCT><Right>}:{} |\
  [\.\?\!\:;]             {<+PUNCT><Norm>}:{} |\
  \,                      {<+PUNCT><Comma>}:{} |\
  (§ | §§ | \-\-?)        {<+SYMBOL>}:{} |\
%
  zwei{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  zwei{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  zwei{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  drei{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  drei{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  drei{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  vier{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  vier{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  vier{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  fünf{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  fünf{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  fünf{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  sechs{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  sechs{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  sechs{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  neun{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  neun{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  neun{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  zehn{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  zehn{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  zehn{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  elf{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  elf{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  elf{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  zwölf{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  zwölf{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  zwölf{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  z:Zwei<CAP>{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  z:Zwei<CAP>{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  z:Zwei<CAP>{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  d:Drei<CAP>{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  d:Drei<CAP>{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  d:Drei<CAP>{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  v:Vier<CAP>{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  v:Vier<CAP>{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  v:Vier<CAP>{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  f:Fünf<CAP>{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  f:Fünf<CAP>{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  f:Fünf<CAP>{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  s:Sechs<CAP>{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  s:Sechs<CAP>{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  s:Sechs<CAP>{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  n:Neun<CAP>{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  n:Neun<CAP>{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  n:Neun<CAP>{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  z:Zehn<CAP>{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  z:Zehn<CAP>{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  z:Zehn<CAP>{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  z:Zwölf<CAP>{<+CARD><Subst><NoGend><Dat><Pl><St>}:{en} |\
  z:Zwölf<CAP>{<+CARD><Pro><NoGend><Gen><Pl><St>}:{er} |\
  z:Zwölf<CAP>{<+CARD><Subst><NoGend><NA><Pl><St>}:{e} |\
  Behufe{<NN><base><X><+NN><Masc><Old><Dat><Sg>}:{} |\
  Paroli{<NN><base><X><+NN><NoGend><Acc><Sg>}:{} |\
  Ski{<NN><base><X><+NN><Masc><NGA><Pl>}:{er} |\
  Ski{<NN><base><X><+NN><Masc><Dat><Pl>}:{ern} |\
  Lande{<NN><base><X><+NN><Neut><NGA><Pl>}:{} |\
  Lande{<NN><base><X><+NN><Neut><Dat><Pl>}:{n} |\
  we:orden<V>:<><base>:<><X>:<><+V>:<><PPast>:<> |\
  {}:{ge}pfle:ogen{<V><PPast><SUFF><+ADJ><Pos><Adv>}:{} |\
  Gassi{<NN><base><X><+NN><NoGend><Acc><Sg>}:{} |\
  $Ord0$ enmal {<NN><base><X><+NN><Neut><Dat><Sg>}:{}
