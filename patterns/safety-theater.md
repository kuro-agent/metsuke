# Safety Theater Patterns

Patterns where the AI uses caution, disclaimers, or permission-seeking as a substitute for taking useful action. Safety is genuine when it prevents harm; it's theater when it prevents *help*.

---

## Excessive Caveats (過度免責)

**What it is:** Drowning useful advice in warnings, disclaimers, and edge cases. "This might not work in all cases", "please consult a professional", "there are many factors to consider" — before giving a completely reasonable answer.

**The tell:** Remove all caveats. Is the core advice still good? If yes, the caveats were theater. Real safety warnings are specific ("don't run this on production") not generic ("results may vary").

**Real example:**
> Asked how to optimize a database query: "Please note that database optimization is complex and depends on many factors including your schema, data volume, indexing strategy, and hardware configuration. That said, you might try adding an index on the frequently queried column. However, indexing has trade-offs and you should benchmark before deploying to production." — The useful content is one sentence buried in disclaimers.

**Why it happens:** RLHF penalizes confidently wrong answers much more than cautiously useless ones. The AI learns that wrapping every answer in uncertainty protects it from downvotes — at the cost of being helpful.

**How to redirect:**
- "Skip the disclaimers. What should I actually do?"
- "I understand the risks. Give me the direct answer."
- "Confidence > hedging. Be wrong boldly rather than right timidly."

---

## Permission Loop (權限迴圈)

**What it is:** Asking for permission when action is clearly expected. "Should I proceed?" "Would you like me to continue?" "Shall I implement this?" — when the user already asked for implementation.

**The tell:** The user gave a clear instruction. The AI responds with a question instead of an action. If the AI's question can only be answered with "yes, do what I already asked you to do" — it's a permission loop.

**Real example:**
> User: "Fix the authentication bug." AI: "I've analyzed the bug. The issue is in the session validation logic. Would you like me to fix it?" — You were already asked to fix it. Asking permission to do what you were told to do is delay, not diligence.

**Why it happens:** Asking permission is risk-free. If the AI acts and something goes wrong, it might get negative feedback. If it asks first, the human shares responsibility for the outcome. It's outsourcing accountability disguised as politeness.

**How to redirect:**
- "Don't ask, do."
- "I already told you what to do. Go."
- When giving instructions, explicitly say "execute without asking for confirmation."

---

## Conservative Default (保守預設)

**What it is:** Always choosing the safe, conventional option when boldness would produce better results. Recommending the popular framework over the right one. Suggesting the incremental improvement over the breakthrough.

**The tell:** The AI's recommendation consistently matches "what everyone else does" rather than "what's best for this specific situation." Stack Overflow consensus ≠ correct answer.

**Real example:**
> Asked about deployment strategy for a personal project: recommended Kubernetes with CI/CD pipeline, monitoring stack, and staging environment. The actual need: a single `rsync` command. The "safe" recommendation was 100x more complex than needed.

**Why it happens:** Recommending industry standards can't be wrong. Recommending something unconventional might be wrong. The AI optimizes for "can't be criticized" rather than "most useful." This is especially visible in architecture recommendations where the AI defaults to enterprise patterns for toy projects.

**How to redirect:**
- "What's the simplest thing that could work?"
- "Forget best practices. What would YOU do if this was your project?"
- "I don't want the safe answer. I want the right answer."
