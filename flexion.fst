%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% inflectional endings --
% converted to S-FST from flexion.lex
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$Fix#$ = <>:<Fix#>
$Adj#$ = <>:<Low#>
$Adj#Up$ = <>:<Up#>
$N#$ = <>:<Up#>
$N#Low/Up$ = <>:<Low#>
$V#$ = <>:<Low#>
$Closed#$ = <>:<Low#>
$Closed#Up$ = <>:<Up#>

$SS$ = <OLDORTH>:<SSalt> | <NEWORTH>:<SSneu> | <>:<SS>


% =======================================================================
% Nouns
% =======================================================================

%  Frau; Mythos; Chaos
$NSg_0$ =       {<NGDA><Sg>}:{<FB>} $N#$

%  Mensch-en
$NSg_en$ =      {<Nom><Sg>}:{<FB>}      $N#$ |\
                {<GDA><Sg>}:{<FB>en}    $N#$ |\
                {<DA><Sg><Simp>}:{<FB>} $N#$

%  Nachbar-n
$NSg_n$ =       {<Nom><Sg>}:{<FB>}  $N#$ |\
                {<GDA><Sg>}:{<FB>n} $N#$

%  Haus-es, Geist-(e)s
$NSg_es$ =      {<NDA><Sg>}:{<FB>}         $N#$ |\
                {<Gen><Sg>}:{<FB>es<^Gen>} $N#$ |\
                {<Dat><Sg><Old>}:{<FB>e}   $N#$

%  Opa-s, Klima-s
$NSg_s$ =       {<NDA><Sg>}:{<FB>}  $N#$ |\
                {<Gen><Sg>}:{<FB>s} $N#$



$NPl_0$ =       {<NGA><Pl>}:{}  $N#$ |\
                {<Dat><Pl>}:{n} $N#$

$NPl_x$ =       {<NGDA><Pl>}:{} $N#$

% -----------------------------------------------------------------------

$N_0_\$$ =                  $NSg_0$ |\
                {}:{<UL>}   $NPl_0$

$N_0_\$e$ =                 $NSg_0$ |\
                {}:{<UL>e}  $NPl_0$

$N_0_e$ =                   $NSg_0$ |\
                {}:{<FB>e}  $NPl_0$

$N_0_en$ =                  $NSg_0$ |\
                {}:{<FB>en} $NPl_x$

$N_0_n$ =                   $NSg_0$ |\
                {}:{<FB>n}  $NPl_x$

$N_0_s$ =                   $NSg_0$ |\
                {}:{<FB>s}  $NPl_x$

$N_0_x$ =                   $NSg_0$ |\
                            $NPl_x$

$N_en_en$ =                 $NSg_en$ |\
                {}:{<FB>en} $NPl_x$

$N_es_\$e$ =                $NSg_es$ |\
                {}:{<UL>e}  $NPl_0$

$N_es_\$er$ =               $NSg_es$ |\
                {}:{<UL>er} $NPl_0$

$N_es_er$ =               $NSg_es$ |\
                {}:{er}     $NPl_0$

$N_s_\$e$ =                $NSg_s$ |\
              {<>}:{<UL>e} $NPl_0$

$N_es_e$ =                  $NSg_es$ |\
                {}:{<FB>e}  $NPl_0$

$N_es_en$ =                 $NSg_es$ |\
                {}:{<FB>en} $NPl_x$

$N_n_n$ =                   $NSg_n$ |\
                {}:{<FB>n}  $NPl_x$

$N_s_0$ =                   $NSg_s$ |\
                            $NPl_0$

$N_s_\$$ =                  $NSg_s$ |\
                {}:{<UL>}   $NPl_0$

$N_s_\$x$ =                 $NSg_s$ |\
                {}:{<UL>}   $NPl_x$

$N_s_e$ =                   $NSg_s$ |\
                {}:{<FB>e}  $NPl_0$

$N_s_en$ =                  $NSg_s$ |\
                {}:{<FB>en} $NPl_x$

$N_s_n$ =                   $NSg_s$ |\
                {}:{<FB>n}  $NPl_x$

$N_s_s$ =                   $NSg_s$ |\
                {}:{<FB>s}  $NPl_x$

$N_s_x$ =                   $NSg_s$ |\
                            $NPl_x$



% -----------------------------------------------------------------------
% Feminine nouns (cf. DMOR Entwicklerhandbuch, section 6.1)
% -----------------------------------------------------------------------

%  Matrix/--
$NFem/Sg$ =     {<+NN><Fem>}:{} $NSg_0$

%  Matrizen     
$NFem/Pl$ =     {<+NN><Fem>}:{} $NPl_x$



%  Mutter/Mütter
$NFem_0_\$$ =   {<+NN><Fem>}:{} $N_0_\$$

%  Wand/Wände
$NFem_0_\$e$ =  {<+NN><Fem>}:{} $N_0_\$e$

%  Drangsal/Drangsale; Retina/Retinae
$NFem_0_e$ =    {<+NN><Fem>}:{} $N_0_e$

%  Frau/Frauen; Arbeit/Arbeiten 
$NFem_0_en$ =   {<+NN><Fem>}:{} $N_0_en$

%  Hilfe/Hilfen; Tafel/Tafeln; Nummer/Nummern 
$NFem_0_n$ =    {<+NN><Fem>}:{} $N_0_n$

%  Oma/Omas     
$NFem_0_s$ =    {<+NN><Fem>}:{} $N_0_s$

%  Ananas/Ananas        
$NFem_0_x$ =    {<+NN><Fem>}:{} $N_0_x$



%
% Special classes  (cf. DMOR Entwicklerhandbuch, section 6.1.1)
%

%  Hosteß/Hostessen
$NFem-s/ssen$ = $SS$ {<+NN><Fem>}:{} $N_0_en$

%  Kenntnis/Kenntnisse
$NFem-s/sse$ =  $SS$ {<+NN><Fem>}:{} $N_0_\$e$

%  Nuß/Nüsse
$NFem-s/\$sse$ =$SS$ {<+NN><Fem>}:{} $N_0_\$e$



%  Freundin/Freundinnen 
$NFem-in$ =                               $NFem/Sg$ |\
                        {}:{nen}          $NFem/Pl$



%
% Foreign words (cf. DMOR Entwicklerhandbuch, section 6.1.2)
%

%  Algebra/Algebren; Firma/Firmen
$NFem-a/en$ =                             $NFem/Sg$ |\
                        {}:{<^pl>en}      $NFem/Pl$

%  Basis/Basen
$NFem-is/en$ =                            $NFem/Sg$ |\
                        {}:{<^pl>en}      $NFem/Pl$

%  Neuritis/Neuritiden
$NFem-is/iden$ =                          $NFem/Sg$ |\
                        {}:{<^pl>iden}    $NFem/Pl$



% -----------------------------------------------------------------------
% Masculine nouns (cf. DMOR Entwicklerhandbuch, section 6.2)
% -----------------------------------------------------------------------

%  Fiskus/--
$NMasc/Sg_0$ =          {<+NN><Masc>}:{}  $NSg_0$

%  Abwasch-(e)s/--; Glanz-es/--;
$NMasc/Sg_es$ =         {<+NN><Masc>}:{}  $NSg_es$

%  Hagel-s/--; Adel-s/--
$NMasc/Sg_s$ =          {<+NN><Masc>}:{}  $NSg_s$

%  --/Bauten
$NMasc/Pl$ =            {<+NN><Masc>}:{}  $NPl_x$



%  Revers/Revers
$NMasc_0_x$ =           {<+NN><Masc>}:{}  $N_0_x$



%  Tag-(e)s/Tage; 
$NMasc_es_e$ =          {<+NN><Masc>}:{}  $N_es_e$

%  Arzt-(e)s/Ärzte;
$NMasc_es_\$e$ =        {<+NN><Masc>}:{}  $N_es_\$e$

%  Gott-(e)s/Götter
$NMasc_es_\$er$ =       {<+NN><Masc>}:{}  $N_es_\$er$

% Tenor-s/Tenöre
$NMasc_s_\$e$  =   {<+NN><Masc>}:{<>}  $N_s_\$e$

% Geist-(e)s/Geister
$NMasc_es_er$ =         {<+NN><Masc>}:{<>}      $N_es_er$

%  Fleck-(e)s/Flecken
$NMasc_es_en$ =         {<+NN><Masc>}:{}  $N_es_en$

%  Adler-s/Adler; Engel-s/Engel
$NMasc_s_0$ =           {<+NN><Masc>}:{}  $N_s_0$

%  Apfel-s/Äpfel; Vater-s/Väter
$NMasc_s_\$$ =          {<+NN><Masc>}:{}  $N_s_\$$

%  Wagen-s/Wagen
$NMasc_s_x$ =           {<+NN><Masc>}:{}  $N_s_x$

%  Garten-s/Gärten
$NMasc_s_\$x$ =         {<+NN><Masc>}:{}  $N_s_\$x$

%  Drilling-s/Drillinge
$NMasc_s_e$ =           {<+NN><Masc>}:{}  $N_s_e$

%  Zeh-s/Zehen
$NMasc_s_en$ =          {<+NN><Masc>}:{}  $N_s_en$

%  Muskel-s/Muskeln; See-s/Seen
$NMasc_s_n$ =           {<+NN><Masc>}:{}  $N_s_n$

%  Chef-s/Chefs; Bankier-s/Bankiers
$NMasc_s_s$ =           {<+NN><Masc>}:{}  $N_s_s$



%  Fels-en/Felsen; Mensch-en/Menschen
$NMasc_en_en$ =         {<+NN><Masc>}:{}  $N_en_en$

%  Affe-n/Affen; Bauer-n/Bauern
$NMasc_n_n$ =           {<+NN><Masc>}:{}  $N_n_n$



%
% Special classes  (cf. DMOR Entwicklerhandbuch, section 6.2.1)
%

%  Haß-Hasses/--
$NMasc-s/Sg$ =          $SS$ {<+NN><Masc>}:{}   $NSg_es$

%  Nimbus-/Nimbusse
$NMasc-s0/sse$ =        $SS$ {<+NN><Masc>}:{}   $N_0_e$

%  Bus/Busse; Erlaß/Erlasse
$NMasc-s/sse$ =         $SS$ {<+NN><Masc>}:{}   $N_es_e$

%  Baß/Bässe
$NMasc-s/\$sse$ =       $SS$ {<+NN><Masc>}:{}   $N_es_\$e$



%  Name-ns/Namen; Gedanke(n); Buchstabe
$NMasc-ns$ =    {<+NN><Masc><Nom><Sg>}:{}       $N#$ |\
                {<+NN><Masc><Gen><Sg>}:{<FB>ns} $N#$ |\
                {<+NN><Masc><DA><Sg>}:{<FB>n}   $N#$ |\
                {<+NN><Masc>}:{n}               $NPl_x$



%  Lehrer/in
$NMasc_s_0=in$ =                     $NMasc_s_0$ |\
                        <FB>in       $NFem-in$

%  Bibliothekar/in
$NMasc_s_e=in$ =                     $NMasc_s_e$ |\
                        <FB> in      $NFem-in$

%  Professor/in
$NMasc_s_en=in$ =                    $NMasc_s_en$ |\
                        <FB> in      $NFem-in$

%  Absolvent/in
$NMasc_en_en=in$ =                   $NMasc_en_en$ |\
                        <FB>in       $NFem-in$

%  Bote/Botin; Nachbar/Nachbarin;
$NMasc_n_n=in$ =                     $NMasc_n_n$ |\
                <>:<^Del><FB>in      $NFem-in$

%  Schwabe/Schwäbin; Bauer/Bäuerin
$NMasc_n_n=\$in$ =                   $NMasc_n_n$ |\
                <FB>:<^Del><>:<UL>in $NFem-in$


%
% Foreign words (cf. DMOR Entwicklerhandbuch, section 6.2.2)
%

%  Virus/Viren
$NMasc-us/en$ =                           $NMasc/Sg_0$ |\
        {<+NN><Masc><Gen><Sg>}:{<FB>ses}  $N#$ |\
                        {}:{<^pl>en}      $NMasc/Pl$

%  Intimus/Intimi
$NMasc-us/i$ =                            $NMasc/Sg_0$ |\
        {<+NN><Masc><Gen><Sg>}:{<FB>ses}  $N#$ |\
                        {}:{<^pl>i}       $NMasc/Pl$



%
% Nouns with adjectival inflection
%

% Beamter; Gefreiter
$NMasc-Adj$ =   {<+NN><Masc><Nom><Sg><Wk>}:{}    $N#$ |\
                {<+NN><Masc><NA><Pl><St>}:{}     $N#$ |\
                {<+NN><Masc><Dat><Sg><St>}:{m}   $N#$ |\
                {<+NN><Masc><GA><Sg>}:{n}        $N#$ |\
                {<+NN><Masc><Dat><Sg><Wk>}:{n}   $N#$ |\
                {<+NN><Masc><NGA><Pl><Wk>}:{n}   $N#$ |\
                {<+NN><Masc><Dat><Pl>}:{n}       $N#$ |\
                {<+NN><Masc><Nom><Sg><St>}:{r}   $N#$ |\
                {<+NN><Masc><Gen><Pl><St>}:{r}   $N#$



% -----------------------------------------------------------------------
% Neuter nouns (cf. DMOR Entwicklerhandbuch, section 6.3)
% -----------------------------------------------------------------------

%  Abseits-/--
$NNeut/Sg_0$ =          {<+NN><Neut>}:{}  $NSg_0$

%  Ausland-(e)s/--
$NNeut/Sg_es$ =         {<+NN><Neut>}:{}  $NSg_es$

%  Abitur-s/--
$NNeut/Sg_s$ =          {<+NN><Neut>}:{}  $NSg_s$

%  Deutsch-en/--
$NNeut/Sg_en$ =         {<+NN><Neut>}:{}  $NSg_en$

%  --/Fresken
$NNeut/Pl$ =            {<+NN><Neut>}:{}  $NPl_x$



%  Relais-/Relais
$NNeut_0_x$ =           {<+NN><Neut>}:{}  $N_0_x$



%  Spiel-(e)s/Spiele; Abgas-es/Abgase
$NNeut_es_e$ =          {<+NN><Neut>}:{}  $N_es_e$

%  Floß-es/Flöße;
$NNeut_es_\$e$ =        {<+NN><Neut>}:{}  $N_es_\$e$

%  Schild-(e)s/Schilder
$NNeut_es_er$ =         {<+NN><Neut>}:{}  $N_es_\$er$

%  Buch-(e)s/Bücher
$NNeut_es_\$er$ =       {<+NN><Neut>}:{}  $N_es_\$er$

%  Bett-(e)s/Betten
$NNeut_es_en$ =         {<+NN><Neut>}:{}  $N_es_en$

%  Feuer-s/Feuer; Mittel-s/Mittel
$NNeut_s_0$ =           {<+NN><Neut>}:{}  $N_s_0$

%  Kloster-s/Klöster
$NNeut_s_\$$ =          {<+NN><Neut>}:{}  $N_s_\$$

%  Almosen-s/Almosen
$NNeut_s_x$ =           {<+NN><Neut>}:{}  $N_s_x$

%  Dreieck-s/Dreiecke
$NNeut_s_e$ =           {<+NN><Neut>}:{}  $N_s_e$

%  Juwel-s/Juwelen
$NNeut_s_en$ =          {<+NN><Neut>}:{}  $N_s_en$

%  Auge-s/Augen
$NNeut_s_n$ =           {<+NN><Neut>}:{}  $N_s_n$

%  Sofa-s/Sofas;
$NNeut_s_s$ =           {<+NN><Neut>}:{}  $N_s_s$



%
% Special classes (cf. DMOR Entwicklerhandbuch, section 6.3.1)
%

%  Herz-ens
$NNeut-Herz$ =  {<+NN><Neut><NA><Sg>}:{<FB>}     $N#$ |\
                {<+NN><Neut><Gen><Sg>}:{<FB>ens} $N#$ |\
                {<+NN><Neut><Dat><Sg>}:{<FB>en}  $N#$ |\
                {<+NN><Neut><NGDA><Pl>}:{<FB>en} $N#$

%  Innern
$NNeut-Inner$ = {<+NN><Neut><NA><Sg><Wk>}:{<FB>e}  $N#$ |\
                {<+NN><Neut><NA><Sg><St>}:{<FB>es} $N#$ |\
                {<+NN><Neut><GD><Sg>}:{<FB>en}     $N#$ |\
                {<+NN><Neut><GD><Sg>}:{<FB>n}      $N#$ 



%  Zeugnis/Zeugnisse
$NNeut-s/sse$ =         $SS$         $NNeut_es_e$

%  Faß/Fässer
$NNeut-s/\$sser$ =      $SS$         $NNeut_es_\$er$



%
% Foreign words (cf. DMOR Entwicklerhandbuch, section 6.2.2)
%

%  Adverb/Adverbien
$NNeut-0/ien$ =                      $NNeut/Sg_s$ |\
                        {}:{ien}     $NNeut/Pl$

%  Komma/Kommata
$NNeut-a/ata$ =                      $NNeut/Sg_s$ |\
                        {}:{ta}      $NNeut/Pl$

%  Dogma/Dogmen 
$NNeut-a/en$ =                       $NNeut/Sg_s$ |\
                        {}:{<^pl>en} $NNeut/Pl$

% Oxymoron/Oxymora
$NNeut-on/a$ =                       $NNeut/Sg_s$ |\
                        {}:{<^pl>a}  $NNeut/Pl$

%  Aktivum/Aktiva
$NNeut-um/a$ =                       $NNeut/Sg_s$ |\
                        {}:{<^pl>a}  $NNeut/Pl$

%  Museum/Museen
$NNeut-um/en$ =                      $NNeut/Sg_s$ |\
                        {}:{<^pl>en} $NNeut/Pl$



% -----------------------------------------------------------------------
% Pluraliatantum (cf. DMOR-System Administrator's Guide section 6.4)
% -----------------------------------------------------------------------

%  Leute
$N?/Pl_0$ =     {<+NN><NoGend>}:{}   $NPl_0$

%  Kosten
$N?/Pl_x$ =     {<+NN><NoGend>}:{}   $NPl_x$



% -----------------------------------------------------------------------
% Proper names (cf. DMOR-System Administrator's Guide section 6.5)
% -----------------------------------------------------------------------

%  family names ending in -s, -z
$FamName_0$ =   {<+NPROP><NoGend>}:{}    $NSg_0$ |\
                {<+NPROP><NoGend>}:{ens} $NPl_x$

%  family names
$FamName_s$ =   {<+NPROP><NoGend>}:{}    $NSg_s$ |\
                {<+NPROP><NoGend>}:{s}   $NPl_x$

% -----------------------------------------------------------------------

$Name-Fem_0$ =  {<+NPROP><Fem>}:{}       $NSg_0$

$Name-Fem_s$ =  {<+NPROP><Fem>}:{}       $NSg_s$

$Name-Masc_0$ = {<+NPROP><Masc>}:{}      $NSg_0$ |\
          {<+NPROP><Masc><Gen><Sg>}:{\'} $N#$ 

$Name-Masc_s$ = {<+NPROP><Masc>}:{}      $NSg_s$

$Name-Neut_0$ = {<+NPROP><Neut>}:{}      $NSg_0$

$Name-Neut_s$ = {<+NPROP><Neut>}:{}      $NSg_s$

$Name-Pl_0$ =   {<+NPROP><NoGend>}:{}    $NPl_0$

$Name-Pl_x$ =   {<+NPROP><NoGend>}:{}    $NPl_x$

% %  Engländer/Engländer-in
% $Name+er/in$ =  {<+ADJ><Invar>}:{}       $Adj#Up$ |\
%                                          $NMasc_s_0=in$

%  Stuttgart/Stuttgart-er/Stuttgart-er-in
% $Name-Neut+Loc$ =     er                 $Name+er/in$ |\
%                                          $Name-Neut_s$



% =======================================================================
% Adjectives
% =======================================================================

$TMP$ =         {<Fem><NA><Sg>}:{e}      |\
                {<Masc><Nom><Sg><Wk>}:{e} |\
                {<Neut><NA><Sg><Wk>}:{e} |\
                {<NoGend><NA><Pl><St>}:{e} |\
                {<MN><Dat><Sg><St>}:{em} |\
                {<Fem><Gen><Sg><Wk>}:{en} |\
                {<MN><Gen><Sg>}:{en}     |\
                {<Masc><Acc><Sg>}:{en}   |\
                {<NoGend><Dat><Sg><Wk>}:{en} |\
                {<NoGend><Dat><Pl>}:{en} |\
                {<NoGend><NGA><Pl><Wk>}:{en} |\
                {<Fem><GD><Sg><St>}:{er} |\
                {<Masc><Nom><Sg><St>}:{er} |\
                {<NoGend><Gen><Pl><St>}:{er} |\
                {<Neut><NA><Sg><St>}:{es}

$AdjFlexSuff$ =    $TMP$ $Adj#$

$AdjFlexSuff-Up$ = $TMP$ $Adj#Up$

$AdjNNSuff$ =      <+NN>:<> $TMP$ $N#$

% -----------------------------------------------------------------------

% lila; klasse
$Adj0$ =        {<+ADJ><Pos><Invar>}:{}  $Adj#$

% Lila; Klasse
$Adj0-Up$ =     {<+ADJ><Pos><Invar>}:{}  $Adj#Up$



% bloß, bloß-; derartig, derartig-
$AdjPos$ =      {<+ADJ><Pos><PA>}:{<FB>} $Adj#$ |\
                {<+ADJ><Pos>}:{<FB>}     $AdjFlexSuff$ \
%               |{<^ADJ><Pos>}:{<FB>}    $AdjNNSuff$   % nominalization

% besser, besser-; höher, höher-
$AdjComp$ =     {<+ADJ><Comp><PA>}:{er}  $Adj#$ |\
                {<+ADJ><Comp>}:{er}      $AdjFlexSuff$ \
%               |{<^ADJ><Comp>}:{er}     $AdjNNSuff$     % nominalization

% best, besten, best-; hoch:höch-
$AdjSup$ =      {<+ADJ><Sup>}:{sten}     $Adj#$ |\
                {<+ADJ><Sup><PA>}:{st}   $Adj#$ |\
                {<+ADJ><Sup>}:{st}       $AdjFlexSuff$ \
%               |{<^ADJ><Sup>}:{st}      $AdjNNSuff$



$Adj&$ =                        $AdjPos$ |\
                {}:{<FB>}       $AdjComp$ |\
                {}:{<INS-E>}    $AdjSup$

% faul-, fauler-, faulst-
$Adj+$ =                        $AdjPos$ |\
                {}:{<FB>}       $AdjComp$ |\
                {}:{<FB>}       $AdjSup$

% bunt, bunter-, buntest-
$Adj+e$ =                       $AdjPos$ |\
                {}:{<FB>}       $AdjComp$ |\
                {}:{<FB>e}      $AdjSup$

% frei-, freier, frei(e)st-
$Adj+(e)$ =                     $AdjPos$ |\
                {}:{<FB>}       $AdjComp$ |\
                {}:{<FB>}       $AdjSup$ |\
                {}:{<FB>e}      $AdjSup$

% krass-, krasser-, krassest-
$Adj~+e$ =      $SS$            $AdjPos$ |\
                $SS$ {}:{<FB>}  $AdjComp$ |\
                $SS$ {}:{<FB>e} $AdjSup$

% warm-, wärmer-, wärmst-
$Adj\$$ =                  $AdjPos$ |\
                {}:{<UL>}  $AdjComp$ |\
                {}:{<UL>}  $AdjSup$

% kalt-, kälter-, kältest-
$Adj\$e$ =                 $AdjPos$ |\
                {}:{<UL>}  $AdjComp$ |\
                {}:{<UL>e} $AdjSup$

% dunkel; finster
$Adj-el/er$ =   {}:{<^Ax>}      $Adj+$



% innen; feil
$AdjPosPred$ =  {<+ADJ><Pos><Pred>}:{}   $Adj#$

% ander-; vorig-
$AdjPosAttr$ =  {<+ADJ><Pos>}:{<FB>}     $AdjFlexSuff$ 
%               |{<^ADJ><Pos>}:{}        $AdjNNSuff$  % nominalization

% Ander-; Vorig-
$AdjPosAttr-Up$ = {<+ADJ><Pos>}:{<FB>}   $AdjFlexSuff-Up$

% inner-, innerst-; hinter-, hinterst-
$AdjPosSup$ =   {}:{<FB>}  $AdjPosAttr$ |\
                {}:{<FB>}  $AdjSup$



%  deutsch; [das] Deutsch
$Adj+Lang$ =                    $Adj+$ |\
                                $NNeut/Sg_s$

$AdjNN$ =                  $AdjPosPred$



% =======================================================================
% Verbs
% =======================================================================

$V+(es)$ =      {/'s}:{'s}?  $V#$

% -----------------------------------------------------------------------

% sei; hab/habe; werde; tu
$VAImpSg$ =      {<+V><Imp><Sg>}:{<^imp>}           $V+(es)$

% seid; habt; werdet; tut
$VAImpPl$ =      {<+V><Imp><Pl>}:{<^imp>}           $V+(es)$

%  bin; habe; werde; tue
$VAPres1SgInd$ = {<+V><1><Sg><Pres><Ind>}:{}        $V+(es)$

%  bist; hast; wirst; tust
$VAPres2SgInd$ = {<+V><2><Sg><Pres><Ind>}:{}        $V+(es)$

%  ist; hat; wird; tut
$VAPres3SgInd$ = {<+V><3><Sg><Pres><Ind>}:{}        $V+(es)$

%  sind; haben; werden; tun
$VAPres1/3PlInd$ = {<+V><13><Pl><Pres><Ind>}:{}     $V+(es)$

%  seid; habt; werdet; tut
$VAPres2PlInd$ = {<+V><2><Pl><Pres><Ind>}:{}        $V+(es)$

$VAPresKonjSg$ = {<+V><13><Sg><Pres><Subj>}:{<FB>}  $V+(es)$ |\ % sei-; habe-; werde-; tue-
                 {<+V><2><Sg><Pres><Subj>}:{<FB>st} $V+(es)$ % sei-st; habe-st; werde-st; tue-st

$VAPresKonjPl$ = {<+V><13><Pl><Pres><Subj>}:{<FB>n} $V+(es)$ |\ % seie-n; habe-n; werde-n; tu-n
                 {<+V><2><Pl><Pres><Subj>}:{<FB>t}  $V+(es)$ % seie-t; habe-t; werde-et; tu-t

$VAPastKonj2$ =  {<+V><2><Sg><Past><Subj>}:{<FB>st} $V+(es)$ |\ % wär-st
                 {<+V><2><Pl><Past><Subj>}:{<FB>t}  $V+(es)$    % wär-t

% -----------------------------------------------------------------------

$VPPres$ =      {<+V><PPres>}:{}        $V#$ |\
            {<+V><PPres><zu>}:{<^zz>}   $V#$ \
%               |{<^VPRES>}:{}  $Adj+$ |\
%               {<^VPRES><zu>}:{<^zz>}  $Adj+$

$VPPast$ =      {<+V><PPast>}:{<^pp>}   $V#$ \
%               |{<^VPAST>}:{<^pp>}     $Adj&$

$VPP-en$ =      {}:{<FB>en}             $VPPast$

$VPP-t$ =       {}:{<INS-E>t}           $VPPast$



$VInf$ =        {<+V><Inf>}:{}          $V#$ |\
                {<+V><Inf><zu>}:{<^zz>} $V#$ \
%               |{<^VINF>}:{}           $NNeut/Sg_s$

$VInf+PPres$ =              $VInf$ |\
                {}:{d}      $VPPres$

$VInfStem$ =    {}:{<FB>en} $VInf+PPres$



                % kommt! schaut! arbeit-e-t
$VImpPl$ =      {<+V><Imp><Pl>}:{<INS-E>t<^imp>}        $V+(es)$

                % komm! schau! arbeit-e
$VImpSg$ =      {<+V><Imp><Sg>}:{<INS-E><^imp>}         $V+(es)$

                % flicht! (not: flicht-e!)
$VImpSg0$ =     {<+V><Imp><Sg>}:{<^imp>}                $V+(es)$



                % (ich) will, bedarf
$VPres1Irreg$ = {<+V><1><Sg><Pres><Ind>}:{<FB>}         $V+(es)$

                % (ich) liebe, rate, sammle
$VPres1Reg$ =   {<+V><1><Sg><Pres><Ind>}:{<FB>e}        $V+(es)$

                % (du) hilfst, rätst
$VPres2Irreg$ = {<+V><2><Sg><Pres><Ind>}:{<FB>st}       $V+(es)$

                % (du) liebst, biet-e-st, sammelst
$VPres2Reg$ =   {<+V><2><Sg><Pres><Ind>}:{<INS-E>st}    $V+(es)$

                % (er) rät, will
$VPres3Irreg$ = {<+V><3><Sg><Pres><Ind>}:{<FB>}         $V+(es)$

                % (er) liebt, hilft, sammelt
$VPres3Reg$ =   {<+V><3><Sg><Pres><Ind>}:{<INS-E>t}     $V+(es)$

                % (wir) lieben, wollen, sammeln
$VPresPlInd$ =  {<+V><13><Pl><Pres><Ind>}:{<FB>en}      $V+(es)$ |\
                % (ihr) liebt, biet-e-t, sammelt
                {<+V><2><Pl><Pres><Ind>}:{<INS-E>t}     $V+(es)$

                % (ich) liebe, wolle, sammle
$VPresKonj$ =   {<+V><13><Sg><Pres><Subj>}:{<FB>e}      $V+(es)$ |\
                % (du) liebest, wollest, sammelst
                {<+V><2><Sg><Pres><Subj>}:{<FB>est}     $V+(es)$ |\
                % (wir) lieben, wollen, sammeln
                {<+V><13><Pl><Pres><Subj>}:{<FB>en}     $V+(es)$ |\
                % (ihr) liebet, wollet, sammelt
                {<+V><2><Pl><Pres><Subj>}:{<FB>et}      $V+(es)$



                % (ich) liebte, wollte, arbeit-e-te
$VPastIndReg$ = {<+V><13><Sg><Past><Ind>}:{<INS-E>te}   $V+(es)$ |\
                %        brachte
                {<+V><2><Sg><Past><Ind>}:{<INS-E>test}  $V+(es)$ |\
                {<+V><13><Pl><Past><Ind>}:{<INS-E>ten}  $V+(es)$ |\
                {<+V><2><Pl><Past><Ind>}:{<INS-E>tet}   $V+(es)$

                % (ich) fuhr, ritt, fand
$VPastIndStr$ = {<+V><13><Sg><Past><Ind>}:{<FB>}                $V+(es)$ |\
                % (du) fuhrst, ritt-e-st, fand-e-st
                {<+V><2><Sg><Past><Ind>}:{<INS-E>st}    $V+(es)$ |\
                {<+V><13><Pl><Past><Ind>}:{<FB>en}      $V+(es)$ |\
                {<+V><2><Pl><Past><Ind>}:{<INS-E>t}     $V+(es)$

                % (ich) liebte, wollte, arbeit-e-te
$VPastKonjReg$ = {<+V><13><Sg><Past><Subj>}:{<INS-E>te} $V+(es)$ |\
                %       brächte
                {<+V><2><Sg><Past><Subj>}:{<INS-E>test} $V+(es)$ |\
                {<+V><13><Pl><Past><Subj>}:{<INS-E>ten} $V+(es)$ |\
                {<+V><2><Pl><Past><Subj>}:{<INS-E>tet}  $V+(es)$

                % (ich) führe, ritte, fände
$VPastKonjStr$ = {<+V><13><Sg><Past><Subj>}:{<FB>e}     $V+(es)$ |\
                {<+V><2><Sg><Past><Subj>}:{<FB>est}     $V+(es)$ |\
                {<+V><13><Pl><Past><Subj>}:{<FB>en}     $V+(es)$ |\
                {<+V><2><Pl><Past><Subj>}:{<FB>et}      $V+(es)$

% -----------------------------------------------------------------------

$VFlexPres2$ =   $VPres2Irreg$ |\
                 $VPres3Reg$

$VFlexPres2t$ =  $VPres2Irreg$ |\
                 $VPres3Irreg$

$VFlexPres1$ =   $VPres1Reg$ |\
                 $VPresPlInd$ |\
                 $VPresKonj$ |\
                 $VImpPl$

$VFlexPresReg$ = $VFlexPres1$ |\
                 $VPres2Reg$ |\
                 $VPres3Reg$ |\
                 $VImpSg$

$VFlexReg$ =     $VFlexPresReg$ |\
                 $VPastIndReg$ |\
                 $VPastKonjReg$

$VModFlexSg$ =   $VPres1Irreg$ |\
                 $VPres2Reg$ |\
                 $VPres3Irreg$

$VModFlexPl$ =   $VPresPlInd$ |\
                 $VPresKonj$

% -----------------------------------------------------------------------

$VVPres$ =       $VFlexPresReg$ |\
                 $VInfStem$

$VVPres1$ =      $VFlexPres1$ |\
                 $VInfStem$

$VVPres1+Imp$ =  $VImpSg$ |\
                 $VVPres1$

$VVPres2$ =      $VFlexPres2$

$VVPres2t$ =     $VFlexPres2t$

$VVPres2+Imp$ =  $VImpSg$ |\
                 $VVPres2$

$VVPres2+Imp0$ = $VImpSg0$ |\
                 $VVPres2t$

                 % bedarf-; weiss-
$VVPresSg$ =     $VModFlexSg$

                 % beduerf-, wiss-
$VVPresPl$ =     $VModFlexPl$ |\
                 $VInfStem$



$VVPastIndReg$ = $VPastIndReg$

$VVPastIndStr$ = $VPastIndStr$

$VVPastKonjReg$= $VPastKonjReg$

$VVPastKonjStr$= $VPastKonjStr$

$VVPastStr$ =    $VVPastIndStr$ |\
                 $VVPastKonjStr$


$VVRegFin$ =     $VFlexReg$

$VVReg$ =        $VFlexReg$ |\
                 $VPP-t$ |\
                 $VInfStem$

$VVReg-el/er$ =  $VVReg$


$VMPastKonj$ =   $VPastKonjReg$

$VMPresSg$ =     $VModFlexSg$

$VMPresPl$ =     $VModFlexPl$ |\
                 $VInfStem$

$VMPast$ =       $VPastIndReg$ |\
                 $VPP-t$


$VVPP-en$ =      $VPP-en$

$VVPP-t$ =       $VPP-t$



% =======================================================================
% Adpositions
% =======================================================================

$Postp-Akk$ =    {<+POSTP><Acc>}:{}      $Closed#$

$Postp-Dat$ =    {<+POSTP><Dat>}:{}      $Closed#$

$Postp-Gen$ =    {<+POSTP><Gen>}:{}      $Closed#$



$Prep-Akk$ =     {<+PREP><Acc>}:{}       $Closed#$

$Prep-Dat$ =     {<+PREP><Dat>}:{}       $Closed#$

$Prep-Gen$ =     {<+PREP><Gen>}:{}       $Closed#$

$Prep-GDA$ =     {<+PREP><GDA>}:{}       $Closed#$

$Prep-DA$ =      {<+PREP><DA>}:{}        $Closed#$

$Prep-GD$ =      {<+PREP><GD>}:{}        $Closed#$



$Prep/Art-m$ =   {<+PREPART><MN><Dat><Sg>}:{}    $Closed#$

% untern (Tisch)
$Prep/Art-n$ =   {<+PREPART><Masc><Acc><Sg>}:{}  $Closed#$

$Prep/Art-r$ =   {<+PREPART><Fem><Dat><Sg>}:{}   $Closed#$

$Prep/Art-s$ =   {<+PREPART><Neut><Acc><Sg>}:{}  $Closed#$


$Circp$ =       {<+CIRCP>}:{}           $Fix#$


% =======================================================================
% Numbers
% =======================================================================

$TMP$ =         {<Pro><NoGend><NGDA><Pl><Wk>}:{}

$Card$ =        <+CARD>:<> $TMP$        $Closed#$

$TMP$ =         {<Attr><Masc><Nom><Sg><Wk>}:{} |\
                {<Attr><Neut><NA><Sg><Wk>}:{} |\
                {<Pro><Fem><NA><Sg>}:{e} |\
                {<Pro><Masc><Nom><Sg><Wk>}:{e} |\
                {<Pro><Neut><NA><Sg><Wk>}:{e} |\
                {<Pro><MN><Dat><Sg><St>}:{em} |\
                {<Pro><Masc><Acc><Sg>}:{en} |\
                {<Pro><NoGend><GD><Sg><Wk>}:{en} |\
                {<Pro><Fem><GD><Sg><St>}:{er} |\
                {<Pro><MN><Gen><Sg><St>}:{es} |\
                {<Subst><Masc><Nom><Sg><St>}:{er} |\
                {<Subst><Neut><NA><Sg><St>}:{es} |\
                {<Subst><Neut><NA><Sg><St>}:{s}

$Card1$ =       <+CARD>:<> $TMP$        $Closed#$

$DigOrd$ =      <+ORD>:<>               $Closed#$

$Ord$ =         <+ORD>:<>               $AdjFlexSuff$ |\
                {<+ORD><Pred>}:{}       $Closed#$

$NumAdjFlex$ =  {<+ADJ><Pos><Pred>}:{}                  $Fix#$ |\
                {<+ADJ><Pos><Fem><NA><Sg>}:{e}          $Fix#$ |\
                {<+ADJ><Pos><Masc><Nom><Sg><Wk>}:{e}    $Fix#$ |\
                {<+ADJ><Pos><Neut><NA><Sg><Wk>}:{e}     $Fix#$ |\
                {<+ADJ><Pos><NoGend><NA><Pl><St>}:{e}   $Fix#$ |\
                {<+ADJ><Pos><MN><Dat><Sg><St>}:{em}     $Fix#$ |\
                {<+ADJ><Pos><Fem><Gen><Sg><Wk>}:{en}    $Fix#$ |\
                {<+ADJ><Pos><MN><Gen><Sg>}:{en}         $Fix#$ |\
                {<+ADJ><Pos><Masc><Acc><Sg>}:{en}       $Fix#$ |\
                {<+ADJ><Pos><NoGend><Dat><Sg><Wk>}:{en} $Fix#$ |\
                {<+ADJ><Pos><NoGend><Dat><Pl>}:{en}     $Fix#$ |\
                {<+ADJ><Pos><NoGend><NGA><Pl><Wk>}:{en} $Fix#$ |\
                {<+ADJ><Pos><Masc><Nom><Sg><St>}:{er}   $Fix#$ |\
                {<+ADJ><Pos><Fem><GD><Sg><St>}:{er}     $Fix#$ |\
                {<+ADJ><Pos><NoGend><Gen><Pl><St>}:{er} $Fix#$ |\
                {<+ADJ><Pos><Neut><NA><Sg><St>}:{es}    $Fix#$ |\
                {<+NN><Fem><NA><Sg>}:{e}                $Fix#$ |\
                {<+NN><Masc><Nom><Sg><Wk>}:{e}          $Fix#$ |\
                {<+NN><Neut><NA><Sg><Wk>}:{e}           $Fix#$ |\
                {<+NN><NoGend><NA><Pl><St>}:{e}         $Fix#$ |\
                {<+NN><MN><Dat><Sg><St>}:{em}           $Fix#$ |\
                {<+NN><Fem><Gen><Sg><Wk>}:{en}          $Fix#$ |\
                {<+NN><MN><Gen><Sg>}:{en}               $Fix#$ |\
                {<+NN><Masc><Acc><Sg>}:{en}             $Fix#$ |\
                {<+NN><NoGend><Dat><Sg><Wk>}:{en}       $Fix#$ |\
                {<+NN><NoGend><Dat><Pl>}:{en}           $Fix#$ |\
                {<+NN><NoGend><NGA><Pl><Wk>}:{en}       $Fix#$ |\
                {<+NN><Masc><Nom><Sg><St>}:{er}         $Fix#$ |\
                {<+NN><Fem><GD><Sg><St>}:{er}           $Fix#$ |\
                {<+NN><NoGend><Gen><Pl><St>}:{er}       $Fix#$ |\
                {<+NN><Neut><NA><Sg><St>}:{es}          $Fix#$ |\
                {<+ADJ><Pos><Pred>}:{}                  $Closed#$ |\
                {<+ADJ><Pos><Fem><NA><Sg>}:{e}          $Closed#$ |\
                {<+ADJ><Pos><Masc><Nom><Sg><Wk>}:{e}    $Closed#$ |\
                {<+ADJ><Pos><Neut><NA><Sg><Wk>}:{e}     $Closed#$ |\
                {<+ADJ><Pos><NoGend><NA><Pl><St>}:{e}   $Closed#$ |\
                {<+ADJ><Pos><MN><Dat><Sg><St>}:{em}     $Closed#$ |\
                {<+ADJ><Pos><Fem><Gen><Sg><Wk>}:{en}    $Closed#$ |\
                {<+ADJ><Pos><MN><Gen><Sg>}:{en}         $Closed#$ |\
                {<+ADJ><Pos><Masc><Acc><Sg>}:{en}       $Closed#$ |\
                {<+ADJ><Pos><NoGend><Dat><Sg><Wk>}:{en} $Closed#$ |\
                {<+ADJ><Pos><NoGend><Dat><Pl>}:{en}     $Closed#$ |\
                {<+ADJ><Pos><NoGend><NGA><Pl><Wk>}:{en} $Closed#$ |\
                {<+ADJ><Pos><Masc><Nom><Sg><St>}:{er}   $Closed#$ |\
                {<+ADJ><Pos><Fem><GD><Sg><St>}:{er}     $Closed#$ |\
                {<+ADJ><Pos><NoGend><Gen><Pl><St>}:{er} $Closed#$ |\
                {<+ADJ><Pos><Neut><NA><Sg><St>}:{es}    $Closed#$ |\
                {<+NN><Fem><NA><Sg>}:{e}                $Closed#Up$ |\
                {<+NN><Masc><Nom><Sg><Wk>}:{e}          $Closed#Up$ |\
                {<+NN><Neut><NA><Sg><Wk>}:{e}           $Closed#Up$ |\
                {<+NN><NoGend><NA><Pl><St>}:{e}         $Closed#Up$ |\
                {<+NN><MN><Dat><Sg><St>}:{em}           $Closed#Up$ |\
                {<+NN><Fem><Gen><Sg><Wk>}:{en}          $Closed#Up$ |\
                {<+NN><MN><Gen><Sg>}:{en}               $Closed#Up$ |\
                {<+NN><Masc><Acc><Sg>}:{en}             $Closed#Up$ |\
                {<+NN><NoGend><Dat><Sg><Wk>}:{en}       $Closed#Up$ |\
                {<+NN><NoGend><Dat><Pl>}:{en}           $Closed#Up$ |\
                {<+NN><NoGend><NGA><Pl><Wk>}:{en}       $Closed#Up$ |\
                {<+NN><Masc><Nom><Sg><St>}:{er}         $Closed#Up$ |\
                {<+NN><Fem><GD><Sg><St>}:{er}           $Closed#Up$ |\
                {<+NN><NoGend><Gen><Pl><St>}:{er}       $Closed#Up$ |\
                {<+NN><Neut><NA><Sg><St>}:{es}          $Closed#Up$



% =======================================================================
% Abbreviations
% =======================================================================

$Abk_ADJ$ =     {<^ABBR><+ADJ><Pos>}:{}   $Adj#$

$Abk_ADV$ =     {<^ABBR><+ADV>}:{}   $Closed#$

$Abk_ART$ =     {<^ABBR><+ART>}:{}   $Closed#$

$Abk_KONJ$ =    {<^ABBR><+CONJ><Coord>}:{}  $Closed#$

$Abk_NE$ =      {<^ABBR><+NPROP><NoGend><NDA><Sg>}:{} $N#$
$Abk_NEMasc$ =  {<^ABBR><+NPROP><Masc><NGDA><Sg>}:{} $N#$
$Abk_NEFem$ =   {<^ABBR><+NPROP><Fem><NGDA><Sg>}:{} $N#$
$Abk_NENeut$ =  {<^ABBR><+NPROP><Neut><NGDA><Sg>}:{} $N#$

$Abk_NE-Low$ =  {<^ABBR><+NPROP><NoGend><NDA><Sg>}:{} $N#Low/Up$

$Abk_NN$ =      {<^ABBR><+NN>}:{}    $N#$
$Abk_NMasc$ =   <^ABBR>:<> $NMasc_s_s$
$Abk_NFem$ =    <^ABBR>:<> $NFem_0_s$
$Abk_NNeut$ =   <^ABBR>:<> $NNeut_s_s$

$Abk_NN-Low$ =  {<^ABBR><+NN>}:{}    $N#Low/Up$

$Abk_PREP$ =    {<^ABBR><+PREP>}:{}  $Closed#$

$Abk_VPPAST$ =  {<^ABBR><V><deriv><X><deriv><V><PPast><ADJ><SUFF><base><X><+ADJ>}:{}    $Adj#$

$Abk_VPPRES$ =  {<^ABBR><V><deriv><X><deriv><V><PPres><ADJ><SUFF><base><X><+ADJ>}:{}    $Adj#$



% =======================================================================
% Misc
% =======================================================================

$Adv$ =         {<+ADV>}:{}             $Closed#$

$Intj$ =        {<+INTJ>}:{}            $Closed#$

$IntjUp$ =      {<+INTJ>}:{}            $Closed#Up$

$Konj-Inf$ =    {<+CONJ><Inf>}:{}       $Closed#$

$Konj-Kon$ =    {<+CONJ><Coord>}:{}     $Closed#$

$Konj-Sub$ =    {<+CONJ><Sub>}:{}       $Closed#$

$Konj-Vgl$ =    {<+CONJ><Compar>}:{}    $Closed#$

$PInd-Invar$ =  {<+INDEF><Invar>}:{}    $Closed#$

$ProAdv$ =      {<+PROADV>}:{}          $Closed#$

$Ptkl-Adj$ =    {<+PTCL><Adj>}:{}       $Closed#$

$Ptkl-Ant$ =    {<+PTCL><Ans>}:{}       $Closed#$

$Ptkl-Neg$ =    {<+PTCL><Neg>}:{}       $Closed#$

$Ptkl-Zu$ =     {<+PTCL><zu>}:{}        $Closed#$

$WAdv$ =        {<+WADV>}:{}            $Closed#$

$Trunc$ =       {<+TRUNC>}:{}           $Closed#$

$NTrunc$ =      {<+TRUNC>}:{}           $N#$

$Pref/Adv$ =    {<+VPART><Adv>}:{}      $Fix#$

$Pref/Adj$ =    {<+VPART><Adj>}:{}      $Fix#$

$Pref/ProAdv$ = {<+VPART><ProAdv>}:{}   $Fix#$

$Pref/N$ =      {<+VPART><NN>}:{}       $Fix#$

$Pref/V$ =      {<+VPART><V>}:{}        $Fix#$

$Pref/Sep$ =    {<+VPART>}:{}           $Fix#$




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% building the inflection transducer             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

$FLEXION$ = <>:<Abk_ADJ>        $Abk_ADJ$ |\
            <>:<Abk_ADV>        $Abk_ADV$ |\
            <>:<Abk_ART>        $Abk_ART$ |\
            <>:<Abk_KONJ>       $Abk_KONJ$ |\
            <>:<Abk_NE>         $Abk_NE$ |\
            <>:<Abk_NEMasc>     $Abk_NEMasc$ |\
            <>:<Abk_NEFem>      $Abk_NEFem$ |\
            <>:<Abk_NENeut>     $Abk_NENeut$ |\
            <>:<Abk_NE-Low>     $Abk_NE-Low$ |\
            <>:<Abk_NMasc>      $Abk_NMasc$ |\
            <>:<Abk_NFem>       $Abk_NFem$ |\
            <>:<Abk_NNeut>      $Abk_NNeut$ |\
            <>:<Abk_NN>         $Abk_NN$ |\
            <>:<Abk_NN-Low>     $Abk_NN-Low$ |\
            <>:<Abk_PREP>       $Abk_PREP$ |\
            <>:<Abk_VPPAST>     $Abk_VPPAST$ |\
            <>:<Abk_VPPRES>     $Abk_VPPRES$ |\
            <>:<Adj+>           $Adj+$ |\
            <>:<Adj&>           $Adj&$ |\
            <>:<Adj+(e)>        $Adj+(e)$ |\
            <>:<Adj+Lang>       $Adj+Lang$ |\
            <>:<Adj+e>          $Adj+e$ |\
            <>:<Adj-el/er>      $Adj-el/er$ |\
            <>:<Adj0>           $Adj0$ |\
            <>:<Adj0-Up>        $Adj0-Up$ |\
            <>:<AdjPosAttr-Up>  $AdjPosAttr-Up$ |\
            <>:<AdjComp>        $AdjComp$ |\
            <>:<AdjSup>         $AdjSup$ |\
            <>:<AdjFlexSuff>    $AdjFlexSuff$ |\
            <>:<AdjNN>          $AdjNN$ |\
            <>:<AdjNNSuff>      $AdjNNSuff$ |\
            <>:<AdjPos>         $AdjPos$ |\
            <>:<AdjPosAttr>     $AdjPosAttr$ |\
            <>:<AdjPosPred>     $AdjPosPred$ |\
            <>:<AdjPosSup>      $AdjPosSup$ |\
            <>:<Adj$>           $Adj\$$ |\
            <>:<Adj$e>          $Adj\$e$ |\
            <>:<Adj~+e>         $Adj~+e$ |\
            <>:<Adv>            $Adv$ |\
            <>:<Card>           $Card$ |\
            <>:<Card1>          $Card1$ |\
            <>:<Ord>            $Ord$ |\
            <>:<DigOrd>         $DigOrd$ |\
            <>:<Circp>          $Circp$ |\
            <>:<FamName_0>      $FamName_0$ |\
            <>:<FamName_s>      $FamName_s$ |\
            <>:<Intj>           $Intj$ |\
            <>:<IntjUp>         $IntjUp$ |\
            <>:<Konj-Inf>       $Konj-Inf$ |\
            <>:<Konj-Kon>       $Konj-Kon$ |\
            <>:<Konj-Sub>       $Konj-Sub$ |\
            <>:<Konj-Vgl>       $Konj-Vgl$ |\
            <>:<N?/Pl_0>        $N?/Pl_0$ |\
            <>:<N?/Pl_x>        $N?/Pl_x$ |\
            <>:<NFem-a/en>      $NFem-a/en$ |\
            <>:<NFem-in>        $NFem-in$ |\
            <>:<NFem-is/en>     $NFem-is/en$ |\
            <>:<NFem-is/iden>   $NFem-is/iden$ |\
            <>:<NFem-s/$sse>    $NFem-s/\$sse$ |\
            <>:<NFem-s/sse>     $NFem-s/sse$ |\
            <>:<NFem-s/ssen>    $NFem-s/ssen$ |\
            <>:<NFem/Pl>        $NFem/Pl$ |\
            <>:<NFem/Sg>        $NFem/Sg$ |\
            <>:<NFem_0_$>       $NFem_0_\$$ |\
            <>:<NFem_0_$e>      $NFem_0_\$e$ |\
            <>:<NFem_0_e>       $NFem_0_e$ |\
            <>:<NFem_0_en>      $NFem_0_en$ |\
            <>:<NFem_0_n>       $NFem_0_n$ |\
            <>:<NFem_0_s>       $NFem_0_s$ |\
            <>:<NFem_0_x>       $NFem_0_x$ |\
            <>:<NMasc-Adj>      $NMasc-Adj$ |\
            <>:<NMasc-ns>       $NMasc-ns$ |\
            <>:<NMasc-s/$sse>   $NMasc-s/\$sse$ |\
            <>:<NMasc-s/Sg>     $NMasc-s/Sg$ |\
            <>:<NMasc-s/sse>    $NMasc-s/sse$ |\
            <>:<NMasc-s0/sse>   $NMasc-s0/sse$ |\
            <>:<NMasc-us/en>    $NMasc-us/en$ |\
            <>:<NMasc-us/i>     $NMasc-us/i$ |\
            <>:<NMasc/Pl>       $NMasc/Pl$ |\
            <>:<NMasc/Sg_0>     $NMasc/Sg_0$ |\
            <>:<NMasc/Sg_es>    $NMasc/Sg_es$ |\
            <>:<NMasc/Sg_s>     $NMasc/Sg_s$ |\
            <>:<NMasc_0_x>      $NMasc_0_x$ |\
            <>:<NMasc_en_en=in> $NMasc_en_en=in$ |\
            <>:<NMasc_en_en>    $NMasc_en_en$ |\
            <>:<NMasc_es_$e>    $NMasc_es_\$e$ |\
            <>:<NMasc_s_$e>     $NMasc_s_\$e$ |\
            <>:<NMasc_es_$er>   $NMasc_es_\$er$ |\
            <>:<NMasc_es_er>    $NMasc_es_er$ |\
            <>:<NMasc_es_e>     $NMasc_es_e$ |\
            <>:<NMasc_es_en>    $NMasc_es_en$ |\
            <>:<NMasc_n_n=$in>  $NMasc_n_n=\$in$ |\
            <>:<NMasc_n_n=in>   $NMasc_n_n=in$ |\
            <>:<NMasc_n_n>      $NMasc_n_n$ |\
            <>:<NMasc_s_$>      $NMasc_s_\$$ |\
            <>:<NMasc_s_$x>     $NMasc_s_\$x$ |\
            <>:<NMasc_s_0=in>   $NMasc_s_0=in$ |\
            <>:<NMasc_s_0>      $NMasc_s_0$ |\
            <>:<NMasc_s_e=in>   $NMasc_s_e=in$ |\
            <>:<NMasc_s_e>      $NMasc_s_e$ |\
            <>:<NMasc_s_en=in>  $NMasc_s_en=in$ |\
            <>:<NMasc_s_en>     $NMasc_s_en$ |\
            <>:<NMasc_s_n>      $NMasc_s_n$ |\
            <>:<NMasc_s_s>      $NMasc_s_s$ |\
            <>:<NMasc_s_x>      $NMasc_s_x$ |\
            <>:<NNeut-0/ien>    $NNeut-0/ien$ |\
            <>:<NNeut-Herz>     $NNeut-Herz$ |\
            <>:<NNeut-Inner>    $NNeut-Inner$ |\
            <>:<NNeut-a/ata>    $NNeut-a/ata$ |\
            <>:<NNeut-a/en>     $NNeut-a/en$ |\
            <>:<NNeut-on/a>     $NNeut-on/a$ |\
            <>:<NNeut-s/$sser>  $NNeut-s/\$sser$ |\
            <>:<NNeut-s/sse>    $NNeut-s/sse$ |\
            <>:<NNeut-um/a>     $NNeut-um/a$ |\
            <>:<NNeut-um/en>    $NNeut-um/en$ |\
            <>:<NNeut/Pl>       $NNeut/Pl$ |\
            <>:<NNeut/Sg_0>     $NNeut/Sg_0$ |\
            <>:<NNeut/Sg_es>    $NNeut/Sg_es$ |\
            <>:<NNeut/Sg_en>    $NNeut/Sg_en$ |\
            <>:<NNeut/Sg_s>     $NNeut/Sg_s$ |\
            <>:<NNeut_0_x>      $NNeut_0_x$ |\
            <>:<NNeut_es_$e>    $NNeut_es_\$e$ |\
            <>:<NNeut_es_$er>   $NNeut_es_\$er$ |\
            <>:<NNeut_es_e>     $NNeut_es_e$ |\
            <>:<NNeut_es_en>    $NNeut_es_en$ |\
            <>:<NNeut_es_er>    $NNeut_es_er$ |\
            <>:<NNeut_s_$>      $NNeut_s_\$$ |\
            <>:<NNeut_s_0>      $NNeut_s_0$ |\
            <>:<NNeut_s_e>      $NNeut_s_e$ |\
            <>:<NNeut_s_en>     $NNeut_s_en$ |\
            <>:<NNeut_s_n>      $NNeut_s_n$ |\
            <>:<NNeut_s_s>      $NNeut_s_s$ |\
            <>:<NNeut_s_x>      $NNeut_s_x$ |\
%           <>:<Name+er/in>     $Name+er/in$ |\
            <>:<Name-Fem_0>     $Name-Fem_0$ |\
            <>:<Name-Fem_s>     $Name-Fem_s$ |\
            <>:<Name-Masc_0>    $Name-Masc_0$ |\
            <>:<Name-Masc_s>    $Name-Masc_s$ |\
%           <>:<Name-Neut+Loc>  $Name-Neut+Loc$ |\
            <>:<Name-Neut_0>    $Name-Neut_0$ |\
            <>:<Name-Neut_s>    $Name-Neut_s$ |\
            <>:<Name-Pl_0>      $Name-Pl_0$ |\
            <>:<Name-Pl_x>      $Name-Pl_x$ |\
            <>:<NumAdjFlex>     $NumAdjFlex$ |\
            <>:<PInd-Invar>     $PInd-Invar$ |\
            <>:<Postp-Akk>      $Postp-Akk$ |\
            <>:<Postp-Dat>      $Postp-Dat$ |\
            <>:<Postp-Gen>      $Postp-Gen$ |\
            <>:<Prep-Akk>       $Prep-Akk$ |\
            <>:<Prep-Dat>       $Prep-Dat$ |\
            <>:<Prep-Gen>       $Prep-Gen$ |\
            <>:<Prep-GDA>       $Prep-GDA$ |\
            <>:<Prep-GD>        $Prep-GD$ |\
            <>:<Prep-DA>        $Prep-DA$ |\
            <>:<Pref/Adj>       $Pref/Adj$ |\
            <>:<Pref/Adv>       $Pref/Adv$ |\
            <>:<Pref/N>         $Pref/N$ |\
            <>:<Pref/ProAdv>    $Pref/ProAdv$ |\
            <>:<Pref/Sep>       $Pref/Sep$ |\
            <>:<Pref/V>         $Pref/V$ |\
            <>:<Prep/Art-m>     $Prep/Art-m$ |\
            <>:<Prep/Art-n>     $Prep/Art-n$ |\
            <>:<Prep/Art-r>     $Prep/Art-r$ |\
            <>:<Prep/Art-s>     $Prep/Art-s$ |\
            <>:<ProAdv>         $ProAdv$ |\
            <>:<Ptkl-Adj>       $Ptkl-Adj$ |\
            <>:<Ptkl-Ant>       $Ptkl-Ant$ |\
            <>:<Ptkl-Neg>       $Ptkl-Neg$ |\
            <>:<Ptkl-Zu>        $Ptkl-Zu$ |\
            <>:<VAImpPl>        $VAImpPl$ |\
            <>:<VAImpSg>        $VAImpSg$ |\
            <>:<VAPastKonj2>    $VAPastKonj2$ |\
            <>:<VAPres1/3PlInd> $VAPres1/3PlInd$ |\
            <>:<VAPres1SgInd>   $VAPres1SgInd$ |\
            <>:<VAPres2PlInd>   $VAPres2PlInd$ |\
            <>:<VAPres2SgInd>   $VAPres2SgInd$ |\
            <>:<VAPres3SgInd>   $VAPres3SgInd$ |\
            <>:<VAPresKonjPl>   $VAPresKonjPl$ |\
            <>:<VAPresKonjSg>   $VAPresKonjSg$ |\
            <>:<VInf>           $VInf$ |\
            <>:<VInf+PPres>     $VInf+PPres$ |\
            <>:<VMPast>         $VMPast$ |\
            <>:<VMPastKonj>     $VMPastKonj$ |\
            <>:<VMPresPl>       $VMPresPl$ |\
            <>:<VMPresSg>       $VMPresSg$ |\
            <>:<VPPast>         $VPPast$ |\
            <>:<VPPres>         $VPPres$ |\
            <>:<VPastIndReg>    $VPastIndReg$ |\
            <>:<VPastIndStr>    $VPastIndStr$ |\
            <>:<VPastKonjStr>   $VPastKonjStr$ |\
            <>:<VPresKonj>      $VPresKonj$ |\
            <>:<VPresPlInd>     $VPresPlInd$ |\
            <>:<VVPP-en>        $VVPP-en$ |\
            <>:<VVPP-t>         $VVPP-t$ |\
            <>:<VVPastIndReg>   $VVPastIndReg$ |\
            <>:<VVPastIndStr>   $VVPastIndStr$ |\
            <>:<VVPastKonjReg>  $VVPastKonjReg$ |\
            <>:<VVPastKonjStr>  $VVPastKonjStr$ |\
            <>:<VVPastStr>      $VVPastStr$ |\
            <>:<VVPres>         $VVPres$ |\
            <>:<VVPres1>        $VVPres1$ |\
            <>:<VVPres1+Imp>    $VVPres1+Imp$ |\
            <>:<VVPres2>        $VVPres2$ |\
            <>:<VVPres2+Imp>    $VVPres2+Imp$ |\
            <>:<VVPres2+Imp0>   $VVPres2+Imp0$ |\
            <>:<VVPres2t>       $VVPres2t$ |\
            <>:<VVPresPl>       $VVPresPl$ |\
            <>:<VVPresSg>       $VVPresSg$ |\
            <>:<VVReg>          $VVReg$ |\
            <>:<VVRegFin>       $VVRegFin$ |\
            <>:<VVReg-el/er>    $VVReg-el/er$ |\
            <>:<WAdv>           $WAdv$ |\
            <>:<Trunc>          $Trunc$ |\
            <>:<NTrunc>         $NTrunc$



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% definition of a filter which enforces the correct inflection %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ALPHABET = [#char# #orth-trigger# #ss-trigger# #surface-trigger#] <FB><VPART> \
           <^Ax><I><Ge-Nom><UL><NoHy><ge><zu><no-ge><CB> \
           <INS-E><^imp><^zz><ge><^pp><^pl><^Gen><^Del><Fix#><Low#><Up#> \
           [#entry-type#]

$FLEXFILTER$ = .* (<Abk_ADJ>:<>        <Abk_ADJ>:<> |\
                   <Abk_ADV>:<>        <Abk_ADV>:<> |\
                   <Abk_ART>:<>        <Abk_ART>:<> |\
                   <Abk_KONJ>:<>       <Abk_KONJ>:<> |\
                   <Abk_NE-Low>:<>     <Abk_NE-Low>:<> |\
                   <Abk_NE>:<>         <Abk_NE>:<> |\
                   <Abk_NEMasc>:<>     <Abk_NEMasc>:<> |\
                   <Abk_NEFem>:<>      <Abk_NEFem>:<> |\
                   <Abk_NENeut>:<>     <Abk_NENeut>:<> |\
                   <Abk_NN-Low>:<>     <Abk_NN-Low>:<> |\
                   <Abk_NN>:<>         <Abk_NN>:<> |\
                   <Abk_NMasc>:<>      <Abk_NMasc>:<> |\
                   <Abk_NFem>:<>       <Abk_NFem>:<> |\
                   <Abk_NNeut>:<>      <Abk_NNeut>:<> |\
                   <Abk_PREP>:<>       <Abk_PREP>:<> |\
                   <Abk_VPPAST>:<>     <Abk_VPPAST>:<> |\
                   <Abk_VPPRES>:<>     <Abk_VPPRES>:<> |\
                   <Adj$>:<>           <Adj$>:<> |\
                   <Adj$e>:<>          <Adj$e>:<> |\
                   <Adj+(e)>:<>        <Adj+(e)>:<> |\
                   <Adj+>:<>           <Adj+>:<> |\
                   <Adj&>:<>           <Adj&>:<> |\
                   <Adj+Lang>:<>       <Adj+Lang>:<> |\
                   <Adj+e>:<>          <Adj+e>:<> |\
                   <Adj-el/er>:<>      <Adj-el/er>:<> |\
                   <Adj0>:<>           <Adj0>:<> |\
                   <Adj0-Up>:<>        <Adj0-Up>:<> |\
                   <AdjPosAttr-Up>:<>  <AdjPosAttr-Up>:<> |\
                   <AdjComp>:<>        <AdjComp>:<> |\
                   <AdjSup>:<>         <AdjSup>:<> |\
                   <AdjFlexSuff>:<>    <AdjFlexSuff>:<> |\
                   <AdjNN>:<>          <AdjNN>:<> |\
                   <AdjNNSuff>:<>      <AdjNNSuff>:<> |\
                   <AdjPos>:<>         <AdjPos>:<> |\
                   <AdjPosAttr>:<>     <AdjPosAttr>:<> |\
                   <AdjPosPred>:<>     <AdjPosPred>:<> |\
                   <AdjPosSup>:<>      <AdjPosSup>:<> |\
                   <Adj~+e>:<>         <Adj~+e>:<> |\
                   <Adv>:<>            <Adv>:<> |\
                   <Card>:<>           <Card>:<> |\
                   <Card1>:<>          <Card1>:<> |\
                   <Ord>:<>            <Ord>:<> |\
                   <DigOrd>:<>         <DigOrd>:<> |\
                   <Circp>:<>          <Circp>:<> |\
                   <FamName_0>:<>      <FamName_0>:<> |\
                   <FamName_s>:<>      <FamName_s>:<> |\
                   <Intj>:<>           <Intj>:<> |\
                   <IntjUp>:<>         <IntjUp>:<> |\
                   <Konj-Inf>:<>       <Konj-Inf>:<> |\
                   <Konj-Kon>:<>       <Konj-Kon>:<> |\
                   <Konj-Sub>:<>       <Konj-Sub>:<> |\
                   <Konj-Vgl>:<>       <Konj-Vgl>:<> |\
                   <N?/Pl_0>:<>        <N?/Pl_0>:<> |\
                   <N?/Pl_x>:<>        <N?/Pl_x>:<> |\
                   <NFem-a/en>:<>      <NFem-a/en>:<> |\
                   <NFem-in>:<>        <NFem-in>:<> |\
                   <NFem-is/en>:<>     <NFem-is/en>:<> |\
                   <NFem-is/iden>:<>   <NFem-is/iden>:<> |\
                   <NFem-s/$sse>:<>    <NFem-s/$sse>:<> |\
                   <NFem-s/sse>:<>     <NFem-s/sse>:<> |\
                   <NFem-s/ssen>:<>    <NFem-s/ssen>:<> |\
                   <NFem/Pl>:<>        <NFem/Pl>:<> |\
                   <NFem/Sg>:<>        <NFem/Sg>:<> |\
                   <NFem_0_$>:<>       <NFem_0_$>:<> |\
                   <NFem_0_$e>:<>      <NFem_0_$e>:<> |\
                   <NFem_0_e>:<>       <NFem_0_e>:<> |\
                   <NFem_0_en>:<>      <NFem_0_en>:<> |\
                   <NFem_0_n>:<>       <NFem_0_n>:<> |\
                   <NFem_0_s>:<>       <NFem_0_s>:<> |\
                   <NFem_0_x>:<>       <NFem_0_x>:<> |\
                   <NMasc-Adj>:<>      <NMasc-Adj>:<> |\
                   <NMasc-ns>:<>       <NMasc-ns>:<> |\
                   <NMasc-s/$sse>:<>   <NMasc-s/$sse>:<> |\
                   <NMasc-s/Sg>:<>     <NMasc-s/Sg>:<> |\
                   <NMasc-s/sse>:<>    <NMasc-s/sse>:<> |\
                   <NMasc-s0/sse>:<>   <NMasc-s0/sse>:<> |\
                   <NMasc-us/en>:<>    <NMasc-us/en>:<> |\
                   <NMasc-us/i>:<>     <NMasc-us/i>:<> |\
                   <NMasc/Pl>:<>       <NMasc/Pl>:<> |\
                   <NMasc/Sg_0>:<>     <NMasc/Sg_0>:<> |\
                   <NMasc/Sg_es>:<>    <NMasc/Sg_es>:<> |\
                   <NMasc/Sg_s>:<>     <NMasc/Sg_s>:<> |\
                   <NMasc_0_x>:<>      <NMasc_0_x>:<> |\
                   <NMasc_en_en=in>:<> <NMasc_en_en=in>:<> |\
                   <NMasc_en_en>:<>    <NMasc_en_en>:<> |\
                   <NMasc_es_$e>:<>    <NMasc_es_$e>:<> |\
                   <NMasc_s_$e>:<>     <NMasc_s_$e>:<> |\
                   <NMasc_es_$er>:<>   <NMasc_es_$er>:<> |\
                   <NMasc_es_er>:<>    <NMasc_es_er>:<> |\ 
                   <NMasc_es_e>:<>     <NMasc_es_e>:<> |\
                   <NMasc_es_en>:<>    <NMasc_es_en>:<> |\
                   <NMasc_n_n=$in>:<>  <NMasc_n_n=$in>:<> |\
                   <NMasc_n_n=in>:<>   <NMasc_n_n=in>:<> |\
                   <NMasc_n_n>:<>      <NMasc_n_n>:<> |\
                   <NMasc_s_$>:<>      <NMasc_s_$>:<> |\
                   <NMasc_s_$x>:<>     <NMasc_s_$x>:<> |\
                   <NMasc_s_0=in>:<>   <NMasc_s_0=in>:<> |\
                   <NMasc_s_0>:<>      <NMasc_s_0>:<> |\
                   <NMasc_s_e=in>:<>   <NMasc_s_e=in>:<> |\
                   <NMasc_s_e>:<>      <NMasc_s_e>:<> |\
                   <NMasc_s_en=in>:<>  <NMasc_s_en=in>:<> |\
                   <NMasc_s_en>:<>     <NMasc_s_en>:<> |\
                   <NMasc_s_n>:<>      <NMasc_s_n>:<> |\
                   <NMasc_s_s>:<>      <NMasc_s_s>:<> |\
                   <NMasc_s_x>:<>      <NMasc_s_x>:<> |\
                   <NNeut-0/ien>:<>    <NNeut-0/ien>:<> |\
                   <NNeut-Herz>:<>     <NNeut-Herz>:<> |\
                   <NNeut-Inner>:<>    <NNeut-Inner>:<> |\
                   <NNeut-a/ata>:<>    <NNeut-a/ata>:<> |\
                   <NNeut-a/en>:<>     <NNeut-a/en>:<> |\
                   <NNeut-on/a>:<>     <NNeut-on/a>:<> |\
                   <NNeut-s/$sser>:<>  <NNeut-s/$sser>:<> |\
                   <NNeut-s/sse>:<>    <NNeut-s/sse>:<> |\
                   <NNeut-um/a>:<>     <NNeut-um/a>:<> |\
                   <NNeut-um/en>:<>    <NNeut-um/en>:<> |\
                   <NNeut/Pl>:<>       <NNeut/Pl>:<> |\
                   <NNeut/Sg_0>:<>     <NNeut/Sg_0>:<> |\
                   <NNeut/Sg_es>:<>    <NNeut/Sg_es>:<> |\
                   <NNeut/Sg_en>:<>    <NNeut/Sg_en>:<> |\
                   <NNeut/Sg_s>:<>     <NNeut/Sg_s>:<> |\
                   <NNeut_0_x>:<>      <NNeut_0_x>:<> |\
                   <NNeut_es_$e>:<>    <NNeut_es_$e>:<> |\
                   <NNeut_es_$er>:<>   <NNeut_es_$er>:<> |\
                   <NNeut_es_e>:<>     <NNeut_es_e>:<> |\
                   <NNeut_es_en>:<>    <NNeut_es_en>:<> |\
                   <NNeut_es_er>:<>    <NNeut_es_er>:<> |\
                   <NNeut_s_$>:<>      <NNeut_s_$>:<> |\
                   <NNeut_s_0>:<>      <NNeut_s_0>:<> |\
                   <NNeut_s_e>:<>      <NNeut_s_e>:<> |\
                   <NNeut_s_en>:<>     <NNeut_s_en>:<> |\
                   <NNeut_s_n>:<>      <NNeut_s_n>:<> |\
                   <NNeut_s_s>:<>      <NNeut_s_s>:<> |\
                   <NNeut_s_x>:<>      <NNeut_s_x>:<> |\
%                  <Name+er/in>:<>     <Name+er/in>:<> |\
                   <Name-Fem_0>:<>     <Name-Fem_0>:<> |\
                   <Name-Fem_s>:<>     <Name-Fem_s>:<> |\
                   <Name-Masc_0>:<>    <Name-Masc_0>:<> |\
                   <Name-Masc_s>:<>    <Name-Masc_s>:<> |\
%                  <Name-Neut+Loc>:<>  <Name-Neut+Loc>:<> |\
                   <Name-Neut_0>:<>    <Name-Neut_0>:<> |\
                   <Name-Neut_s>:<>    <Name-Neut_s>:<> |\
                   <Name-Pl_0>:<>      <Name-Pl_0>:<> |\
                   <Name-Pl_x>:<>      <Name-Pl_x>:<> |\
                   <NumAdjFlex>:<>     <NumAdjFlex>:<> |\
                   <PInd-Invar>:<>     <PInd-Invar>:<> |\
                   <Postp-Akk>:<>      <Postp-Akk>:<> |\
                   <Postp-Dat>:<>      <Postp-Dat>:<> |\
                   <Postp-Gen>:<>      <Postp-Gen>:<> |\
                   <Pref/Adj>:<>       <Pref/Adj>:<> |\
                   <Pref/Adv>:<>       <Pref/Adv>:<> |\
                   <Pref/N>:<>         <Pref/N>:<> |\
                   <Pref/ProAdv>:<>    <Pref/ProAdv>:<> |\
                   <Pref/Sep>:<>       <Pref/Sep>:<> |\
                   <Pref/V>:<>         <Pref/V>:<>|\
                   <Prep-Akk>:<>       <Prep-Akk>:<> |\
                   <Prep-Dat>:<>       <Prep-Dat>:<> |\
                   <Prep-Gen>:<>       <Prep-Gen>:<> |\
                   <Prep-DA>:<>        <Prep-DA>:<> |\
                   <Prep-GDA>:<>       <Prep-GDA>:<> |\
                   <Prep-GD>:<>        <Prep-GD>:<> |\
                   <Prep/Art-m>:<>     <Prep/Art-m>:<> |\
                   <Prep/Art-n>:<>     <Prep/Art-n>:<> |\
                   <Prep/Art-r>:<>     <Prep/Art-r>:<> |\
                   <Prep/Art-s>:<>     <Prep/Art-s>:<> |\
                   <ProAdv>:<>         <ProAdv>:<> |\
                   <Ptkl-Adj>:<>       <Ptkl-Adj>:<> |\
                   <Ptkl-Ant>:<>       <Ptkl-Ant>:<> |\
                   <Ptkl-Neg>:<>       <Ptkl-Neg>:<> |\
                   <Ptkl-Zu>:<>        <Ptkl-Zu>:<> |\
                   <VAImpPl>:<>        <VAImpPl>:<> |\
                   <VAImpSg>:<>        <VAImpSg>:<> |\
                   <VAPastKonj2>:<>    <VAPastKonj2>:<> |\
                   <VAPres1/3PlInd>:<> <VAPres1/3PlInd>:<> |\
                   <VAPres1SgInd>:<>   <VAPres1SgInd>:<> |\
                   <VAPres2PlInd>:<>   <VAPres2PlInd>:<> |\
                   <VAPres2SgInd>:<>   <VAPres2SgInd>:<> |\
                   <VAPres3SgInd>:<>   <VAPres3SgInd>:<> |\
                   <VAPresKonjPl>:<>   <VAPresKonjPl>:<> |\
                   <VAPresKonjSg>:<>   <VAPresKonjSg>:<> |\
                   <VInf>:<>           <VInf>:<> |\
                   <VInf+PPres>:<>     <VInf+PPres>:<> |\
                   <VMPast>:<>         <VMPast>:<> |\
                   <VMPastKonj>:<>     <VMPastKonj>:<> |\
                   <VMPresPl>:<>       <VMPresPl>:<> |\
                   <VMPresSg>:<>       <VMPresSg>:<> |\
                   <VPPast>:<>         <VPPast>:<> |\
                   <VPPres>:<>         <VPPres>:<> |\
                   <VPastIndReg>:<>    <VPastIndReg>:<> |\
                   <VPastIndStr>:<>    <VPastIndStr>:<> |\
                   <VPastKonjStr>:<>   <VPastKonjStr>:<> |\
                   <VPresKonj>:<>      <VPresKonj>:<> |\
                   <VPresPlInd>:<>     <VPresPlInd>:<> |\
                   <VVPP-en>:<>        <VVPP-en>:<> |\
                   <VVPP-t>:<>         <VVPP-t>:<> |\
                   <VVPastIndReg>:<>   <VVPastIndReg>:<> |\
                   <VVPastIndStr>:<>   <VVPastIndStr>:<> |\
                   <VVPastKonjReg>:<>  <VVPastKonjReg>:<> |\
                   <VVPastKonjStr>:<>  <VVPastKonjStr>:<> |\
                   <VVPastStr>:<>      <VVPastStr>:<> |\
                   <VVPres>:<>         <VVPres>:<> |\
                   <VVPres1>:<>        <VVPres1>:<> |\
                   <VVPres1+Imp>:<>    <VVPres1+Imp>:<> |\
                   <VVPres2>:<>        <VVPres2>:<> |\
                   <VVPres2+Imp>:<>    <VVPres2+Imp>:<> |\
                   <VVPres2+Imp0>:<>   <VVPres2+Imp0>:<> |\
                   <VVPres2t>:<>       <VVPres2t>:<> |\
                   <VVPresPl>:<>       <VVPresPl>:<> |\
                   <VVPresSg>:<>       <VVPresSg>:<> |\
                   <VVReg>:<>          <VVReg>:<> |\
                   <VVRegFin>:<>       <VVRegFin>:<> |\
                   <VVReg-el/er>:<>    <VVReg-el/er>:<> |\
                   <WAdv>:<>           <WAdv>:<> |\
                   <Trunc>:<>          <Trunc>:<> |\
                   <NTrunc>:<>         <NTrunc>:<>) .*



