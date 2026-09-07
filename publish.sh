#!/usr/bin/env bash
# Save your edits, put them on GitHub, and publish them to the live site --
# in one step, so what you see in VS Code is what visitors get.
#
#   ./publish.sh "what you changed"
#
# One-time setup:  npm install -g netlify-cli && netlify login && netlify link
set -euo pipefail
cd "$(dirname "$0")"

MSG="${1:-Update the website}"

# 1 -- commit whatever changed in the working tree
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -q -m "$MSG"
  echo "committed:  $MSG"
else
  echo "committed:  nothing new to commit"
fi

# 2 -- push the branch you are on
BR="$(git rev-parse --abbrev-ref HEAD)"
git push -q -u origin "$BR"
echo "pushed:     origin/$BR"

# 3 -- publish to the live site
if ! command -v netlify >/dev/null 2>&1; then
  echo "STOP: netlify CLI missing.  Run:  npm install -g netlify-cli"
  exit 1
fi
if ! netlify status >/dev/null 2>&1; then
  echo "STOP: not logged in.  Run:  netlify login   (then: netlify link)"
  exit 1
fi
netlify deploy --prod --dir=. --message "$MSG"
echo "live:       done -- hard-refresh the site to see it"
