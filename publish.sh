#!/usr/bin/env bash
# Put your edits on the live site.
#
#   ./publish.sh "what you changed"
#
# This only commits and pushes. Netlify is connected to the `main` branch on
# GitHub and publishes every push on its own, so the push IS the deploy --
# there is no separate local upload step. That matters: a laptop deploy could
# push files that were never committed, and then the repo and the live site
# would quietly disagree. This way they cannot.
set -euo pipefail
cd "$(dirname "$0")"

MSG="${1:-Update the website}"
DEPLOY_BRANCH="main"

BR="$(git rev-parse --abbrev-ref HEAD)"
if [ "$BR" != "$DEPLOY_BRANCH" ]; then
  echo "NOTE: you are on '$BR', not '$DEPLOY_BRANCH'."
  echo "      Netlify only publishes '$DEPLOY_BRANCH', so this push will not go live."
  echo "      Switch with:  git switch $DEPLOY_BRANCH"
  read -r -p "      Push '$BR' anyway? [y/N] " ans
  [ "$ans" = "y" ] || [ "$ans" = "Y" ] || { echo "stopped."; exit 1; }
fi

# 1 -- commit whatever changed in the working tree
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -q -m "$MSG"
  echo "committed:  $MSG"
else
  echo "committed:  nothing new to commit"
fi

# 2 -- push; this is what triggers the deploy
git push -q -u origin "$BR"
echo "pushed:     origin/$BR"

if [ "$BR" = "$DEPLOY_BRANCH" ]; then
  echo "deploying:  Netlify picked up the push -- live in about a minute"
  echo "            watch it: https://app.netlify.com  (Deploys tab)"
fi
