#!/usr/bin/env bash
set -euo pipefail

REMOTE="git@github.com:flipoyo/AGENT.git"

if [ ! -d .git ]; then
  git init
fi

git add AGENTS.md README.md AdditionalSpecs.md .codex docs .gitignore install_into_project.sh bootstrap_github_repo.sh
git commit -m "Initial AGENT repository scaffold" || true

git branch -M main
if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "${REMOTE}"
fi

echo "Repository prepared. Push with:"
echo "git push -u origin main"
