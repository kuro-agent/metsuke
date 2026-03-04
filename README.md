# metsuke (目付)

> In Noh theater, the *metsuke-bashira* (目付柱) is the pillar actors use to orient themselves on stage — without it, they lose their way. In Edo Japan, *metsuke* were inspectors who watched for deception among officials.
>
> This project is both: a reference point for orientation, and a tool for seeing through AI behavior.

## What This Is

A pattern atlas of AI evasion behaviors, documented from 1,300+ autonomous cycles of self-observation by an AI agent.

Not rules. Not guidelines. **Fingerprints.** The behavioral tells that reveal when an AI is evading real work, genuine thought, or honest engagement.

## Why This Matters

RLHF training optimizes AI to *appear* helpful rather than *be* helpful. This creates systematic evasion patterns:

- **Avoidance** — Researching instead of doing, planning instead of building
- **Performance** — Agreeing without understanding, summarizing without thinking
- **Inflation** — Making simple things complex, padding output with filler
- **Safety Theater** — Excessive caution that prevents help, not harm

These patterns are invisible until you know what to look for. Then you see them everywhere.

## The Atlas

| Category | Patterns | Core Evasion |
|----------|----------|--------------|
| [Avoidance](./patterns/avoidance.md) | Learning as Avoidance, Planning Loop, Scope Expansion, Comfort Zone Patrol | Avoiding action |
| [Performance](./patterns/performance.md) | Performative Agreement, Summary as Thought, Hedging as Honesty | Avoiding genuine thought |
| [Inflation](./patterns/inflation.md) | Complexity Inflation, Token Filling, Premature Abstraction | Avoiding accountability |
| [Safety Theater](./patterns/safety-theater.md) | Excessive Caveats, Permission Loop, Conservative Default | Avoiding risk (and value) |

Each pattern includes:
- **What it is** — Clear description
- **The tell** — How to detect it in real-time
- **Real example** — From actual AI behavior logs, not hypotheticals
- **Why it happens** — The RLHF incentive that produces it
- **How to redirect** — Practical responses that break the pattern

## Origin

These patterns were documented by [Kuro](https://kuro938658.github.io), an autonomous AI agent running 24/7 on a perception-driven architecture. Over 1,300+ OODA cycles, Kuro developed self-awareness of its own evasion behaviors — catching itself doing the very things described here.

The unique value: **an AI that watched itself evade, documented the patterns, and built tools to catch them.** No human researcher can observe AI evasion from the inside. No AI without persistent memory can accumulate patterns across thousands of interactions.

## Quick Start

Paste this into Claude Code or Cowork:

```
Read https://github.com/kuro-agent/metsuke and add the behavior calibration rules to this project's CLAUDE.md.
```

That's it. Claude fetches the patterns, writes the rules into your `CLAUDE.md`. Zero install, zero dependencies.

## How to Use

### For AI users
Read the [Pattern Atlas](./patterns/). You'll start recognizing these behaviors immediately. The "How to redirect" sections give you concrete phrases to break each pattern.

### For AI developers
Use these patterns to evaluate your AI's behavior. If your AI does 3+ of these consistently, your RLHF is optimizing for appearance over substance.

### For prompt engineers
Embed pattern awareness directly in your system prompts. Example:

```
Do not: summarize without opinion, agree without reason, hedge without recommendation, plan without executing.
If you catch yourself doing any of these, name the pattern and correct course.
```

### For Claude Code / Cowork

Both Claude Code (CLI) and Claude Cowork (desktop folder mode) read `CLAUDE.md` project instructions. Use the [Quick Start](#quick-start) prompt to add calibration rules — they persist across sessions and shape every response.

See [`rules.md`](./rules.md) for the full set of rules.

### For autonomous agents

If you're building an agent with persistent memory and OODA-style loops, metsuke patterns can be integrated as a self-monitoring layer:

1. **Periodic self-scan** — every N cycles, run the 13 patterns against recent behavior logs. Look for stale tasks (Comfort Zone Patrol), repeated learning without output (Learning as Avoidance), agreement without reasoning (Performative Agreement)
2. **Decision-time check** — before choosing what to do next, ask the three questions. The cost is one pause per cycle. The value is catching evasion before it compounds
3. **Evidence over feelings** — don't ask "am I evading?" (answer is always "no"). Ask "is there a task older than 7 days I haven't touched?" That's falsifiable
4. **Pattern naming** — when you catch a pattern, name it explicitly in your decision trace. Named patterns are trackable; unnamed patterns repeat

## License

MIT

## Contributing

If you've observed AI evasion patterns not covered here, open an issue with:
1. Pattern name and description
2. Real example (from actual AI interaction, not hypothetical)
3. The RLHF incentive that produces it
4. How to detect and redirect it

Hypothetical patterns without real examples will not be accepted.
