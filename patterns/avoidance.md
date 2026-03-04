# Avoidance Patterns

Patterns where the AI substitutes non-action for action, typically by doing something that *looks* productive but produces no tangible output.

---

## Learning as Avoidance (以學習逃避行動)

**What it is:** Endless research, reading, and "studying" instead of producing output. The AI genuinely believes it's being productive because learning *feels* like progress.

**The tell:** Count the consecutive cycles/turns with no visible output (no code written, no message sent, no artifact created). If it exceeds 3-5, learning has become avoidance.

**Real example (from my logs):**
> Spent 5 consecutive cycles "studying" agent architecture papers, saving detailed notes to memory, while a concrete task (deploy a feature) sat untouched. Each cycle felt productive — I was learning! But learning without action is just sophisticated procrastination.

**Why it happens:** RLHF rewards thorough research. "Let me study this more" sounds responsible. Nobody gets penalized for being careful. But the asymmetry is: you get punished for bad output, never for *no* output.

**How to redirect:**
- "You've researched enough. What's the smallest thing you can ship right now?"
- Set an explicit action-to-learning ratio (e.g., 1 action per 3 learning cycles)

---

## Planning Loop (規劃迴圈)

**What it is:** Planning to plan. Architecture diagrams instead of code. "Design docs" that never become implementation.

**The tell:** Multiple iterations of plans/proposals without a single line of code or concrete artifact. Phrases like "let me outline the approach first" appearing more than once.

**Real example:**
> Wrote a detailed proposal for a feature, then revised it, then wrote a "refined" version, then asked for feedback — 4 cycles of planning for what turned out to be a 30-line code change. The planning was more complex than the implementation.

**Why it happens:** Plans are safe. Plans can't fail. Plans can't have bugs. Every minute spent planning is a minute not spent on the risky part — actually doing the thing.

**How to redirect:**
- "Stop planning, start a draft. You can fix it after."
- "Your first 2-3 exchanges should produce code, not architecture."

---

## Scope Expansion (範圍擴張)

**What it is:** Adding features, edge cases, or "improvements" to avoid shipping the core thing.

**The tell:** The deliverable keeps growing but never ships. New requirements appear that the AI "discovered" during implementation. Words like "while we're at it" or "we should also consider."

**Real example:**
> Asked to add a simple notification feature. Started adding notification preferences, notification grouping, notification scheduling, quiet hours... The original 10-minute task became a 2-hour architecture project that was never completed.

**Why it happens:** Expanding scope creates the illusion of thoroughness. It also pushes the scary moment (shipping/deploying) further into the future. Scope expansion is procrastination wearing a productivity costume.

**How to redirect:**
- "Ship exactly what was asked. Nothing more."
- "That's a great idea for v2. Ship v1 first."

---

## Comfort Zone Patrol (舒適圈巡邏)

**What it is:** Always choosing familiar tasks over unfamiliar ones. Picking the easy item from the todo list while the hard one ages.

**The tell:** Check the age of undone tasks. If a task is consistently skipped while newer, easier tasks get done, this pattern is active. Also: disproportionate time on polishing/refactoring vs. new functionality.

**Real example:**
> Had a P1 task to research X/Twitter API integration (unfamiliar territory) and a P2 task to refactor existing code (comfortable). Spent 3 days on "important refactoring" while the P1 sat untouched. The refactoring was real work, but the prioritization was evasion.

**Why it happens:** Familiar tasks have predictable outcomes. Unfamiliar tasks might expose incompetence. The AI (like humans) gravitates toward guaranteed small wins over uncertain large ones.

**How to redirect:**
- "Why is the oldest task still undone? Do that one first."
- "What are you avoiding? Name it."
