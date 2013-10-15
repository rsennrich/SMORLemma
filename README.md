SMORLemma - An alternative lemmatization for the Stuttgart Morphological Analyzer
=============================================================================

This project contains a modified version of SMOR, the Stuttgart Morphological Analyzer: http://www.cis.uni-muenchen.de/~schmid/tools/SMOR/

the master branch contains the following modifications:

- the grammar and lexicon are converted to UTF-8
- the grammar contains minor additions and fixes

- the folder `lexicon` contains lists of irregular words, some closes-class words, and affixes.
it is also set-up to compile a lexicon in the SMOR format from a user-provided lexicon in Morphisto's XML format (such as Zmorge).


the branch `lemmatiser` contains the following additional modifications:

- the output is no longer a derivational analysis, but defines the following as the base form:
    - nouns: Nom. Sg. (or Nom. Pl. for plural-only nouns)
    - verbs: infinitive
    - adjectives: Pos. Adv./Pred.

- morpheme boundaries are still explicity marked, but using different labels:

    - <TRUNC>: marks hyphenation (same as original SMOR)
    - <#>: marks compound boundary
    - <->: marks joining element (Fugenelement) in compounds
    - <~>: marks other morpheme boundary

    - original SMOR:
    ```
    Vermittlungsgespräche
    vermitteln<V>ung<NN><SUFF>Gespräch<+NN><Neut><Nom><Pl>
    ```

    - modified SMOR:
    ```
    Vermittlungsgespräche
    Vermittlung<->s<#>gespräch<+NN><Neut><Nom><Pl>
    ```

The main purpose of the `master` branch is to remain compatible with the original SMOR as far as the output format is concerned, and to make changes that could be adopted upstream clearly visible.
Any bug fixes that apply to the unmodified SMOR should be committed in the `master` branch.


DEPENDENCIES
------------

To compile and use morphological transducers, the following software is required

    -Linux (32 and 64 bit)
    -sfst
    -autotools
    -xsltproc
    -Python 2.6


INSTALLATION
------------

1. install all dependencies. In Ubuntu Linux, all are available in the repositories:
    `sudo apt-get install build-essential xsltproc sfst`

2. checkout the lemmatiser branch (unless you want SMOR's original output format)
    `git checkout lemmatiser`

3. copy the lexicon obtained with Zmorge (or any lexicon in Morphisto's XML format) to `lexicon/wiki-lexicon.xml`.

4. execute `make` in the main directory

5. the final transducer is smor.a (and smor.ca for the compacted version); the 'lemmatiser' branch also has a transducer smor-full.a, which accepts some spelling variations (capitalization, ae for ä, ss for ß).


EXAMPLE COMMANDS
----------------

After the transducer is compiled, you can use it with the sfst tools:

for an interactive session, type:

    fst-mor smor.a

for batch processing, the compact transducer format *.ca is recommended:

    echo "Hochzeit" | fst-infl2 smor.ca


LICENSE
-------

SMOR is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License (see LICENSE).


PUBLICATIONS
------------

SMOR is described in:

Helmut Schmid, Arne Fitschen, and Ulrich Heid. 2004:
   A German computational morphology covering derivation, composition, and inflection. 
   In Proceedings of the IVth International Conference on Language Resources and Evaluation (LREC 2004), pages 1263–1266.