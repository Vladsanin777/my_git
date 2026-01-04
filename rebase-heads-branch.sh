#!/usr/bin/sh
commits_hashs=$(git log --reverse --oneline --format="%H" $1)
echo "$commits_hashs"

git update-ref -d refs/heads/$2

for commit_hash in $commits_hashs; do
    git update-ref refs/heads/$2 $commit_hash
done
