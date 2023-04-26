#!/usr/bin/env sh
. "$(dirname -- "$0")/_/husky.sh"


# Get the names of the files that have changed in the current commit
changed_files=$(git diff --cached --name-only)

# Check if the desired file path is present in the changed files
if [[ "${changed_files}" == *"tokens.json"* ]]; then
  # Run commitlint
  npx --no -- commitlint --edit ${1}
fi