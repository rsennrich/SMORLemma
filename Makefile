
SOURCES = morph.fst morph2.fst basemorph.fst smor-lfg.fst basesmor.fst \
	smor.fst smor-cap.fst smor-uc.fst smor-ss.fst smor-ascii.fst \
	elimX.fst elim-disj.fst smor-gen.fst test.fst pref-morph.fst

INST_TARGETS = smor.a smor.ca smor-cap.ca smor-uc.ca smor-ss.ca \
	smor-ascii.ca smor-guesser.ca smor-gen.ca

TARGETS = $(INST_TARGETS) # basesmor.ca

SHELL := /bin/bash

.PHONY: all install archive

all: $(TARGETS)

morph.a basesmor.a: basemorph.a elimX.a

morph2.a: morph.a elim-disj.a

smor-lfg.a: morph.a

smor-cap.a smor-uc.a smor-ss.a smor-ascii.a: morph2.a

smor.a: smor-lfg.a elim-disj.a

basemorph.a: phon.a map1.a map2.a map3.a pro-lexicon lexicon \
	sufffilter.a komposfilter.a preffilter.a infixfilter.a uplow.a

test.a: phon.a map1.a map2.a map3.a pro-lexicon lex sufffilter.a \
	komposfilter.a preffilter.a infixfilter.a uplow.a

smor-guesser.a: guesser-lexicon map1.a map2.a map3.a elimX.a elim-disj.a

smor-gen.a: smor.a

simple-morph.a: phon.a elim-disj.a simple-lexicon

%.a: %.fst
	ulimit -d 50000000; fst-compiler $< $@

%.ca: %.a
	fst-compact $< $@

install: $(INST_TARGETS) 
	cp $(INST_TARGETS) /corpora/mlex

archive:
	tar -zcf VERSION-`date '+%y%m%d'`.tar.gz Makefile *.fst *.perl \
	*lexicon


Makefile: *.fst
	-makedepend -Y -o.a $(SOURCES) 2>/dev/null 


# DO NOT DELETE

basemorph.a: NUM.fst flexion.fst defaults.fst FIX.fst
test.a: NUM.fst flexion.fst defaults.fst FIX.fst
basemorph.a: PRO.fst
basemorph.a basesmor.a elim-disj.a elimX.a infix-filter.a komposfilter.a map1.a map2.a map3.a preffilter.a simple-morph.a smor-cap.a smor-guesser.a sufffilter.a test.a uplow.a: symbols.fst
