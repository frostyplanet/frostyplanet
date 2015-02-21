#!/usr/bin/env python
# coding:utf-8

import os
import sys
import subprocess

def usage():
    print "%s [target]" % (sys.argv[0])
    os.exit(1)

def main():
    if len(sys.argv) != 2:
        usage()
        return
    cmd = None
    if subprocess.call(("which", "xmms2")) == 0:
        cmd = "xmms2"
    elif subprocess.call(("which", "nyxmms2")) == 0:
        cmd = "nyxmms2"
    else:
        print >> sys.stderr, "cannot found xmms2 client"
        os.exit(1)
    subprocess.check_call((cmd, "clear"))
    subprocess.check_call((cmd, "stop"))
    subprocess.check_call((cmd, "add", sys.argv[1]))
    subprocess.check_call((cmd, "play"))

if __name__ == '__main__':
    main()



# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4 :
