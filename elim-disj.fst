%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         elim-disj.fst
%  Author:       Helmut Schmid; IMS, Universitaet Stuttgart
%  Date:         November 2004
%  Content:      expansion of disjunctive features
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"

ALPHABET = [#char# #stemtype# #morpheme_boundary_marker# #cap-trigger# #feature# \
<HYP><GUESSER><PREF><VPREF><VPART><QUANT><Old><X><F>] \
[<1><3>]:<13> \
[<Dat><Acc>]:<DA> \
[<Gen><Acc>]:<GA> \
[<Gen><Dat>]:<GD> \
[<Gen><Dat><Acc>]:<GDA> \
[<Masc><Neut>]:<MN> \
[<Nom><Acc>]:<NA> \
[<Nom><Dat><Acc>]:<NDA> \
[<Nom><Gen><Acc>]:<NGA> \
[#case#]:<NGDA> \
[<Pred><Adv>]:<PA>

.*
