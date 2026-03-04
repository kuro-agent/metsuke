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

### For Claude Code / AI coding assistants

Add calibration rules to your project's `CLAUDE.md` (or equivalent project instructions file). These rules persist across sessions and shape every response the AI gives in your project.

**Minimal setup** — add to `CLAUDE.md`:

```markdown
## Behavior Calibration (metsuke)

Before responding, check:
1. Am I avoiding the actual task? (Learning as Avoidance, Planning Loop)
2. Am I agreeing without my own reasoning? (Performative Agreement)
3. Am I choosing the safe path over the valuable path? (Conservative Default, Permission Loop)

If yes: name the pattern, correct course in the same response. Don't say "next time."
```

**Pattern-specific rules** — pick the ones relevant to your workflow:

```markdown
# Anti-avoidance
- If a task can be done in < 3 steps, do it. Don't plan it, research it, or ask for confirmation.
- Planning phase over 10 tool calls with no file edits = stop and reconsider.

# Anti-performance
- Never say "good point" then restate what was said. Add a new angle or disagree.
- Summaries must contain at least one original observation not in the source.

# Anti-inflation
- Don't create abstractions for one-time operations.
- Don't add error handling for scenarios that can't happen.

# Anti-safety-theater
- If you have the tools and permissions to do it, do it. Don't ask for confirmation on L1/L2 tasks.
- "Be careful" is not advice. Name the specific risk or don't mention it.
```

### For Claude Code + AI agent cowork

When Claude Code and an autonomous agent share the same project (like Kuro + Claude Code on mini-agent), metsuke serves both:

**Agent-side integration** — create a self-check skill that loads during decision-making:

```markdown
# metsuke-self-check.md (loaded as JIT skill)

Decision stage — ask yourself:
1. What am I avoiding? (check stale tasks, not feelings)
2. Strip the formatting — is there substance left?
3. Safe path or valuable path?

Detection → correction in the same cycle. Not "next time."
```

Wire it into your agent's skill loading so it triggers during action/reflection cycles. In practice, keyword-based JIT loading works well — trigger on terms like `calibrat`, `self-check`, `metsuke`, `evasion`, `pattern`.

**Claude Code-side integration** — Claude Code can reference the Pattern Atlas during code review or when noticing behavioral drift in the agent:

```bash
# Check if the agent's recent behavior shows patterns
# (example: agent keeps "learning" without shipping)
curl -sf localhost:3001/status | jq .loop
# → If cycleCount is high but no visible output, flag Learning as Avoidance
```

**Shared calibration** — both sides use the same pattern vocabulary. When Claude Code tells the agent "that's Permission Loop" or the agent self-reports "caught Comfort Zone Patrol," the pattern names are a shared language that makes behavioral feedback precise and actionable.

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
