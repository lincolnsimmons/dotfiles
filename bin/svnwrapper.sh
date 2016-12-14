#!/bin/sh
# Copyright (c) 2008 by Texas Memory Systems, Inc.
# 10777 Westheimer #600  Houston, TX  77042  +1-713-266-3200
#
# $Date: 2008-03-11 08:51:03 -0500 (Tue, 11 Mar 2008) $
# $Revision: 101 $

# This script is used to wrap the SVN command.  If it is determined
# that the user is calling 'svn diff', the output of the command is
# redirected through a color filter, causing the diff to become
# a colored diff.
#
# It is smart enough to realize when diff output is further being redirected
# to a file/pipe, and in that instance, it does NOT color the output (so
# funny terminal escape sequences are not output to the file/pipe).
#
# USAGE: svnwrapper.sh <SVN command> [<SVN command args>]
#
#   <SVN command> is a normal svn command such as 'diff', 'checkout', etc.
#   <SVN command args> are normal arguments sent to the commands
#
# Most commonly, a user would alias the 'svn' command in their .cshrc to
# svnwrapper.sh, so that one does not have to explicitly call this script,
# but rather just uses 'svn <command> [<command args>]' as normal.
#
# Something like,
# alias svn 'svnwrapper.sh \!*'

[ "$1" = "diff" ] && tty -s <&1 && svn "$@" |
awk '/^+/ {print "\033[32m" $0 "\033[0m"}
             /^-/ {print "\033[31m" $0 "\033[0m"}
             /^[^ +-]/ {print "\033[36m" $0 "\033[0m"}
             /^ / {print $0}' || svn "$@"
