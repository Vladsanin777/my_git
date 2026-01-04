#!/usr/bin/sh

cur_hash_commit=$(git rev-parse $1)

git update-ref -d refs/heads/$2

git update-ref refs/heads/$2 $cur_hash_commit
