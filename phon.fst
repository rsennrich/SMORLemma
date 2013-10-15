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

ALPHABET = [#char# #phon-trigger# #phon-trigger3# #morpheme_boundary_marker#] \
	<n>:[nlmrn] <d>:[dfgklnpst] <~n>:[<>n]

$R1$ =  (<n> <=> n (<CB>? [ac-knoqs-zäöüßAC-KNOQS-ZÄÖÜ])) &\
	(<n> <=> l (<CB>? [Ll])) &\
	(<n> <=> m (<CB>? [BbMmPp])) &\
	(<n> <=> [rn] (<CB>? [Rr])) &\
        (<d><=>d (<CB>? [a-ehijmoqru-xäöüßA-EHIJMOQRU-XÄÖÜ])) &\
        (<d><=>f (<CB>? [Ff])) &\
        (<d><=>g (<CB>? [Gg])) &\
        (<d><=>k (<CB>? [Kk])) &\
        (<d><=>l (<CB>? [Ll])) &\
        (<d><=>n (<CB>? [Nn])) &\
        (<d><=>p (<CB>? [Pp])) &\
        (<d><=>s (<CB>? [Ss])) &\
        (<d><=>t (<CB>? [Tt])) &\
       (<~n><=><> (<CB>? [bcdfghjklmnpqrstvwxyz])) &\
       (<~n><=>n (<CB>? [AEIOUÄÖÜaeiouäöü]))


%**************************************************************************
% birst+st -> birst
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #phon-trigger3# #morpheme_boundary_marker#]  [st]:<>

$R2$ = ((st<FB>) s<=><> (t:.)) & ((st<FB>s:.) t<=><>)


%**************************************************************************
% Umlaut
% Apfel$		==> Äpfel
% alter$e 		==> ältere
% Saal$e		==> Säle
% Koog$e		==> Köge
% Schwabe<^Del>$in	==> Schwäbin
% Tochter$		==> Töchter
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger# #ss-trigger# #morpheme_boundary_marker#] <e> \
        <UL>:<FB> [aouAOU]:[äöüÄÖÜ] [ao]:<>

$Cons$ = [bcdfghjklmnpqrstvwxyzß]
$ConsUp$ = [BCDFGHJKLMNPQRSTVWXYZ]
$LC$ = <CB> | <WB> | <NoHy> | <NoDef> | <^UC> | $Cons$ | $ConsUp$

$R3$ = ($LC$ [aouAOU]<=>[äöüÄÖÜ] ([aou]:.? $Cons$* <FB>? ([#ss-trigger#]|(e($Cons$|<^Del>)))? <UL>:<FB>)) &\
        (([aA]:[äÄ]) a <=> <> ($Cons$)) &\
        (([oO]:[öÖ]) o <=> <> ($Cons$))

%**************************************************************************
% ß/ss-alternation
% (1) obligatorisch nach kurzem Vokal und vor 'e'
% Fluß~+es	==> Flusses
% Fuß+es	==> Fußes
% Zeugnis~+es	==> Zeugnisses
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] <SSalt><SSneu><e> \
	<SS>:[<><SS>]

% Schuß<SS><FB><SS...> --> Schuß<FB><SS...>
$R4a$ =	(ß) <SS> <=> <> (<FB> [#ss-trigger#])


$B$ = [#morpheme_boundary_marker#]* [<FB><INS-E>] [#morpheme_boundary_marker#]*

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] <SSalt><SSneu><e> \
	ß:s <SS>:[<>s]

% Note: <SSneu> and <SSalt> are excluded in the respective contexts
% since <SSneu>:s and <SSalt:<> are not in the alphabet
$R4b$ =	(ß <=> s (<FB>? [#ss-trigger#]:. $B$ [aeiou])) & \
	((ß:s <FB>? | s) [#ss-trigger#] <=> s ($B$ [aeiou])) & \
	((s) [#ss-trigger#] <=> <> ($B$ ($Cons$ | <WB>)))

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] <e> \
	[ß<SSneu>]:s <SSalt>:<>

$R4c$ =	(ß <=> s (<FB>? <SSneu>:.)) & \
	((ß:s <FB>? | s) <SSneu> <=> s ) & \
	((ß <FB>?) <SSalt> <=> <> )

$R4$ = $R4a$ || $R4b$ || $R4c$


%**************************************************************************
% e-elision after e
% Bote+e	==> Bote
% leise$er	==> leiser
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] <e> \
	e:<>

$R5$ = e <=> <> ($B$ e)


%**************************************************************************
% optional e-elision with genitive
% Tisch+es	==> Tisches, Tischs
% Haus+es	==> Hauses
% Fluß~+es	==> Flusses
% Fuß+es	==> Fußes
% Zeugnis~+es	==> Zeugnisses
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] <e>

$R6$ = (.* ([bcdfghjklmnpqrtuvwy] <FB>? $B$ e:<> s <^Gen>)+ .*)+


%**************************************************************************
% e-elision before '
% hab+e's	==> hab's
% kauf+t's	==> kauft's
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] <e> \
	e:<>

$R7$ = e <=> <> ('s)


%**************************************************************************
% adjective-el/er e-elision
% dunkel<^Ax>+e		==> dunkle
% teuer<^Ax>+e		==> teure
%**************************************************************************

$R8$ = e <=> <> ([lr] <^Ax> $B$ e)


%**************************************************************************
% verb-el/er e-elision (some now handled in defaults.fst)
% sicher<^Vx>+en       ==> sichern
% handel<^Vx>+en       ==> handeln
% sicher<^Vx>+e                ==> sichre, sichere
% handel<^Vx>+e                ==> handle, ?handele
% sicher<^Vx>+est      ==> sicherst, *sichrest, ?sicherest
% handel<^Vx>+est      ==> handelst, *handlest, ?handelest
% rechn+ung            ==> Rechnung
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] <e> \
	e:<>

$R9$ = (<e>[lr] $B$) e <=> <> (n | s?t)

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] <e> <e>:<>

$R10$ = <e> <=> <> (n $B$ [eui])

%**************************************************************************
% s-elimination
% ras&st	==> (du) rast
% feix&st	==> (du) feixt
% birs+st	==> (du) birst
% groß$st 	==> größt
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
	 <e>:e s:<>

$R11$ = ([xsßz] $B$) s <=> <> (t)


%**************************************************************************
% e-epenthesis
% regn&t	==> regnet
% find&st	==> findest
% bet&st	==> betest
% gelieb&t&st	==> geliebtest
% gewappn&t&st  ==> gewappnetst
%**************************************************************************
% different from DMOR

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
	 <INS-E>:<>

% gefeiert&ste  ==> gefeiertste
% gefeiert&ste  ==> gefeiertste
$R12$ = ([a-df-hj-z]e[rl]t) <INS-E> <=> <> (st)


ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
	 <INS-E>:[e<>]

% gewappn&t&st  ==> gewappnetst
$R13$ = ((((c[hk])|[bdfgmp])n | [a-zäöüß]t) <INS-E> <=> e) & \
	((<INS-E>:e[dt]) <INS-E> <=> <>)


ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
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

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
	 f:[<f><>] [<OLDORTH><NEWORTH>]:<>

$Rf$ =	(f f <=> <> ([#morpheme_boundary_marker#]* <OLDORTH>:. $B$ [fF] [aeiouäöü])) &\
	(f f <=> <f> ([#morpheme_boundary_marker#]* <NEWORTH>:. $B$ [fF] [aeiouäöü])) &\
	(f f <=> <x> ([#morpheme_boundary_marker#]* $B$ [fF] [aeiouäöü])) &\
	((f:<> [#morpheme_boundary_marker#]*) <OLDORTH> <=> <>) &\
	((f:<f> [#morpheme_boundary_marker#]*) <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
	l:[<l><>] [<OLDORTH><NEWORTH>]:<> <f>:f

$Rl$ =	(l l <=> <> ([#morpheme_boundary_marker#]* <OLDORTH>:. $B$ [lL] [aeiouäöü])) &\
	(l l <=> <l> ([#morpheme_boundary_marker#]* <NEWORTH>:. $B$ [lL] [aeiouäöü])) &\
	(l l <=> <x> ([#morpheme_boundary_marker#]* $B$ [lL] [aeiouäöü])) &\
	((l:<> [#morpheme_boundary_marker#]*) <OLDORTH> <=> <>) &\
	((l:<l> [#morpheme_boundary_marker#]*) <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
	m:[<m><>] [<OLDORTH><NEWORTH>]:<> <l>:l

$Rm$ =	(m m <=> <> ([#morpheme_boundary_marker#]* <OLDORTH>:. $B$ [mM] [aeiouäöü])) &\
	(m m <=> <m> ([#morpheme_boundary_marker#]* <NEWORTH>:. $B$ [mM] [aeiouäöü])) &\
	(m m <=> <x> ([#morpheme_boundary_marker#]* $B$ [mM] [aeiouäöü])) &\
	((m:<> [#morpheme_boundary_marker#]*) <OLDORTH> <=> <>) &\
	((m:<m> [#morpheme_boundary_marker#]*) <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
	n:[<n><>] [<OLDORTH><NEWORTH>]:<> <m>:m

$Rn$ =	(n n <=> <> ([#morpheme_boundary_marker#]* <OLDORTH>:. $B$ [nN] [aeiouäöü])) &\
	(n n <=> <n> ([#morpheme_boundary_marker#]* <NEWORTH>:. $B$ [nN] [aeiouäöü])) &\
	(n n <=> <x> ([#morpheme_boundary_marker#]* $B$ [nN] [aeiouäöü])) &\
	((n:<> [#morpheme_boundary_marker#]*) <OLDORTH> <=> <>) &\
	((n:<n> [#morpheme_boundary_marker#]*) <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#]  \
	r:[<r><>] [<OLDORTH><NEWORTH>]:<> <n>:n

$Rr$ =	(r r <=> <> ([#morpheme_boundary_marker#]* <OLDORTH>:. $B$ [rR] [aeiouäöü])) &\
	(r r <=> <r> ([#morpheme_boundary_marker#]* <NEWORTH>:. $B$ [rR] [aeiouäöü])) &\
	(r r <=> <x> ([#morpheme_boundary_marker#]* $B$ [rR] [aeiouäöü])) &\
	((r:<> [#morpheme_boundary_marker#]*) <OLDORTH> <=> <>) &\
	((r:<r> [#morpheme_boundary_marker#]*) <NEWORTH> <=> <>)

ALPHABET = [#char# #phon-trigger# #orth-trigger# #morpheme_boundary_marker#] \
	t:[<t><>] [<OLDORTH><NEWORTH>]:<> <r>:r

$Rt$ =	(t t <=> <> ([#morpheme_boundary_marker#]* <OLDORTH>:. $B$ [tT] [aeiouäöü])) &\
	(t t <=> <t> ([#morpheme_boundary_marker#]* <NEWORTH>:. $B$ [tT] [aeiouäöü])) &\
	(t t <=> <x> ([#morpheme_boundary_marker#]* $B$ [tT] [aeiouäöü])) &\
	((t:<> [#morpheme_boundary_marker#]*) <OLDORTH> <=> <>) &\
	((t:<t> [#morpheme_boundary_marker#]*) <NEWORTH> <=> <>)

$R15$ = ($Rf$ || $Rl$ || $Rm$) || ($Rn$ || $Rr$ || $Rt$)


%**************************************************************************
% eliminate letters
% Virus<^pl>+en		==> Viren
% Museum<^pl>+en	==> Museen
% Affrikata<^pl>+en	==> Affrikaten		
%**************************************************************************

ALPHABET = [#char# #phon-trigger# #morpheme_boundary_marker#]  [uio]:<> <t>:t

% eliminate -is/-us/-um/-on/-os
$R16$ = [uio] <=> <> ([mns]:. <^pl>)

ALPHABET = [#char# #phon-trigger# #morpheme_boundary_marker#] [mnsa]:<>
$R17$ = [mnsa] <=> <> <^pl>

% eliminate e 
ALPHABET = [#char# #phon-trigger# #morpheme_boundary_marker#] e:<>
$R18$ = e <=> <> <^Del>
	

%**************************************************************************
% Eliminate markers 
%**************************************************************************

ALPHABET = [#char# #phon-trigger2# #morpheme_boundary_marker#] [<^Gen><^Del><^pl><^Ax><WB>]:<> <FB>:<\~> <INS-E>:<>

$R19$ = .*


%**************************************************************************
% up to low
%**************************************************************************

ALPHABET = [#char# #morpheme_boundary_marker#] <^UC><NoHy><NoDef> <CB>:<#> [A-ZÄÖÜ]:[a-zäöü] <I>:I

$R20$ = <CB>:<#> [A-ZÄÖÜ] <=> [a-zäöü] [a-zäöüßáéíóú]


%**************************************************************************
% low to up
%**************************************************************************

ALPHABET = [#char# #morpheme_boundary_marker#] <NoHy><NoDef> <^UC>:<> [a-zäöü]:[A-ZÄÖÜ]

$R21$ = ((<^UC>:<>) [a-zäöü] <=> [A-ZÄÖÜ]) & \
	!(.* <^UC>:<> .:[a-zäöü] .*)



%**************************************************************************
% remove word-initial morpheme boundary markers
%**************************************************************************

$R22$ = <#>:<>* <NoHy>?<NoDef>? <#>:<>* [#char#] [#char# #morpheme_boundary_marker# <NoHy><NoDef>]*

%**************************************************************************
% remove duplicate morpheme boundary markers
%**************************************************************************

ALPHABET = [#char# #morpheme_boundary_marker#] <NoHy><NoDef>

$R23$ = [#morpheme_boundary_marker#]:<> ^-> (__[#morpheme_boundary_marker#])

%**************************************************************************
%  Composition of rules  
%**************************************************************************

$T1$ = $R1$ || $R2$ || $R3$ || $R4$ || $R5$

$MORPH$ = <>:<WB> $MORPH$ <>:<WB> || $T1$

$MORPH$ = (($MORPH$ || $R6$) $InsertElisionMarker$ ) | $MORPH$

$T3$ = $R7$ || $R8$ || $R9$ || $R10$
$T4$ = $R11$ || $R12$ || $R13$ || $R14$
$T5$ = $R15$ || $R16$ || $R17$ || $R18$
$T6$ = $R19$ || $R20$ || $R21$ || $R22$ || $R23$

$X$ = $T3$ || $T4$ || $T5$ || $T6$

% result transducer
$MORPH$ = $MORPH$ || $X$
