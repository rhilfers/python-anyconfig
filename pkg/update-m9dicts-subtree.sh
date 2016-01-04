#! /bin/bash
# Ref. 2. git read-tree in 
set -ex

commit=m9dicts/master
subdir=m9dicts

git merge -s ours --no-commit ${commit:?}
git rm -rf ${subdir:?}
git read-tree --prefix=${subdir}/ -u ${commit}:${subdir}
git commit

# vim:sw=2:ts=2:et:
