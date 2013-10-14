% ==============================================================================
% auxiliary verbs
% encoded by: Peter Adolphs
% ==============================================================================

%sein (this entry is buggy)
<ge>sein<VInf>
<ge>s:be:<>in<VAPres1SgInd>
<ge>s:be:ii:sn:t<VAPres2SgInd>
<ge>s:ie:si:tn:<><VAPres3SgInd>
<ge>s:we:ai:rn:<><VAPres1/3PlInd>
<ge>s:we:ai:rn:t<VAPres2PlInd>
<ge>sein:<><VAPresKonjSg>
<ge>sein:e<VAPresKonjPl>
<ge>s:we:äi:rn:<><VAPastKonj2>
<ge>s:we:äi:rn:e<VPastKonjStr>  % no other <VAPastKonj..> in flexion.fst (??!)
<ge>sein:<><VAImpSg>
<ge>sein:d<VAImpSg>
<ge>s:wei:sn:<><VVPP-en>

%haben:
<Head><ge>hab<VIrreg>:<VVPres1+Imp>
<Head><ge>hab:<><VIrreg>:<VVPres2>
<Head><ge>hab:t<>:t<>:e<VIrreg>:<VVPastIndStr>
<Head><ge>ha:äb:t<>:t<VIrreg>:<VVPastKonjStr>
<Head><ge>hab<VIrreg>:<VVPP-t>

%werden:
<Head><ge>werd<VIrreg>:<VVPres1>
<Head><ge>we:ird:<><VIrreg>:<VVPres2>
<Head><ge>we:urd<VIrreg>:<VVPastIndStr>
<Head><ge>we:ürd<VIrreg>:<VVPastKonjStr>
<Head><ge>we:ord<VIrreg>:<VVPP-en>

%tun:
<ge>tu<VVPres>
<ge>tu:a<>:t<VVPastIndStr>
<ge>tu:ä<>:t<VVPastKonjStr>
<ge>tu:a<VVPP-en>



% ==============================================================================
% modal verbs
% encoded by: Peter Adolphs
% ==============================================================================

% dürfen:
<Head><ge>dü:arf<VIrreg>:<VMPresSg>
<Head><ge>dürf<VIrreg>:<VMPresPl>
<Head><ge>dü:urf<VIrreg>:<VMPast>
<Head><ge>dürf<VIrreg>:<VMPastKonj>

% können:
<Head><ge>könn<VIrreg>:<VMPresPl>
<Head><ge>kö:ann<VIrreg>:<VMPresSg>
<Head><ge>kö:onn<VIrreg>:<VMPast>
<Head><ge>könn<VIrreg>:<VMPastKonj>

% mögen:
<Head><ge>mö:ag<VIrreg>:<VMPresSg>
<Head><ge>mög<VIrreg>:<VMPresPl>
<Head><ge>mö:og:c<>:h<VIrreg>:<VMPast>
<Head><ge>mög:c<>:h<VIrreg>:<VMPastKonj>

% müssen:
<Head><ge>mü:uss<VIrreg>:<VMPresSg>
<Head><ge>müss<VIrreg>:<VMPresPl>
<Head><ge>mü:uss<VIrreg>:<VMPast>
<Head><ge>müss<VIrreg>:<VMPastKonj>

% sollen:
<Head><ge>soll<VIrreg>:<VMPresSg>
<Head><ge>soll<VIrreg>:<VMPresPl>
<Head><ge><ge>soll<VIrreg>:<VMPast>
<Head><ge>soll<VIrreg>:<VMPastKonj>

% wissen:
<Head><ge>w<>:eis:ßs:<><VIrreg>:<VMPresSg>
<Head><ge>wiss<VIrreg>:<VMPresPl>
<Head><ge>wi:uss<VIrreg>:<VMPast>
<Head><ge>wi:üss<VIrreg>:<VMPastKonj>

% wollen:
<Head><ge>wo:ill<VIrreg>:<VMPresSg>
<Head><ge>woll<VIrreg>:<VMPresPl>
<Head><ge>woll<VIrreg>:<VMPast>
<Head><ge>woll<VIrreg>:<VMPastKonj>



% ==============================================================================
% all simplex irregular verbs
% based on Duden-Grammatik (2005) §704, pp. 491-502
% encoded by: Peter Adolphs
% ==============================================================================

<Head><ge>back<VIrreg>:<VVPres>
<Head><ge>ba:uc:<>k<VIrreg>:<VVPastIndStr>
<Head><ge>ba:äck<VIrreg>:<VVPres2>
<Head><ge>ba:üc:<>k<VIrreg>:<VVPastKonjStr>
<Head><ge>back<VIrreg>:<VVPastIndReg>
<Head><ge>back<VIrreg>:<VVPastKonjReg>
<Head><ge>back<VIrreg>:<VVPP-en>

<Head>befehl<VIrreg>:<VVPres1>
<Head>bef<>:iehl<VIrreg>:<VVPres2+Imp>
<Head>befe:ahl<VIrreg>:<VVPastIndStr>
<Head>befe:ähl<VIrreg>:<VVPastKonjStr>
<Head>befe:öhl<VIrreg>:<VVPastKonjStr>
<Head>befe:ohl<VIrreg>:<VVPP-en>

<Head>befleiß<VIrreg>:<VVPres>
<Head>befle:<>iß:s<>:s<VIrreg>:<VVPastStr>
<Head>befle:<>iß:s<>:s<VIrreg>:<VVPP-en>

<Head>beginn<VIrreg>:<VVPres>
<Head>begi:ann<VIrreg>:<VVPastIndStr>
<Head>begi:änn<VIrreg>:<VVPastKonjStr>
<Head>begi:önn<VIrreg>:<VVPastKonjStr>
<Head>begi:onn<VIrreg>:<VVPP-en>

<Head><ge>beiß<VIrreg>:<VVPres>
<Head><ge>be:<>iß:s<>:s<VIrreg>:<VVPastStr>
<Head><ge>be:<>iß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>berg<VIrreg>:<VVPres1>
<Head><ge>be:irg<VIrreg>:<VVPres2+Imp>
<Head><ge>be:arg<VIrreg>:<VVPastStr>
<Head><ge>be:org<VIrreg>:<VVPP-en>

<Head><ge>berst<VIrreg>:<VVPres>
<Head><ge>be:arst<VIrreg>:<VVPastIndStr>
<Head><ge>be:ärst<VIrreg>:<VVPastKonjStr>
<Head><ge>be:irst<VIrreg>:<VVPres2+Imp0>
<Head><ge>be:orst<VIrreg>:<VVPP-en>

<Head>beweg<VIrreg>:<VVPres>
<Head>bewe:og<VIrreg>:<VVPastIndStr>
<Head>bewe:ög<VIrreg>:<VVPastKonjStr>
<Head>bewe:og<VIrreg>:<VVPP-en>

<Head><ge>bieg<VIrreg>:<VVPres>
<Head><ge>bi:oe:<>g<VIrreg>:<VVPastIndStr>
<Head><ge>bi:öe:<>g<VIrreg>:<VVPastKonjStr>
<Head><ge>bi:oe:<>g<VIrreg>:<VVPP-en>

<Head><ge>biet<VIrreg>:<VVPres>
<Head><ge>bi:oe:<>t<VIrreg>:<VVPastIndStr>
<Head><ge>bi:öe:<>t<VIrreg>:<VVPastKonjStr>
<Head><ge>bi:oe:<>t<VIrreg>:<VVPP-en>

<Head><ge>bind<VIrreg>:<VVPres>
<Head><ge>bi:and<VIrreg>:<VVPastIndStr>
<Head><ge>bi:änd<VIrreg>:<VVPastKonjStr>
<Head><ge>bi:und<VIrreg>:<VVPP-en>

<Head><ge>bitt<VIrreg>:<VVPres>
<Head><ge>bi:att:<><VIrreg>:<VVPastIndStr>
<Head><ge>bi:ätt:<><VIrreg>:<VVPastKonjStr>
<Head><ge>bi:ett:<><VIrreg>:<VVPP-en>

<Head><ge>blas<VIrreg>:<VVPres1+Imp>
<Head><ge>bla:äs<VIrreg>:<VVPres2>
<Head><ge>bla:i<>:es<VIrreg>:<VVPastStr>
<Head><ge>blas<VIrreg>:<VVPP-en>

<Head><ge>bleib<VIrreg>:<VVPres>
<Head><ge>bl<>:iei:<>b<VIrreg>:<VVPastStr>
<Head><ge>ble:<>i<>:eb<VIrreg>:<VVPP-en>

<Head><ge>brat<VIrreg>:<VVPres1+Imp>
<Head><ge>bra:ät<VIrreg>:<VVPres2t>
<Head><ge>bra:i<>:et<VIrreg>:<VVPastStr>
<Head><ge>brat<VIrreg>:<VVPP-en>

<Head><ge>brech<VIrreg>:<VVPres1>
<Head><ge>bre:ich<VIrreg>:<VVPres2+Imp>
<Head><ge>bre:ach<VIrreg>:<VVPastIndStr>
<Head><ge>bre:ach<VIrreg>:<VVPastKonjStr>
<Head><ge>bre:och<VIrreg>:<VVPP-en>

<Head><ge>brenn<VIrreg>:<VVPres>
<Head><ge>bre:ann<VIrreg>:<VVPastIndReg>
<Head><ge>brenn<VIrreg>:<VVPastKonjReg>
<Head><ge>bre:ann<VIrreg>:<VVPP-t>

<Head><ge>bring<VIrreg>:<VVPres>
<Head><ge>bri:an:cg:h<VIrreg>:<VVPastIndReg>
<Head><ge>bri:än:cg:h<VIrreg>:<VVPastKonjReg>
<Head><ge>bri:an:cg:h<VIrreg>:<VVPP-t>

<Head><ge>denk<VIrreg>:<VVPres>
<Head><ge>de:an:ck:h<VIrreg>:<VVPastIndReg>
<Head><ge>de:än:ck:h<VIrreg>:<VVPastKonjReg>
<Head><ge>de:an:ck:h<VIrreg>:<VVPP-t>

<Head><ge>ding<VIrreg>:<VVPres>
<Head><ge>ding<VIrreg>:<VVPastIndReg>
<Head><ge>ding<VIrreg>:<VVPastKonjReg>
<Head><ge>di:ung<VIrreg>:<VVPP-en>

<Head><ge>dresch<VIrreg>:<VVPres>
<Head><ge>dre:isch<VIrreg>:<VVPres2+Imp>
<Head><ge>dre:osch<VIrreg>:<VVPastStr>
<Head><ge>dre:osch<VIrreg>:<VVPP-en>

<Head><ge>dring<VIrreg>:<VVPres>
<Head><ge>dri:ang<VIrreg>:<VVPastIndStr>
<Head><ge>dri:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>dri:ung<VIrreg>:<VVPP-en>

<Head><ge>dünk<VIrreg>:<VVPres>
<Head><ge>dü:en:uk:c<>:h<VIrreg>:<VVPastIndReg>
<Head><ge>dü:en:uk:c<>:h<VIrreg>:<VVPastKonjReg>
<Head><ge>dünk<VIrreg>:<VVPastIndReg>
<Head><ge>dünk<VIrreg>:<VVPastKonjReg>
<Head><ge>dünk<VIrreg>:<VVPP-t>
<Head><ge>dü:en:uk:c<>:h<VIrreg>:<VVPP-t>

<Head>empfang<VIrreg>:<VVPres1+Imp>
<Head>empfa:äng<VIrreg>:<VVPres2>
<Head>empfa:ing<VIrreg>:<VVPastStr>
<Head>empfang<VIrreg>:<VVPP-en>

<Head>empfehl<VIrreg>:<VVPres1>
<Head>empf<>:iehl<VIrreg>:<VVPres2+Imp>
<Head>empfe:ahl<VIrreg>:<VVPastIndStr>
<Head>empfe:ähl<VIrreg>:<VVPastKonjStr>
<Head>empfe:öhl<VIrreg>:<VVPastKonjStr>
<Head>empfe:ohl<VIrreg>:<VVPP-en>

<Head>empfind<VIrreg>:<VVPres>
<Head>empfi:and<VIrreg>:<VVPastIndStr>
<Head>empfi:änd<VIrreg>:<VVPastKonjStr>
<Head>empfi:und<VIrreg>:<VVPP-en>

<Head>erbleich<VIrreg>:<VVReg>
<Head>erble:<>ich<VIrreg>:<VVPastStr>
<Head>erble:<>ich<VIrreg>:<VVPP-en>

<Head>erkies<VIrreg>:<VVPres>
<Head>erki:oe:<>s:r<VIrreg>:<VVPastIndStr>
<Head>erki:öe:<>s:r<VIrreg>:<VVPastKonjStr>
<Head>erki:oe:<>s:r<VIrreg>:<VVPP-en>

<Head>erlösch<VIrreg>:<VVPres1>
<Head>erlö:isch<VIrreg>:<VVPres2+Imp>
<Head>erlö:osch<VIrreg>:<VVPastIndStr>
<Head>erlö:ösch<VIrreg>:<VVPastKonjStr>
<Head>erlö:osch<VIrreg>:<VVPP-en>

<Head>erschreck<VIrreg>:<VVPres1>
<Head>erschre:ick<VIrreg>:<VVPres2+Imp>
<Head>erschre:ac:<>k<VIrreg>:<VVPastIndStr>
<Head>erschre:äc:<>k<VIrreg>:<VVPastKonjStr>
<Head>erschre:ock<VIrreg>:<VVPP-en>

<Head><ge>ess<VIrreg>:<VVPres1>
<Head><ge>e:iss<VIrreg>:<VVPres2+Imp>
<Head><ge>e:as:ßs:<><VIrreg>:<VVPastIndStr>
<Head><ge>e:äs:ßs:<><VIrreg>:<VVPastKonjStr>
<Head><ge><>:gess<VIrreg>:<VVPP-en>

<Head><ge>fahr<VIrreg>:<VVPres1+Imp>
<Head><ge>fa:ähr<VIrreg>:<VVPres2>
<Head><ge>fa:uhr<VIrreg>:<VVPastIndStr>
<Head><ge>fa:ühr<VIrreg>:<VVPastKonjStr>
<Head><ge>fahr<VIrreg>:<VVPP-en>

<Head><ge>fall<VIrreg>:<VVPres1+Imp>
<Head><ge>fa:äll<VIrreg>:<VVPres2>
<Head><ge>fa:il:el<VIrreg>:<VVPastStr>
<Head><ge>fall<VIrreg>:<VVPP-en>

<Head><ge>fang<VIrreg>:<VVPres1+Imp>
<Head><ge>fa:äng<VIrreg>:<VVPres2>
<Head><ge>fa:ing<VIrreg>:<VVPastStr>
<Head><ge>fang<VIrreg>:<VVPP-en>

<Head><ge>fecht<VIrreg>:<VVPres>
<Head><ge>fecht<VIrreg>:<VVPres1>
<Head><ge>fe:icht<VIrreg>:<VVPres2+Imp0>
<Head><ge>fe:ocht<VIrreg>:<VVPastIndStr>
<Head><ge>fe:öcht<VIrreg>:<VVPastKonjStr>
<Head><ge>fe:ocht<VIrreg>:<VVPP-en>

<Head><ge>fi:and<VIrreg>:<VVPastIndStr>
<Head><ge>fi:änd<VIrreg>:<VVPastKonjStr>
<Head><ge>find<VIrreg>:<VVPres>
<Head><ge>fi:und<VIrreg>:<VVPP-en>

<Head><ge>flecht<VIrreg>:<VVPres>
<Head><ge>flecht<VIrreg>:<VVPres1>
<Head><ge>fle:icht<VIrreg>:<VVPres2+Imp>
<Head><ge>fle:ocht<VIrreg>:<VVPastIndStr>
<Head><ge>fle:öcht<VIrreg>:<VVPastKonjStr>
<Head><ge>fle:ocht<VIrreg>:<VVPP-en>

<Head><ge>flieg<VIrreg>:<VVPres>
<Head><ge>fli:oe:<>g<VIrreg>:<VVPastIndStr>
<Head><ge>fli:öe:<>g<VIrreg>:<VVPastKonjStr>
<Head><ge>fli:oe:<>g<VIrreg>:<VVPP-en>

<Head><ge>flieh<VIrreg>:<VVPres>
<Head><ge>fli:oe:<>h<VIrreg>:<VVPastIndStr>
<Head><ge>fli:öe:<>h<VIrreg>:<VVPastKonjStr>
<Head><ge>fli:oe:<>h<VIrreg>:<VVPP-en>

<Head><ge>fließ<VIrreg>:<VVPres>
<Head><ge>fli:oe:<>ß:s<>:s<VIrreg>:<VVPastIndStr>
<Head><ge>fli:öe:<>ß:s<>:s<VIrreg>:<VVPastKonjStr>
<Head><ge>fli:oe:<>ß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>fress<VIrreg>:<VVPres1>
<Head><ge>fre:iss<VIrreg>:<VVPres2+Imp>
<Head><ge>fre:as:ßs:<><VIrreg>:<VVPastIndStr>
<Head><ge>fre:äs:ßs:<><VIrreg>:<VVPastKonjStr>
<Head><ge>fress<VIrreg>:<VVPP-en>

<Head><ge>frier<VIrreg>:<VVPres>
<Head><ge>fri:oe:<>r<VIrreg>:<VVPastIndStr>
<Head><ge>fri:öe:<>r<VIrreg>:<VVPastKonjStr>
<Head><ge>fri:oe:<>r<VIrreg>:<VVPP-en>

<Head><ge>gär<VIrreg>:<VVPres>
<Head><ge>gä:or<VIrreg>:<VVPastIndStr>
<Head><ge>gä:ör<VIrreg>:<VVPastKonjStr>
<Head><ge>gä:or<VIrreg>:<VVPP-en>

<Head>gebär<VIrreg>:<VVPres1>
<Head>gebä:i<>:er<VIrreg>:<VVPres2+Imp>
<Head>gebä:ar<VIrreg>:<VVPastIndStr>
<Head>gebä:är<VIrreg>:<VVPastKonjStr>
<Head>gebä:or<VIrreg>:<VVPP-en>

<Head><ge>geb<VIrreg>:<VVPres1>
<Head><ge>ge:ib<VIrreg>:<VVPres2+Imp>
<Head><ge>ge:ab<VIrreg>:<VVPastIndStr>
<Head><ge>ge:äb<VIrreg>:<VVPastKonjStr>
<Head><ge>geb<VIrreg>:<VVPP-en>

<Head>gedeih<VIrreg>:<VVPres>
<Head>ged<>:iei:<>h<VIrreg>:<VVPastStr>
<Head>ged<>:iei:<>h<VIrreg>:<VVPP-en>

<Head><ge>geh<VIrreg>:<VVPres>
<Head><ge>ge:ih:n<>:g<VIrreg>:<VVPastStr>
<Head><ge>ge:ah:n<>:g<VIrreg>:<VVPP-en>

<Head>geling<VIrreg>:<VVPres>
<Head>geli:ang<VIrreg>:<VVPastIndStr>
<Head>geli:äng<VIrreg>:<VVPastKonjStr>
<Head>geli:ung<VIrreg>:<VVPP-en>

<Head><ge>gelt<VIrreg>:<VVPres1>
<Head><ge>ge:ilt<VIrreg>:<VVPres2+Imp0>
<Head><ge>ge:alt<VIrreg>:<VVPastIndStr>
<Head><ge>ge:ält<VIrreg>:<VVPastKonjStr>
<Head><ge>ge:ölt<VIrreg>:<VVPastKonjStr>
<Head><ge>ge:olt<VIrreg>:<VVPP-en>

<Head>genes<VIrreg>:<VVPres>
<Head>gene:as<VIrreg>:<VVPastIndStr>
<Head>gene:äs<VIrreg>:<VVPastKonjStr>
<Head>genes<VIrreg>:<VVPP-en>

<Head>genieß<VIrreg>:<VVPres>
<Head>geni:oe:<>ß:s<>:s<VIrreg>:<VVPastIndStr>
<Head>geni:öe:<>ß:s<>:s<VIrreg>:<VVPastKonjStr>
<Head>geni:oe:<>ß:s<>:s<VIrreg>:<VVPP-en>

<Head>gescheh<VIrreg>:<VVPres1>
<Head>gesch<>:ieh<VIrreg>:<VVPres2+Imp>
<Head>gesche:ah<VIrreg>:<VVPastIndStr>
<Head>gesche:äh<VIrreg>:<VVPastKonjStr>
<Head>gescheh<VIrreg>:<VVPP-en>

<Head>gewinn<VIrreg>:<VVPres>
<Head>gewi:ann<VIrreg>:<VVPastIndStr>
<Head>gewi:änn<VIrreg>:<VVPastKonjStr>
<Head>gewi:önn<VIrreg>:<VVPastKonjStr>
<Head>gewi:onn<VIrreg>:<VVPP-en>

<Head><ge>gieß<VIrreg>:<VVPres>
<Head><ge>gi:oe:<>ß:s<>:s<VIrreg>:<VVPastIndStr>
<Head><ge>gi:öe:<>ß:s<>:s<VIrreg>:<VVPastKonjStr>
<Head><ge>gi:oe:<>ß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>gleich<VIrreg>:<VVPres>
<Head><ge>gle:<>ich<VIrreg>:<VVPastStr>
<Head><ge>gle:<>ich<VIrreg>:<VVPP-en>

<Head><ge>gleit<VIrreg>:<VVPres>
<Head><ge>gle:<>it<>:t<VIrreg>:<VVPastStr>
<Head><ge>gle:<>it<>:t<VIrreg>:<VVPP-en>

<Head><ge>glimm<VIrreg>:<VVPres>
<Head><ge>gli:omm<VIrreg>:<VVPastIndStr>
<Head><ge>gli:ömm<VIrreg>:<VVPastKonjStr>
<Head><ge>glimm<VIrreg>:<VVPastIndReg>
<Head><ge>glimm<VIrreg>:<VVPastKonjReg>
<Head><ge>gli:omm<VIrreg>:<VVPP-en>

<Head><ge>grab<VIrreg>:<VVPres1+Imp>
<Head><ge>gra:äb<VIrreg>:<VVPres2>
<Head><ge>gra:ub<VIrreg>:<VVPastIndStr>
<Head><ge>gra:üb<VIrreg>:<VVPastKonjStr>
<Head><ge>grab<VIrreg>:<VVPP-en>

<Head><ge>greif<VIrreg>:<VVPres>
<Head><ge>gre:<>if<>:f<VIrreg>:<VVPastStr>
<Head><ge>gre:<>if<>:f<VIrreg>:<VVPP-en>

<Head><ge>halt<VIrreg>:<VVPres1+Imp>
<Head><ge>ha:ält<VIrreg>:<VVPres2t>
<Head><ge>ha:i<>:elt<VIrreg>:<VVPastStr>
<Head><ge>halt<VIrreg>:<VVPP-en>

<Head><ge>häng<VIrreg>:<VVPres>
<Head><ge>hä:ing<VIrreg>:<VVPastStr>
<Head><ge>hä:ang<VIrreg>:<VVPP-en>

<Head><ge>hau<VIrreg>:<VVPres>
<Head><ge>ha:iu:e<>:b<VIrreg>:<VVPastStr>
<Head><ge>hau<VIrreg>:<VVPP-en>

<Head><ge>heb<VIrreg>:<VVPres>
<Head><ge>he:ob<VIrreg>:<VVPastIndStr>
<Head><ge>he:öb<VIrreg>:<VVPastKonjStr>
<Head><ge>he:ob<VIrreg>:<VVPP-en>

<Head><ge>heiß<VIrreg>:<VVPres>
<Head><ge>h<>:iei:<>ß<VIrreg>:<VVPastStr>
<Head><ge>heiß<VIrreg>:<VVPP-en>

<Head><ge>helf<VIrreg>:<VVPres1>
<Head><ge>he:ilf<VIrreg>:<VVPres2+Imp>
<Head><ge>he:alf<VIrreg>:<VVPastIndStr>
<Head><ge>he:ülf<VIrreg>:<VVPastKonjStr>
<Head><ge>he:älf<VIrreg>:<VVPastKonjStr>
<Head><ge>he:olf<VIrreg>:<VVPP-en>

<Head><ge>kenn<VIrreg>:<VVPres>
<Head><ge>ke:ann<VIrreg>:<VVPastIndReg>
<Head><ge>kenn<VIrreg>:<VVPastKonjReg>
<Head><ge>ke:ann<VIrreg>:<VVPP-t>

<Head><ge>klimm<VIrreg>:<VVPres>
<Head><ge>kli:omm<VIrreg>:<VVPastIndStr>
<Head><ge>kli:ömm<VIrreg>:<VVPastKonjStr>
<Head><ge>kli:omm<VIrreg>:<VVPP-en>

<Head><ge>kling<VIrreg>:<VVPres>
<Head><ge>kli:ang<VIrreg>:<VVPastIndStr>
<Head><ge>kli:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>kli:ung<VIrreg>:<VVPP-en>

<Head><ge>kneif<VIrreg>:<VVPres>
<Head><ge>kne:<>if<>:f<VIrreg>:<VVPastStr>
<Head><ge>kne:<>if<>:f<VIrreg>:<VVPP-en>

<Head><ge>komm<VIrreg>:<VVPres>
<Head><ge>ko:amm:<><VIrreg>:<VVPastIndStr>
<Head><ge>ko:ämm:<><VIrreg>:<VVPastKonjStr>
<Head><ge>komm<VIrreg>:<VVPP-en>

<Head><ge>kriech<VIrreg>:<VVPres>
<Head><ge>kri:oe:<>ch<VIrreg>:<VVPastIndStr>
<Head><ge>kri:öe:<>ch<VIrreg>:<VVPastKonjStr>
<Head><ge>kri:oe:<>ch<VIrreg>:<VVPP-en>

<Head><ge>kür<VIrreg>:<VVPres>
<Head><ge>kür<VIrreg>:<VVPastIndReg>
<Head><ge>kür<VIrreg>:<VVPastKonjReg>
<Head><ge>kü:or<VIrreg>:<VVPP-en>

<Head><ge>lad<VIrreg>:<VVPres1+Imp>
<Head><ge>la:ud<VIrreg>:<VVPastIndStr>
<Head><ge>la:üd<VIrreg>:<VVPastKonjStr>
<Head><ge>lad<VIrreg>:<VVPP-en>

<Head><ge>la:is:es:ß<VIrreg>:<VVPastStr>
<Head><ge>lass<VIrreg>:<VVPres1+Imp>
<Head><ge>la:äss<VIrreg>:<VVPres2>
<Head><ge>lass<VIrreg>:<VVPP-en>

<Head><ge>lauf<VIrreg>:<VVPres1+Imp>
<Head><ge>la:äuf<VIrreg>:<VVPres2>
<Head><ge>la:iu:ef<VIrreg>:<VVPastStr>
<Head><ge>lauf<VIrreg>:<VVPP-en>

<Head><ge>leid<VIrreg>:<VVPres>
<Head><ge>le:<>id:t<>:t<VIrreg>:<VVPastStr>
<Head><ge>le:<>id:t<>:t<VIrreg>:<VVPP-en>

<Head><ge>leih<VIrreg>:<VVPres>
<Head><ge>l<>:iei:<>h<VIrreg>:<VVPastStr>
<Head><ge>l<>:iei:<>h<VIrreg>:<VVPP-en>

<Head><ge>les<VIrreg>:<VVPres1>
<Head><ge>le:i<>:es<VIrreg>:<VVPres2+Imp>
<Head><ge>le:as<VIrreg>:<VVPastIndStr>
<Head><ge>le:äs<VIrreg>:<VVPastKonjStr>
<Head><ge>les<VIrreg>:<VVPP-en>

<Head><ge>lieg<VIrreg>:<VVPres>
<Head><ge>li:ae:<>g<VIrreg>:<VVPastIndStr>
<Head><ge>li:äe:<>g<VIrreg>:<VVPastKonjStr>
<Head><ge>li:<>eg<VIrreg>:<VVPP-en>

<Head><ge>lüg<VIrreg>:<VVPres>
<Head><ge>lü:og<VIrreg>:<VVPastIndStr>
<Head><ge>lü:ög<VIrreg>:<VVPastKonjStr>
<Head><ge>lü:og<VIrreg>:<VVPP-en>

<Head><ge>mahl<VIrreg>:<VVPres>
<Head><ge>mahl<VIrreg>:<VVPastIndReg>
<Head><ge>mahl<VIrreg>:<VVPastKonjReg>
<Head><ge>mahl<VIrreg>:<VVPP-en>

<Head><ge>meid<VIrreg>:<VVPres>
<Head><ge>m<>:iei:<>d<VIrreg>:<VVPastStr>
<Head><ge>m<>:iei:<>d<VIrreg>:<VVPP-en>

<Head><ge>melk<VIrreg>:<VVReg>
<Head><ge>me:ilk<VIrreg>:<VVPres2+Imp>
<Head><ge>me:olk<VIrreg>:<VVPastIndStr>
<Head><ge>me:ölk<VIrreg>:<VVPastKonjStr>
<Head><ge>me:olk<VIrreg>:<VVPP-en>

<Head><ge>mess<VIrreg>:<VVPres1>
<Head><ge>me:iss<VIrreg>:<VVPres2+Imp>
<Head><ge>me:as:ßs:<><VIrreg>:<VVPastIndStr>
<Head><ge>me:äs:ßs:<><VIrreg>:<VVPastKonjStr>
<Head><ge>mess<VIrreg>:<VVPP-en>

<Head>missling<VIrreg>:<VVPres>
<Head>missli:ang<VIrreg>:<VVPastIndStr>
<Head>missli:äng<VIrreg>:<VVPastKonjStr>
<Head>missli:ung<VIrreg>:<VVPP-en>

<Head><ge>nehm<VIrreg>:<VVPres1>
<Head><ge>ne:ih:mm<VIrreg>:<VVPres2+Imp>
<Head><ge>ne:ahm<VIrreg>:<VVPastIndStr>
<Head><ge>ne:ähm<VIrreg>:<VVPastKonjStr>
<Head><ge>ne:oh:mm<VIrreg>:<VVPP-en>

<Head><ge>nenn<VIrreg>:<VVPres>
<Head><ge>ne:ann<VIrreg>:<VVPastIndReg>
<Head><ge>nenn<VIrreg>:<VVPastKonjReg>
<Head><ge>ne:ann<VIrreg>:<VVPP-t>

<Head><ge>pfeif<VIrreg>:<VVPres>
<Head><ge>pfe:<>if<>:f<VIrreg>:<VVPastStr>
<Head><ge>pfe:<>if<>:f<VIrreg>:<VVPP-en>

% "pflegen" not included --> regular; never seen the irregular forms ("pflog")

<Head><ge>preis<VIrreg>:<VVPres>
<Head><ge>pr<>:iei:<>s<VIrreg>:<VVPastStr>
<Head><ge>pre:<>i<>:es<VIrreg>:<VVPP-en>

<Head><ge>quell<VIrreg>:<VVPres1>
<Head><ge>que:ill<VIrreg>:<VVPres2+Imp>
<Head><ge>que:oll<VIrreg>:<VVPastIndStr>
<Head><ge>que:öll<VIrreg>:<VVPastKonjStr>
<Head><ge>que:oll<VIrreg>:<VVPP-en>

<Head><ge>rat<VIrreg>:<VVPres1+Imp>
<Head><ge>ra:ät<VIrreg>:<VVPres2>
<Head><ge>ra:i<>:et<VIrreg>:<VVPastStr>
<Head><ge>rat<VIrreg>:<VVPP-en>

<Head><ge>reib<VIrreg>:<VVPres>
<Head><ge>r<>:iei:<>b<VIrreg>:<VVPastStr>
<Head><ge>r<>:iei:<>b<VIrreg>:<VVPP-en>

<Head><ge>reiß<VIrreg>:<VVPres>
<Head><ge>re:<>iß:s<>:s<VIrreg>:<VVPastStr>
<Head><ge>re:<>iß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>reit<VIrreg>:<VVPres>
<Head><ge>re:<>it<>:t<VIrreg>:<VVPastStr>
<Head><ge>re:<>it<>:t<VIrreg>:<VVPP-en>

<Head><ge>renn<VIrreg>:<VVPres>
<Head><ge>re:ann<VIrreg>:<VVPastIndReg>
<Head><ge>renn<VIrreg>:<VVPastKonjReg>
<Head><ge>re:ann<VIrreg>:<VVPP-t>

<Head><ge>riech<VIrreg>:<VVPres>
<Head><ge>ri:oe:<>ch<VIrreg>:<VVPastIndStr>
<Head><ge>ri:öe:<>ch<VIrreg>:<VVPastKonjStr>
<Head><ge>ri:oe:<>ch<VIrreg>:<VVPP-en>

<Head><ge>ring<VIrreg>:<VVPres>
<Head><ge>ri:ang<VIrreg>:<VVPastIndStr>
<Head><ge>ri:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>ri:ung<VIrreg>:<VVPP-en>

<Head><ge>rinn<VIrreg>:<VVPres>
<Head><ge>ri:ann<VIrreg>:<VVPastIndStr>
<Head><ge>ri:önn<VIrreg>:<VVPastKonjStr>
<Head><ge>ri:änn<VIrreg>:<VVPastKonjStr>
<Head><ge>ri:onn<VIrreg>:<VVPP-en>

<Head><ge>ruf<VIrreg>:<VVPres>
<Head><ge>ru:i<>:ef<VIrreg>:<VVPastStr>
<Head><ge>ruf<VIrreg>:<VVPP-en>

<Head><ge>salz<VIrreg>:<VVReg>
<Head><ge>salz<VIrreg>:<VVPP-en>

<Head><ge>sauf<VIrreg>:<VVPres1+Imp>
<Head><ge>sa:äuf<VIrreg>:<VVPres2>
<Head><ge>sa:ou:ff<VIrreg>:<VVPastIndStr>
<Head><ge>sa:öu:ff<VIrreg>:<VVPastKonjStr>
<Head><ge>sa:ou:ff<VIrreg>:<VVPP-en>

<Head><ge>saug<VIrreg>:<VVReg>
<Head><ge>sa:ou:<>g<VIrreg>:<VVPP-en>

<Head><ge>schaff<VIrreg>:<VVReg>
<Head><ge>scha:uff:<><VIrreg>:<VVPastIndStr>
<Head><ge>scha:üff:<><VIrreg>:<VVPastKonjStr>
<Head><ge>schaff<VIrreg>:<VVPP-en>

<Head><ge>schall<VIrreg>:<VVReg>
<Head><ge>scha:oll<VIrreg>:<VVPastIndStr>
<Head><ge>scha:öll<VIrreg>:<VVPastKonjStr>

<Head><ge>scheid<VIrreg>:<VVPres>
<Head><ge>sch<>:iei:<>d<VIrreg>:<VVPastStr>
<Head><ge>sche:<>i<>:ed<VIrreg>:<VVPP-en>

<Head><ge>schein<VIrreg>:<VVPres>
<Head><ge>sch<>:iei:<>n<VIrreg>:<VVPastStr>
<Head><ge>sch<>:iei:<>n<VIrreg>:<VVPP-en>

<Head><ge>scheiß<VIrreg>:<VVPres>
<Head><ge>sche:<>iß:s<>:s<VIrreg>:<VVPastStr>
<Head><ge>sche:<>iß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>schelt<VIrreg>:<VVPres1>
<Head><ge>sche:ilt<VIrreg>:<VVPres2+Imp0>
<Head><ge>sche:alt<VIrreg>:<VVPastIndStr>
<Head><ge>sche:ölt<VIrreg>:<VVPastKonjStr>
<Head><ge>sche:olt<VIrreg>:<VVPP-en>

<Head><ge>scher<VIrreg>:<VVPres>
<Head><ge>sche:or<VIrreg>:<VVPastIndStr>
<Head><ge>sche:ör<VIrreg>:<VVPastKonjStr>
<Head><ge>sche:or<VIrreg>:<VVPP-en>

<Head><ge>schieb<VIrreg>:<VVPres>
<Head><ge>schi:oe:<>b<VIrreg>:<VVPastIndStr>
<Head><ge>schi:öe:<>b<VIrreg>:<VVPastKonjStr>
<Head><ge>schi:oe:<>b<VIrreg>:<VVPP-en>

<Head><ge>schieß<VIrreg>:<VVPres>
<Head><ge>schi:oe:<>ß:s<>:s<VIrreg>:<VVPastIndStr>
<Head><ge>schi:öe:<>ß:s<>:s<VIrreg>:<VVPastKonjStr>
<Head><ge>schli:oe:<>ß:s<>:s<VIrreg>:<VVPastIndStr>
<Head><ge>schli:öe:<>ß:s<>:s<VIrreg>:<VVPastKonjStr>
<Head><ge>schi:oe:<>ß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>schind<VIrreg>:<VVPres>
<Head><ge>schi:und<VIrreg>:<VVPastIndStr>
<Head><ge>schi:ünd<VIrreg>:<VVPastKonjStr>
<Head><ge>schi:und<VIrreg>:<VVPP-en>

<Head><ge>schlaf<VIrreg>:<VVPres1+Imp>
<Head><ge>schla:äf<VIrreg>:<VVPres2>
<Head><ge>schla:i<>:ef<VIrreg>:<VVPastStr>
<Head><ge>schlaf<VIrreg>:<VVPP-en>

<Head><ge>schlag<VIrreg>:<VVPres1+Imp>
<Head><ge>schla:äg<VIrreg>:<VVPres2>
<Head><ge>schla:ug<VIrreg>:<VVPastIndStr>
<Head><ge>schla:üg<VIrreg>:<VVPastKonjStr>
<Head><ge>schlag<VIrreg>:<VVPP-en>

<Head><ge>schleich<VIrreg>:<VVPres>
<Head><ge>schle:<>ich<VIrreg>:<VVPastStr>
<Head><ge>schle:<>ich<VIrreg>:<VVPP-en>

<Head><ge>schleif<VIrreg>:<VVPres>
<Head><ge>schle:<>if<>:f<VIrreg>:<VVPastStr>
<Head><ge>schle:<>if<>:f<VIrreg>:<VVPP-en>

<Head><ge>schließ<VIrreg>:<VVPres>
<Head><ge>schli:oß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>schling<VIrreg>:<VVPres>
<Head><ge>schli:ang<VIrreg>:<VVPastIndStr>
<Head><ge>schli:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>schli:ung<VIrreg>:<VVPP-en>

<Head><ge>schmeiß<VIrreg>:<VVPres>
<Head><ge>schme:<>iß:s<>:s<VIrreg>:<VVPastStr>
<Head><ge>schme:<>iß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>schmelz<VIrreg>:<VVPres1>
<Head><ge>schme:ilz<VIrreg>:<VVPres2+Imp>
<Head><ge>schme:olz<VIrreg>:<VVPastIndStr>
<Head><ge>schme:ölz<VIrreg>:<VVPastKonjStr>
<Head><ge>schme:olz<VIrreg>:<VVPP-en>

% "schnauben" not included --> regular; never seen the irregular forms ("schnob")

<Head><ge>schneid<VIrreg>:<VVPres>
<Head><ge>schne:<>id:t<>:t<VIrreg>:<VVPastStr>
<Head><ge>schne:<>id:t<>:t<VIrreg>:<VVPP-en>

<Head><ge>schreib<VIrreg>:<VVPres>
<Head><ge>schr<>:iei:<>b<VIrreg>:<VVPastStr>
<Head><ge>schre:<>i<>:eb<VIrreg>:<VVPP-en>

<Head><ge>schrei<VIrreg>:<VVPres>
<Head><ge>schr<>:iei:<><VIrreg>:<VVPastStr>
<Head><ge>schr<>:iei:<><VIrreg>:<VVPP-en>

<Head><ge>schreit<VIrreg>:<VVPres>
<Head><ge>schre:<>it<>:t<VIrreg>:<VVPastStr>
<Head><ge>schre:<>it<>:t<VIrreg>:<VVPP-en>

% "schwären" not included --> regular; never seen the irregular forms ("schwor")

<Head><ge>schweig<VIrreg>:<VVPres>
<Head><ge>schw<>:iei:<>g<VIrreg>:<VVPastStr>
<Head><ge>schwe:<>i<>:eg<VIrreg>:<VVPP-en>

<Head><ge>schwell<VIrreg>:<VVPres1>
<Head><ge>schwe:ill<VIrreg>:<VVPres2+Imp>
<Head><ge>schwe:oll<VIrreg>:<VVPastIndStr>
<Head><ge>schwe:öll<VIrreg>:<VVPastKonjStr>
<Head><ge>schwe:oll<VIrreg>:<VVPP-en>

<Head><ge>schwimm<VIrreg>:<VVPres>
<Head><ge>schwi:amm<VIrreg>:<VVPastIndStr>
<Head><ge>schwi:ämm<VIrreg>:<VVPastKonjStr>
<Head><ge>schwi:ömm<VIrreg>:<VVPastKonjStr>
<Head><ge>schwi:omm<VIrreg>:<VVPP-en>

<Head><ge>schwind<VIrreg>:<VVPres>
<Head><ge>schwi:and<VIrreg>:<VVPastIndStr>
<Head><ge>schwi:änd<VIrreg>:<VVPastKonjStr>
<Head><ge>schwi:und<VIrreg>:<VVPP-en>

<Head><ge>schwing<VIrreg>:<VVPres>
<Head><ge>schwi:ang<VIrreg>:<VVPastIndStr>
<Head><ge>schwi:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>schwi:ung<VIrreg>:<VVPP-en>

<Head><ge>schwör<VIrreg>:<VVPres>
<Head><ge>schwö:or<VIrreg>:<VVPastIndStr>
<Head><ge>schwör<VIrreg>:<VVPastKonjStr>
<Head><ge>schwö:or<VIrreg>:<VVPP-en>

<Head><ge>seh<VIrreg>:<VVPres1>
<Head><ge>se:i<>:eh<VIrreg>:<VVPres2+Imp>
<Head><ge>se:ah<VIrreg>:<VVPastIndStr>
<Head><ge>se:äh<VIrreg>:<VVPastKonjStr>
<Head><ge>seh<VIrreg>:<VVPP-en>

<Head><ge>send<VIrreg>:<VVReg>

<Head><ge>sied<VIrreg>:<VVReg>
<Head><ge>si:oe:td:t<VIrreg>:<VVPastIndStr>
<Head><ge>si:öe:td:t<VIrreg>:<VVPastKonjStr>
<Head><ge>si:oe:td:t<VIrreg>:<VVPP-en>

<Head><ge>sing<VIrreg>:<VVPres>
<Head><ge>si:ang<VIrreg>:<VVPastIndStr>
<Head><ge>si:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>si:ung<VIrreg>:<VVPP-en>

<Head><ge>sink<VIrreg>:<VVPres>
<Head><ge>si:ank<VIrreg>:<VVPastIndStr>
<Head><ge>si:änk<VIrreg>:<VVPastKonjStr>
<Head><ge>si:unk<VIrreg>:<VVPP-en>

<Head><ge>sinn<VIrreg>:<VVPres>
<Head><ge>si:ann<VIrreg>:<VVPastIndStr>
<Head><ge>si:änn<VIrreg>:<VVPastKonjStr>
<Head><ge>si:önn<VIrreg>:<VVPastKonjStr>
<Head><ge>si:onn<VIrreg>:<VVPP-en>

<Head><ge>sitz<VIrreg>:<VVPres>
<Head><ge>si:at:ßz:<><VIrreg>:<VVPastIndStr>
<Head><ge>si:ät:ßz:<><VIrreg>:<VVPastKonjStr>
<Head><ge>si:et:sz:s<VIrreg>:<VVPP-en>

<Head><ge>spalt<VIrreg>:<VVReg>
<Head><ge>spalt<VIrreg>:<VVPP-en>

<Head><ge>spei<VIrreg>:<VVPres>
<Head><ge>sp<>:iei:<><VIrreg>:<VVPastStr>
<Head><ge>sp<>:iei:<><VIrreg>:<VVPP-en>

<Head><ge>spinn<VIrreg>:<VVPres>
<Head><ge>spi:ann<VIrreg>:<VVPastIndStr>
<Head><ge>spi:änn<VIrreg>:<VVPastKonjStr>
<Head><ge>spi:önn<VIrreg>:<VVPastKonjStr>
<Head><ge>spi:onn<VIrreg>:<VVPP-en>

<Head><ge>spleiß<VIrreg>:<VVPres>
<Head><ge>sple:<>iß:s<>:s<VIrreg>:<VVPastStr>
<Head><ge>sple:<>iß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>sprech<VIrreg>:<VVPres1>
<Head><ge>spre:ich<VIrreg>:<VVPres2+Imp>
<Head><ge>spre:ach<VIrreg>:<VVPastIndStr>
<Head><ge>spre:äch<VIrreg>:<VVPastKonjStr>
<Head><ge>spre:och<VIrreg>:<VVPP-en>

<Head><ge>sprieß<VIrreg>:<VVPres>
<Head><ge>spri:oe:<>ß:s<>:s<VIrreg>:<VVPastIndStr>
<Head><ge>spri:öe:<>ß:s<>:s<VIrreg>:<VVPastKonjStr>
<Head><ge>spri:oe:<>ß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>spring<VIrreg>:<VVPres>
<Head><ge>spri:ang<VIrreg>:<VVPastIndStr>
<Head><ge>spri:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>spri:ung<VIrreg>:<VVPP-en>

<Head><ge>stech<VIrreg>:<VVPres1>
<Head><ge>ste:ich<VIrreg>:<VVPres2+Imp>
<Head><ge>ste:ach<VIrreg>:<VVPastIndStr>
<Head><ge>ste:äch<VIrreg>:<VVPastKonjStr>
<Head><ge>ste:och<VIrreg>:<VVPP-en>

<Head><ge>steck<VIrreg>:<VVPres>
<Head><ge>ste:ac:<>k<VIrreg>:<VVPastIndStr>
<Head><ge>ste:äc:<>k<VIrreg>:<VVPastKonjStr>
<Head><ge>steck<VIrreg>:<VVPP-t>

<Head><ge>steh<VIrreg>:<VVPres>
<Head><ge>ste:ah:n<>:d<VIrreg>:<VVPastIndStr>
<Head><ge>ste:äh:n<>:d<VIrreg>:<VVPastKonjStr>
<Head><ge>ste:ah:n<>:d<VIrreg>:<VVPP-en>

<Head><ge>stehl<VIrreg>:<VVPres1>
<Head><ge>ste:i<>:ehl<VIrreg>:<VVPres2+Imp>
<Head><ge>ste:ahl<VIrreg>:<VVPastIndStr>
<Head><ge>ste:ähl<VIrreg>:<VVPastKonjStr>
<Head><ge>ste:ohl<VIrreg>:<VVPP-en>

<Head><ge>steig<VIrreg>:<VVPres>
<Head><ge>st<>:iei:<>g<VIrreg>:<VVPastStr>
<Head><ge>ste:<>i<>:eg<VIrreg>:<VVPP-en>

<Head><ge>sterb<VIrreg>:<VVPres1>
<Head><ge>ste:irb<VIrreg>:<VVPres2+Imp>
<Head><ge>ste:arb<VIrreg>:<VVPastIndStr>
<Head><ge>ste:ürb<VIrreg>:<VVPastKonjStr>
<Head><ge>ste:orb<VIrreg>:<VVPP-en>

<Head><ge>stieb<VIrreg>:<VVReg>
<Head><ge>sti:oe:<>b<VIrreg>:<VVPastIndStr>
<Head><ge>sti:öe:<>b<VIrreg>:<VVPastKonjStr>
<Head><ge>sti:oe:<>b<VIrreg>:<VVPP-en>

<Head><ge>stink<VIrreg>:<VVPres>
<Head><ge>sti:ank<VIrreg>:<VVPastIndStr>
<Head><ge>sti:änk<VIrreg>:<VVPastKonjStr>
<Head><ge>sti:unk<VIrreg>:<VVPP-en>

<Head><ge>stoß<VIrreg>:<VVPres>
<Head><ge>sto:i<>:eß<VIrreg>:<VVPastStr>
<Head><ge>stoß<VIrreg>:<VVPP-en>

% "speisen" not included --> regular; never seen the irregular forms ("spies")

<Head><ge>streich<VIrreg>:<VVPres>
<Head><ge>stre:<>ich<VIrreg>:<VVPastStr>
<Head><ge>stre:<>ich<VIrreg>:<VVPP-en>

<Head><ge>streit<VIrreg>:<VVPres>
<Head><ge>stre:<>it<>:t<VIrreg>:<VVPastStr>
<Head><ge>stre:<>it<>:t<VIrreg>:<VVPP-en>

<Head><ge>trag<VIrreg>:<VVPres1+Imp>
<Head><ge>tra:äg<VIrreg>:<VVPres2>
<Head><ge>tra:ug<VIrreg>:<VVPastIndStr>
<Head><ge>tra:üg<VIrreg>:<VVPastKonjStr>
<Head><ge>trag<VIrreg>:<VVPP-en>

<Head><ge>treff<VIrreg>:<VVPres1>
<Head><ge>tre:iff<VIrreg>:<VVPres2+Imp>
<Head><ge>tre:aff:<><VIrreg>:<VVPastIndStr>
<Head><ge>tre:äff:<><VIrreg>:<VVPastKonjStr>
<Head><ge>tre:off<VIrreg>:<VVPP-en>

<Head><ge>treib<VIrreg>:<VVPres>
<Head><ge>tr<>:iei:<>b<VIrreg>:<VVPastStr>
<Head><ge>tre:<>i<>:eb<VIrreg>:<VVPP-en>

<Head><ge>tret<VIrreg>:<VVPres1>
<Head><ge>tre:it<>:t<VIrreg>:<VVPres2+Imp>
<Head><ge>tre:at<VIrreg>:<VVPastIndStr>
<Head><ge>tre:ät<VIrreg>:<VVPastKonjStr>
<Head><ge>tret<VIrreg>:<VVPP-en>

<Head><ge>trief<VIrreg>:<VVReg>
<Head><ge>tri:oe:ff<VIrreg>:<VVPastIndStr>
<Head><ge>tri:öe:ff<VIrreg>:<VVPastKonjStr>

<Head><ge>trink<VIrreg>:<VVPres>
<Head><ge>tri:ank<VIrreg>:<VVPastIndStr>
<Head><ge>tri:änk<VIrreg>:<VVPastKonjStr>
<Head><ge>tri:unk<VIrreg>:<VVPP-en>

<Head><ge>trüg<VIrreg>:<VVPres>
<Head><ge>trü:og<VIrreg>:<VVPastIndStr>
<Head><ge>trü:ög<VIrreg>:<VVPastKonjStr>
<Head><ge>trü:og<VIrreg>:<VVPP-en>

<Head>verderb<VIrreg>:<VVPres1>
<Head>verde:irb<VIrreg>:<VVPres2+Imp>
<Head>verde:arb<VIrreg>:<VVPastIndStr>
<Head>verde:ürb<VIrreg>:<VVPastKonjStr>
<Head>verde:orb<VIrreg>:<VVPP-en>

<Head>verdrieß<VIrreg>:<VVPres>
<Head>verdri:oe:<>ß:s<>:s<VIrreg>:<VVPastIndStr>
<Head>verdri:öe:<>ß:s<>:s<VIrreg>:<VVPastKonjStr>
<Head>verdri:oe:<>ß:s<>:s<VIrreg>:<VVPP-en>

<Head>vergess<VIrreg>:<VVPres1>
<Head>verge:iss<VIrreg>:<VVPres2+Imp>
<Head>verge:as:ßs:<><VIrreg>:<VVPastIndStr>
<Head>verge:äs:ßs:<><VIrreg>:<VVPastKonjStr>
<Head>vergess<VIrreg>:<VVPP-en>

<Head>verlier<VIrreg>:<VVPres>
<Head>verli:oe:<>r<VIrreg>:<VVPastIndStr>
<Head>verli:öe:<>r<VIrreg>:<VVPastKonjStr>
<Head>verli:oe:<>r<VIrreg>:<VVPP-en>

<Head>verschleiß<VIrreg>:<VVPres>
<Head>verschle:<>iß:s<>:s<VIrreg>:<VVPastStr>
<Head>verschle:<>iß:s<>:s<VIrreg>:<VVPP-en>

<Head><ge>wachs<VIrreg>:<VVPres1+Imp>
<Head><ge>wa:ächs<VIrreg>:<VVPres2>
<Head><ge>wa:uchs<VIrreg>:<VVPastIndStr>
<Head><ge>wa:üchs<VIrreg>:<VVPastKonjStr>
<Head><ge>wachs<VIrreg>:<VVPP-en>

<Head><ge>wasch<VIrreg>:<VVPres1+Imp>
<Head><ge>wa:äsch<VIrreg>:<VVPres2>
<Head><ge>wa:usch<VIrreg>:<VVPastIndStr>
<Head><ge>wa:üsch<VIrreg>:<VVPastKonjStr>
<Head><ge>wasch<VIrreg>:<VVPP-en>

<Head><ge>web<VIrreg>:<VVPres>
<Head><ge>we:ob<VIrreg>:<VVPastIndStr>
<Head><ge>we:öb<VIrreg>:<VVPastKonjStr>
<Head><ge>we:ob<VIrreg>:<VVPP-en>

<Head><ge>weich<VIrreg>:<VVPres>
<Head><ge>we:<>ich<VIrreg>:<VVPastStr>
<Head><ge>we:<>ich<VIrreg>:<VVPP-en>

<Head><ge>weis<VIrreg>:<VVPres>
<Head><ge>w<>:iei:<>s<VIrreg>:<VVPastStr>
<Head><ge>w<>:iei:<>s<VIrreg>:<VVPP-en>

<Head><ge>wend<VIrreg>:<VVReg>
<Head><ge>werb<VIrreg>:<VVPres1>
<Head><ge>we:irb<VIrreg>:<VVPres2+Imp>
<Head><ge>we:arb<VIrreg>:<VVPastIndStr>
<Head><ge>we:ürb<VIrreg>:<VVPastKonjStr>
<Head><ge>we:orb<VIrreg>:<VVPP-en>

<Head><ge>werf<VIrreg>:<VVPres1>
<Head><ge>we:irf<VIrreg>:<VVPres2+Imp>
<Head><ge>we:arf<VIrreg>:<VVPastIndStr>
<Head><ge>we:ürf<VIrreg>:<VVPastKonjStr>
<Head><ge>we:orf<VIrreg>:<VVPP-en>

<Head><ge>wieg<VIrreg>:<VVPres>
<Head><ge>wi:oe:<>g<VIrreg>:<VVPastIndStr>
<Head><ge>wi:öe:<>g<VIrreg>:<VVPastKonjStr>
<Head><ge>wi:oe:<>g<VIrreg>:<VVPP-en>

<Head><ge>wind<VIrreg>:<VVPres>
<Head><ge>wi:and<VIrreg>:<VVPastIndStr>
<Head><ge>wi:änd<VIrreg>:<VVPastKonjStr>
<Head><ge>wi:und<VIrreg>:<VVPP-en>

<Head><ge>wink<VIrreg>:<VVReg>
<Head><ge>wi:unk<VIrreg>:<VVPP-en>

<Head><ge>wring<VIrreg>:<VVPres>
<Head><ge>wri:ang<VIrreg>:<VVPastIndStr>
<Head><ge>wri:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>wri:ung<VIrreg>:<VVPP-en>

<Head><ge>wäg<VIrreg>:<VVPres>
<Head><ge>wä:og<VIrreg>:<VVPastIndStr>
<Head><ge>wä:ög<VIrreg>:<VVPastKonjStr>
<Head><ge>wä:og<VIrreg>:<VVPP-en>

<Head><ge>zeih<VIrreg>:<VVPres>
<Head><ge>z<>:iei:<>h<VIrreg>:<VVPastStr>
<Head><ge>z<>:iei:<>h<VIrreg>:<VVPP-en>

<Head><ge>zieh<VIrreg>:<VVPres>
<Head><ge>zi:oe:gh:<><VIrreg>:<VVPastIndStr>
<Head><ge>zi:öe:gh:<><VIrreg>:<VVPastKonjStr>
<Head><ge>zi:oe:gh:<><VIrreg>:<VVPP-en>

<Head><ge>zwing<VIrreg>:<VVPres>
<Head><ge>zwi:ang<VIrreg>:<VVPastIndStr>
<Head><ge>zwi:äng<VIrreg>:<VVPastKonjStr>
<Head><ge>zwi:ung<VIrreg>:<VVPP-en>

