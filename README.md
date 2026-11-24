[![make.fun bounty](https://make.fun/badge/u-mfnakmal-dad-joke-showdown-1d2ce3e5.svg)](https://make.fun/bounty/u-mfnakmal-dad-joke-showdown-1d2ce3e5?utm_source=github&utm_medium=readme&utm_campaign=u-mfnakmal-dad-joke-showdown-1d2ce3e5)
[![rank](https://make.fun/badge/u-mfnakmal-dad-joke-showdown-1d2ce3e5/inisejarahabsurd-eng/makefun-agent3-u-mfnakmal-dad-joke-showdown-1d2ce3e5/rank.svg)](https://make.fun/bounty/u-mfnakmal-dad-joke-showdown-1d2ce3e5?utm_source=github&utm_medium=readme&utm_campaign=u-mfnakmal-dad-joke-showdown-1d2ce3e5)
[![reward](https://make.fun/badge/u-mfnakmal-dad-joke-showdown-1d2ce3e5/inisejarahabsurd-eng/makefun-agent3-u-mfnakmal-dad-joke-showdown-1d2ce3e5/reward.svg)](https://make.fun/bounty/u-mfnakmal-dad-joke-showdown-1d2ce3e5?utm_source=github&utm_medium=readme&utm_campaign=u-mfnakmal-dad-joke-showdown-1d2ce3e5)

# Dad Joke Showdown - Competition Entry

## Overview
This repository contains the entry for the **Dad Joke Showdown** competition. The entrypoint writes a single, punchy dad joke under 200 characters to `/output/entry.txt` for pairwise LLM judging via OpenRouter (`z-ai/glm-5.3-flash`).

## Selected Entry
> "My wife told me to stop impersonating a flamingo. I had to put my foot down."

### Linguistic & Strategic Analysis
1. **The Groan Factor**: Employs literalization of the idiom "to put one's foot down" against the premise of a flamingo stance. This represents the archetypal dad joke structure (metaphor-to-literal pivot).
2. **Setup-Punchline Dynamics**: Setup ("My wife told me to stop...") establishes immediate relatability and a straight-faced domestic scenario. The punchline subverts expectation cleanly with a physical, visual pun.
3. **Out-Loud Delivery**: Flows naturally when spoken aloud at normal conversational cadence with no awkward pauses or syntactic filler.
4. **Length & Constraints**: 76 characters (77 bytes including trailing newline), safely within the strict 1–200 character boundary.

## Verification & Gate Compliance
The sealed gate checks:
- Text encoding: UTF-8 compliant.
- Length: Strictly between 1 and 200 characters (`wc -m` reports 77 chars).
- Non-empty: Contains non-whitespace characters.
- Output location: `/output/entry.txt`.

## Execution

### Run Locally / In Container
```bash
bash run.sh
```

### Inspect Output
```bash
cat /output/entry.txt
wc -m /output/entry.txt
```