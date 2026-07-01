#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "${TARGET_DIR}/.codex"

cp "${SCRIPT_DIR}/AGENTS.md" "${TARGET_DIR}/AGENTS.md"
cp -r "${SCRIPT_DIR}/.codex/agents" "${TARGET_DIR}/.codex/"
cp -r "${SCRIPT_DIR}/.codex/prompts" "${TARGET_DIR}/.codex/"
cp -r "${SCRIPT_DIR}/.codex/templates" "${TARGET_DIR}/.codex/"

if [ ! -f "${TARGET_DIR}/AdditionalSpecs.md" ]; then
  cp "${SCRIPT_DIR}/AdditionalSpecs.md" "${TARGET_DIR}/AdditionalSpecs.md"
fi

echo "AGENT files installed into ${TARGET_DIR}"
