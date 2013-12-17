
SOURCES = morph.fst morph2.fst basemorph.fst smor-lfg.fst basesmor.fst \
	smor.fst smor-cap.fst smor-uc.fst smor-ss.fst smor-ascii.fst \
	elimX.fst elim-disj.fst smor-gen.fst test.fst pref-morph.fst

INST_TARGETS = smor.a smor.ca smor-cap.ca smor-uc.ca smor-ss.ca \
	smor-ascii.ca smor-guesser.ca smor-gen.ca smor-full.ca

TARGETS = $(INST_TARGETS) # basesmor.ca

SHELL := /bin/bash

.PHONY: all install archive

all: $(TARGETS)

morph.a basesmor.a: basemorph.a elimX.a

morph-lemma.a: morph2.a morph-lemma.fst

morph2.a: morph.a elim-disj.a

smor-lfg.a: morph-lemma.a

smor-cap.a smor-uc.a smor-ss.a smor-ascii.a: morph-lemma.a

smor.a: smor-lfg.a elim-disj.a

basemorph.a: map1.a map2.a map3.a lexicon/pro.lex lexicon/lexicon \
	komposfilter.a preffilter.a infixfilter.a uplow.a

test.a: phon.a map1.a map2.a map3.a pro-lexicon lex \
	komposfilter.a preffilter.a infixfilter.a uplow.a

smor-guesser.a: lexicon/guesser.lex map1.a map2.a map3.a elimX.a elim-disj.a

smor-gen.a: smor.a

simple-morph.a: phon.a elim-disj.a simple-lexicon

smor-full.a: morph-lemma.a smor-guesser.a

lexicon/lexicon: lexicon/adj.irreg.lex lexicon/adpositions.closed.lex lexicon/nouns.irreg.xml lexicon/verbs.irreg.lex lexicon/affix.lex lexicon/compile_lexicon.py lexicon/wiki-lexicon.xml
	python lexicon/compile_lexicon.py

%.a: %.fst
	ulimit -d 50000000; sfst/fst-compiler-utf8-epsilonfilter $< $@

%.ca: %.a
	fst-compact $< $@

install: $(INST_TARGETS) 
	cp $(INST_TARGETS) /corpora/mlex

archive:
	tar -zcf VERSION-`date '+%y%m%d'`.tar.gz Makefile *.fst *.perl \
	*lexicon


# DO NOT DELETE

basemorph.a: NUM.fst flexion.fst defaults.fst FIX.fst phon.fst sufffilter.fst
smor-guesser.a: sufffilter.fst
test.a: NUM.fst flexion.fst defaults.fst FIX.fst
basemorph.a: PRO.fst
basemorph.a basesmor.a elim-disj.a elimX.a infix-filter.a komposfilter.a map1.a map2.a map3.a preffilter.a simple-morph.a smor-cap.a smor-guesser.a test.a uplow.a: symbols.fst
infixfilter.a komposfilter.a sufffixfilter.a prefixfilter.a: symbols.fst
