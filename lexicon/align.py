#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import unicode_literals
import sys
import re
import codecs

epsilon=re.compile("0")
replacement=re.compile("(?iu)[@\w\.]+:[@\w\.]+", )

def align(w1,w2):
    w1_len=len(w1)
    w2_len=len(w2)
    max_len=w1_len
    if w2_len>max_len: max_len=w2_len
    while 1:
        if w1_len==max_len: break
        w1=w1+"0"
        w1_len=w1_len+1
    while 1:
        if w2_len==max_len: break
        w2=w2+"0"
        w2_len=w2_len+1
    result=""
    for i in range(0,max_len):
        if w1[i]==w2[i]: 
            result+=w1[i]
            continue
        if w1[i]!=w2[i]:
            result+=w1[i]+":"+w2[i]
    result=epsilon.sub("<>",result)
    return result

def process_line(line, output_object):
    try:
        foo=replacement.search(line).group()
        bar=foo.split(":")
        dummy=align(bar[0],bar[1])
        doof=re.sub(foo,dummy,line,re.UNICODE)
        output_object.write(doof)
    except:
        output_object.write(line)


if __name__ == '__main__':

    if sys.version_info < (3, 0):
        sys.stdout = codecs.getwriter('UTF-8')(sys.stdout)
        sys.stdin = codecs.getreader('UTF-8')(sys.stdin)

    #print align("Maus".decode('utf-8'),"Mäus".decode('utf-8'))
    data=sys.stdin.readlines()
    for line in data:
        process_line(line,sys.stdout)
