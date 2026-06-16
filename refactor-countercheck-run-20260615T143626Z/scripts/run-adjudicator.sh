#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RUN_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
if [[ -n "${MDBLUEPRINT_REPO_ROOT:-}" ]]; then
  REPO_ROOT="$MDBLUEPRINT_REPO_ROOT"
else
  if git -C "$SCRIPT_DIR" rev-parse --show-toplevel >/dev/null 2>&1; then
    REPO_ROOT="$(git -C "$SCRIPT_DIR" rev-parse --show-toplevel)"
  else
    REPO_ROOT="$(git rev-parse --show-toplevel)"
  fi
fi
LEAN_SOURCE_ROOT="${MDBLUEPRINT_LEAN_SOURCE_ROOT:-$REPO_ROOT/../EconCSLib}"
KNOWLEDGE_ROOT="${MDBLUEPRINT_KNOWLEDGE_ROOT:-$LEAN_SOURCE_ROOT/docs/knowledge}"
CODEX_BIN="${CODEX_BIN:-codex}"
MODEL_ARGS=()
if [[ -n "${CODEX_MODEL:-}" ]]; then
  MODEL_ARGS=(-m "$CODEX_MODEL")
fi
ADD_DIR_ARGS=()
for EXTRA_DIR in "$LEAN_SOURCE_ROOT" "$KNOWLEDGE_ROOT" "$RUN_DIR"; do
  case "$EXTRA_DIR" in
    "$REPO_ROOT"|"$REPO_ROOT"/*) ;;
    *) ADD_DIR_ARGS+=(--add-dir "$EXTRA_DIR") ;;
  esac
done
PROMPT="$RUN_DIR/prompts/adjudicator.md"
LAST_MESSAGE="$RUN_DIR/logs/run-adjudicator-last-message.md"
EVENTS="$RUN_DIR/logs/run-adjudicator-events.jsonl"
"$CODEX_BIN" exec -C "$REPO_ROOT" --sandbox workspace-write --json -o "$LAST_MESSAGE" "${ADD_DIR_ARGS[@]}" "${MODEL_ARGS[@]}" - < "$PROMPT" | tee "$EVENTS"
