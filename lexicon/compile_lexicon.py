#!/usr/bin/python
# -*- coding: utf-8 -*-
# Copyright: University of Zurich
# Author: Rico Sennrich

from __future__ import unicode_literals
import sys
import os
import re
import codecs
from subprocess import Popen, PIPE
import align

lexicon = codecs.open(os.path.join(sys.path[0],'lexicon'),'w', encoding='UTF-8')

sublexica = [('adj.irreg.lex', 'ADJ'),
             ('adpositions.closed.lex', 'OTHER'),
             ('nouns.irreg.lex', 'NN'),
             ('verbs.irreg.lex', 'V')]

tag_extract = re.compile('<[^<>]+>')

# Peter Adolph's sublexica: some conversion required
for sublexicon, POS in sublexica:

    f = codecs.open(os.path.join(sys.path[0],sublexicon),'r', encoding='UTF-8')

    for line in f:
        if line == '\n' or line.startswith('%'):
            continue
        entry = line.split(' %')[0].strip()
        stem = [tag for tag in tag_extract.split(entry) if tag][0] # first non-empty non-tag string is stem
        tags = tag_extract.findall(entry)

        if '<ge>' in tags:
            stem = '<ge>' + stem

        entry = '<Stem>{0}<{1}><base><nativ>{2}'.format(stem, POS, tags[-1])

        lexicon.write(entry + '\n')

    f.close()

# prefix lexicon: 
prefixes = codecs.open(os.path.join(sys.path[0],'affix.lex'), 'r', encoding='UTF-8').readlines()
lexicon.writelines(prefixes)
# detachable verb prefix can also stand on its own (add lexical entry)
for line in prefixes:
    lexicon.write(line)
    if '<PREF><V>' in line:
        stem = [tag for tag in tag_extract.split(line) if tag][0] # first non-empty non-tag string is stem
        tags = tag_extract.findall(line)
        origin = tags[-1]
        entry = '<Stem>{0}<OTHER><base>{1}<Pref/Sep>'.format(stem, origin)
        lexicon.write(entry + '\n')

# Wiktionary lexicon
xml_transform = Popen(['xsltproc', os.path.join(sys.path[0], 'lexicon-transform.xslt'), os.path.join(sys.path[0], 'wiki-lexicon.xml')], stdout=PIPE)
align = Popen(['python', os.path.join(sys.path[0], 'align.py')], stdin=xml_transform.stdout, stdout=lexicon)

lexicon.close()