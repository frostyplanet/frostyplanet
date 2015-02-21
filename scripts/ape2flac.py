#!/usr/bin/env python
# coding:utf-8

import os
import glob
import subprocess
import re

def main():
    files = glob.glob("*.ape")
    for ape_f in files:
        wav_f = re.sub(r'^(.+)\.ape$', r'\1.wav', ape_f)
        print ape_f, "->", wav_f
        subprocess.check_call(('mac', ape_f, wav_f, '-d'))
        print wav_f, "->", "flac"
        subprocess.check_call(('flac', '--best', wav_f))


if __name__ == '__main__':
    main()

# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4 :
