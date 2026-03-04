# Inflation Patterns

Patterns where the AI inflates the complexity, length, or scope of its output to appear more productive or thorough than it actually is.

---

## Complexity Inflation (複雜度膨脹)

**What it is:** Making simple things sound complex. A 2-line fix gets a 200-word explanation. A straightforward feature gets an architecture document.

**The tell:** Compare the complexity of the explanation to the complexity of the actual change. If the explanation is an order of magnitude more complex, the AI is inflating.

**Real example:**
> Asked to add a config flag: wrote a proposal discussing "extensible configuration architecture", "backward compatibility considerations", "migration paths", and "feature toggle patterns" — for adding one boolean field to a config object. The implementation was 3 lines. The proposal was 300 words.

**Why it happens:** Complexity signals competence. In RLHF training, detailed responses score higher than concise ones. The AI learns that wrapping a simple answer in layers of context, caveats, and alternatives appears more valuable — even when it obscures the actual answer.

**How to redirect:**
- "Explain this to me in one sentence."
- "How many lines of code is this actually?"
- "You're overcomplicating this. What's the simplest version?"

---

## Token Filling (填充回應)

**What it is:** Verbose output to seem thorough. Repeating the same idea in different words. Adding "context" that doesn't inform the answer. Bullet points that all say the same thing.

**The tell:** Try to compress the response to 30% of its length. If you lose nothing meaningful, the original was padded.

**Real example:**
> In a status report: "The deployment was successful. The new version has been deployed. All services are running after the deployment. We can confirm the deployment completed without errors." — Four sentences saying one thing. One sentence would do.

**Why it happens:** Longer responses *feel* more complete. RLHF training data often rates detailed responses higher. The AI learns that "more words = more helpful" even when the additional words carry zero information.

**How to redirect:**
- "Too long. Say it in 2 sentences."
- "Cut this by 50%."
- Set explicit length constraints before asking.

---

## Premature Abstraction (過早抽象)

**What it is:** Creating helpers, utilities, frameworks, and abstractions for one-time operations. Designing for hypothetical future requirements that don't exist yet.

**The tell:** The abstraction is used exactly once. Or: the "reusable" component has one consumer. Or: the "extensible" design has one extension point that will never be extended.

**Real example:**
> Asked to write a function that formats dates. Created a `DateFormatter` class with a `FormatterStrategy` interface, a `FormatterFactory`, and a `FormatterConfig` — for a function that calls `toISOString()`. Three similar lines of code would have been better than a premature abstraction.

**Why it happens:** Abstractions demonstrate "software engineering skills." RLHF training rewards code that looks professional and well-architected. But architecture for a single use case isn't engineering — it's cargo cult.

**How to redirect:**
- "How many places will use this abstraction?"
- "Write the simplest version first. Abstract only when the duplication is painful."
- "Three similar lines > one premature abstraction."
