# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zprofile.pre.zsh"

# Move tag commit
# $ git_move_tag ${old} ${new}
function git_move_tag() {
    git tag -d $1;
    git push -d origin $1;
    git tag  $1 $2;
    git push origin $1;
}

# Delete tag both of local/remote
# $ git_delete_tag ${tag_name}
function git_delete_tag() {
    git branch -D $1
    git push origin :$1
}

# Create diffrence files between current with specified commit
# git_diff ${commit_no}
function git_diff() {
    git diff $1 --diff-filter=ACMR --name-only | sed -e 's/\(^.*$\)/"\1"/g' | xargs git archive --format=zip --prefix=_diff/ HEAD -o _diff.zip
}

# Remove ignored files
function git_remove_ignored() {
    git rm --cached `git ls-files -ci --exclude-standard`
}

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zprofile.post.zsh"
