%**************************************************************************
%  File:         phon.fst
%  Author:       Helmut Schmid; IMS, University of Stuttgart
%  Date:         April 2003
%  Content:      two-level rules for German (TWOLC) --
%		 phonological and orthographic rules -- 
% 		 converted to S-FST from phon.rules
%**************************************************************************

#include "symbols.fst"


%**************************************************************************
% Allomorphs
% i<n>loyal ==> illoyal
% i<n>materiell ==> immateriell
% derivation suffix "erei"
% trink+<er>ei -> Trinkerei
% gaukel+<er>ei -> Gaukelei
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #phon-trigger3#] \
	<n>:[nlmrn] <d>:[dfgklnpst] <~n>:[<>n]

$R1$ =  (. |\
	<n>:n <CB> [ac-knoqs-z����AC-KNOQS-Z���] |\
	<n>:l <CB> [Ll] |\
	<n>:m <CB> [BbMmPp] |\
	<n>:[rn] <CB> [Rr] |\
        <d>:d <CB> [a-ehijmoqru-x����A-EHIJMOQRU-X���] |\
        <d>:f <CB> [Ff] |\
        <d>:g <CB> [Gg] |\
        <d>:k <CB> [Kk] |\
        <d>:l <CB> [Ll] |\
        <d>:n <CB> [Nn] |\
        <d>:p <CB> [Pp] |\
        <d>:s <CB> [Ss] |\
        <d>:t <CB> [Tt] |\
       <~n>:<><CB> [bcdfghjklmnpqrstvwxyz] |\
       <~n>:n <CB> [AEIOU���aeiou���] |\
       <e>. <FB> <er>:<> |\
       [a-z����]. <FB> {<er>}:{er}) *


%**************************************************************************
% birst+st -> birst
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #phon-trigger3#]  [st]:<>

$R2$ = ((st<FB>) s<=><> (t:.)) & ((st<FB>s:.) t<=><>)


%**************************************************************************
% Umlaut
% Apfel$		==> �pfel
% alter$e 		==> �ltere
% Saal$e		==> S�le
% Koog$e		==> K�ge
% Schwabe<^Del>$in	==> Schw�bin
% Tochter$		==> T�chter
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger# #ss-trigger#] <e> \
	 <UL>:<FB> [aouAOU]:[������] [ao]:<>

$Cons$ = [bcdfghjklmnpqrstvwxyz�]
$ConsUp$ = [BCDFGHJKLMNPQRSTVWXYZ]
$LC$ = <CB> | <WB> | <NoHy> | <NoDef> | <^UC> | $Cons$ | $ConsUp$

$R3$ =	($LC$ [aouAOU]<=>[������] ([aou]:.? $Cons$* <FB>? ([#ss-trigger#]|(e($Cons$|<^Del>)))? <UL>:<FB>)) &\
	(([aA]:[��]) a <=> <> ($Cons$)) &\
	(([oO]:[��]) o <=> <> ($Cons$))


%**************************************************************************
% �/ss-alternation
% (1) obligatorisch nach kurzem Vokal und vor 'e'
% Flu�~+es	==> Flusses
% Fu�+es	==> Fu�es
% Zeugnis~+es	==> Zeugnisses
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger#] <SSalt><SSneu><e> \
	<SS>:[<><SS>]

% Schu�<SS><FB><SS...> --> Schu�<FB><SS...>
$R4a$ =	(�) <SS> <=> <> (<FB> [#ss-trigger#])


$B$ = [<FB><INS-E>]

ALPHABET = [#char# #phon-trigger# #orth-trigger#] <SSalt><SSneu><e> \
	�:s <SS>:[<>s]

% Note: <SSneu> and <SSalt> are excluded in the respective contexts
% since <SSneu>:s and <SSalt:<> are not in the alphabet
$R4b$ =	(� <=> s (<FB>? [#ss-trigger#]:. $B$ [aeiou])) & \
	((�:s <FB>? | s) [#ss-trigger#] <=> s ($B$ [aeiou])) & \
	((s) [#ss-trigger#] <=> <> ($B$ ($Cons$ | <WB>)))

ALPHABET = [#char# #phon-trigger# #orth-trigger#] <e> \
	[�<SSneu>]:s <SSalt>:<>

$R4c$ =	(� <=> s (<FB>? <SSneu>:.)) & \
	((�:s <FB>? | s) <SSneu> <=> s ) & \
	((� <FB>?) <SSalt> <=> <> )

$R4$ = $R4a$ || $R4b$ || $R4c$


%**************************************************************************
% e-elision after e
% Bote+e	==> Bote
% leise$er	==> leiser
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger#] <e> \
	e:<>

$R5$ = e <=> <> ($B$ e)


%**************************************************************************
% optional e-elision with genitive
% Tisch+es	==> Tisches, Tischs
% Haus+es	==> Hauses
% Flu�~+es	==> Flusses
% Fu�+es	==> Fu�es
% Zeugnis~+es	==> Zeugnisses
%**************************************************************************

$R6$ = ([bcdfghjklmnpqrtuvwy] <FB>? $B$) e => <> (s <^Gen>)


%**************************************************************************
% e-elision before '
% hab+e's	==> hab's
% kauf+t's	==> kauft's
%**************************************************************************

$R7$ = e <=> <> ('s)


%**************************************************************************
% adjective-el/er e-elision
% dunkel<^Ax>+e		==> dunkle
% sicher<^Ax>+e		==> sichere, sichre 
% sicher<^Ax>+em	==> sicherem, sicherm 
% schwer+e		==> schwere
%**************************************************************************

$R8a$ = e <=> <> (l <^Ax> $B$ e)

$R8b$ = e => <> (r <^Ax> $B$ e)

$R8c$ = (er <^Ax> $B$) e => <> ([mns])

$R8$ = $R8a$ || $R8b$ || $R8c$


%**************************************************************************
% verb-el/er e-elision
% sicher<^Vx>+en	==> sichern
% handel<^Vx>+en	==> handeln
% sicher<^Vx>+e		==> sichre, sichere
% handel<^Vx>+e		==> handle, ?handele
% sicher<^Vx>+est	==> sicherst, *sichrest, ?sicherest
% handel<^Vx>+est	==> handelst, *handlest, ?handelest
% rechn+ung		==> Rechnung
%**************************************************************************

$R9$ = (<e>[lr] $B$) e <=> <> (n | s?t)

ALPHABET = [#char# #phon-trigger# #orth-trigger#] <e> \
	<e>:<>

$R10$ = <e> => <> ([lrn] $B$ [eui]) &\
	<e> <= <> (n  $B$ [eui])


%**************************************************************************
% s-elimination
% ras&st	==> (du) rast
% feix&st	==> (du) feixt
% birs+st	==> (du) birst
% gro�$st 	==> gr��t
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	 <e>:e s:<>

$R11$ = ([xs�z] $B$) s <=> <> (t)


%**************************************************************************
% e-epenthesis
% regn&t	==> regnet
% find&st	==> findest
% bet&st	==> betest
% gelieb&t&st	==> geliebtest
% gewappn&t&st  ==> gewappnetst
%**************************************************************************
% different from DMOR

ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	 <INS-E>:<>

% gefeiert&ste  ==> gefeiertste
% gefeiert&ste  ==> gefeiertste
$R12$ = ([a-df-hj-z]e[rl]t) <INS-E> <=> <> (st)


ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	 <INS-E>:[e<>]

% gewappn&t&st  ==> gewappnetst
$R13$ = ((((c[hk])|[bdfgmp])n | [a-z����]t) <INS-E> <=> e) & \
	((<INS-E>:e[dt]) <INS-E> <=> <>)


ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	 <INS-E>:e

$R14$ = ([dt]m? | tw ) <INS-E> <=> e


%**************************************************************************
% Consonant reduction for analysis of old orthography
% Schiff=fahrt		==> Schiffahrt, Schifffahrt
% Schiff=fracht		==> Schifffracht
% voll=laufen		==> vollaufen, volllaufen
% Sperr=rad		==> Sperrad, Sperrrad
%**************************************************************************

$B$ = [<CB><FB>]

ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	 f:[<f><>] [<OLDORTH><NEWORTH>]:<>

$Rf$ =	(f f <=> <> (<OLDORTH>:. $B$ [fF] [aeiou���])) &\
	(f f <=> <f> (<NEWORTH>:. $B$ [fF] [aeiou���])) &\
	(f f <=> <x> ($B$ [fF] [aeiou���])) &\
	(f:<> <OLDORTH> <=> <>) &\
	(f:<f> <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	l:[<l><>] [<OLDORTH><NEWORTH>]:<> <f>:f

$Rl$ =	(l l <=> <> (<OLDORTH>:. $B$ [lL] [aeiou���])) &\
	(l l <=> <l> (<NEWORTH>:. $B$ [lL] [aeiou���])) &\
	(l l <=> <x> ($B$ [lL] [aeiou���])) &\
	(l:<> <OLDORTH> <=> <>) &\
	(l:<l> <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	m:[<m><>] [<OLDORTH><NEWORTH>]:<> <l>:l

$Rm$ =	(m m <=> <> (<OLDORTH>:. $B$ [mM] [aeiou���])) &\
	(m m <=> <m> (<NEWORTH>:. $B$ [mM] [aeiou���])) &\
	(m m <=> <x> ($B$ [mM] [aeiou���])) &\
	(m:<> <OLDORTH> <=> <>) &\
	(m:<m> <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	n:[<n><>] [<OLDORTH><NEWORTH>]:<> <m>:m

$Rn$ =	(n n <=> <> (<OLDORTH>:. $B$ [nN] [aeiou���])) &\
	(n n <=> <n> (<NEWORTH>:. $B$ [nN] [aeiou���])) &\
	(n n <=> <x> ($B$ [nN] [aeiou���])) &\
	(n:<> <OLDORTH> <=> <>) &\
	(n:<n> <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger#]  \
	r:[<r><>] [<OLDORTH><NEWORTH>]:<> <n>:n

$Rr$ =	(r r <=> <> (<OLDORTH>:. $B$ [rR] [aeiou���])) &\
	(r r <=> <r> (<NEWORTH>:. $B$ [rR] [aeiou���])) &\
	(r r <=> <x> ($B$ [rR] [aeiou���])) &\
	(r:<> <OLDORTH> <=> <>) &\
	(r:<r> <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger#] \
	t:[<t><>] [<OLDORTH><NEWORTH>]:<> <r>:r

$Rt$ =	(t t <=> <> (<OLDORTH>:. $B$ [tT] [aeiou���])) &\
	(t t <=> <t> (<NEWORTH>:. $B$ [tT] [aeiou���])) &\
	(t t <=> <x> ($B$ [tT] [aeiou���])) &\
	(t:<> <OLDORTH> <=> <>) &\
	(t:<t> <NEWORTH> <=> <>)

$R15$ = ($Rf$ || $Rl$ || $Rm$) || ($Rn$ || $Rr$ || $Rt$)


%**************************************************************************
% eliminate letters
% Virus<^pl>+en		==> Viren
% Museum<^pl>+en	==> Museen
% Affrikata<^pl>+en	==> Affrikaten		
%**************************************************************************

ALPHABET = [#char# #phon-trigger#]  [uio]:<> <t>:t

% eliminate -is/-us/-um/-on/-os
$R16$ = [uio] <=> <> ([mns]:. <^pl>)

ALPHABET = [#char# #phon-trigger#] [mnsa]:<>
$R17$ = [mnsa] <=> <> <^pl>

% eliminate e 
ALPHABET = [#char# #phon-trigger#] e:<>
$R18$ = e <=> <> <^Del>
	

%**************************************************************************
% Eliminate markers 
%**************************************************************************

ALPHABET = [#char# #phon-trigger2#] [#phon-trigger1#]:<>

$R19$ = .*


%**************************************************************************
% up to low
%**************************************************************************

ALPHABET = [#char#] <^UC><NoHy><NoDef> <CB>:<> [A-Z���]:[a-z���] <I>:I

$R20$ = <CB>:<> [A-Z���] <=> [a-z���] [a-z���������]


%**************************************************************************
% low to up
%**************************************************************************

ALPHABET = [#char#] <NoHy><NoDef> <^UC>:<> [a-z���]:[A-Z���]

$R21$ = ((<^UC>:<>) [a-z���] <=> [A-Z���]) & \
	!(.* <^UC>:<> .:[a-z���] .*)


%**************************************************************************
%  Composition of rules  
%**************************************************************************

$T1$ = $R1$ || $R2$ || $R3$ || $R4$
$T2$ = $R5$ || $R6$ || $R7$ || $R8$
$T3$ = $R9$ || $R10$ || $R11$ || $R12$
$T4$ = $R13$ || $R14$ || $R15$
$T5$ = $R16$ || $R17$ || $R18$
$T6$ = $R19$ || $R20$ || $R21$

$X1$ = $T1$ || $T2$ || $T3$
$X2$ = $T4$ || $T5$ || $T6$

% result transducer
$X1$ || $X2$
