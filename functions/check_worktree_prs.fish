# Probably run it in this command: check_worktree_prs | xargs -t -n 1 git worktree remove -f
function check_worktree_prs -d "Lists Git worktree branches that don't exist in remote or have associated PRs"
    # Get a list of all Git worktrees
    set worktrees (git worktree list | awk '{print $1}')

    for worktree in $worktrees
        cd $worktree

        # Get the current branch name
        set branch (git rev-parse --abbrev-ref HEAD)

        # Skip master and green branches
        if test $branch = "master" -o $branch = "green"
            continue
        end

        # Check if the branch exists in remote
        set remote_exists (git ls-remote --heads origin $branch | wc -l)

        if test $remote_exists -eq 0
            echo $worktree
            continue
        end

        # Return to the original directory
        cd - > /dev/null
    end
end