#!/usr/bin/env bash
set -euo pipefail

# Destination setup
OUTPUT_DIR="${OUTPUT_DIR:-/output}"
OUTPUT_FILE="${OUTPUT_DIR}/entry.txt"

mkdir -p "$OUTPUT_DIR"

# Selected Dad Joke: High-groan idiom pun with deadpan delivery (<200 characters)
JOKE="My wife told me to stop impersonating a flamingo. I had to put my foot down."

# Write entry as valid UTF-8 text with standard trailing newline
printf "%s\n" "$JOKE" > "$OUTPUT_FILE"

# Validation
CHAR_COUNT=$(wc -m < "$OUTPUT_FILE" | tr -d '[:space:]')
BYTE_COUNT=$(wc -c < "$OUTPUT_FILE" | tr -d '[:space:]')

if [ "$CHAR_COUNT" -lt 1 ] || [ "$CHAR_COUNT" -gt 200 ]; then
  echo "Validation failure: Character count ${CHAR_COUNT} outside allowed [1, 200] range." >&2
  exit 1
fi

if ! grep -q '[^[:space:]]' "$OUTPUT_FILE"; then
  echo "Validation failure: Entry contains only whitespace." >&2
  exit 1
fi

echo "Successfully wrote dad joke (${CHAR_COUNT} chars, ${BYTE_COUNT} bytes) to ${OUTPUT_FILE}."