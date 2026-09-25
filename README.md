# HodgeDisproof

Author: Benjamin Stanley Frohman  
License: Apache-2.0

This repository asserts findings only where a term exists.  
It does not assert that rational Hodge is true.  
It does not assert that rational Hodge is false.

## Two different types for “Hodge is false”

Let `RationalHodge` be

```
∀ D, ∀ γ, ∃ z, cl z = γ
```

| Name | Type | What a term is | Status (rational, ℚ) |
|---|---|---|
| constructive negation | `RationalHodge → False` | a function | empty |
| existential counterexample | `∃ D, ∃ γ, ∀ z, cl z = γ → False` | a triple `(D_bad, γ_bad, p)` | empty |

These are classically equivalent after `not_forall`. They are not the same Lean type. Lemmas:

- `not_exists_forall_not` — constructive
- `not_forall_exists_not` — `Classical.choice`
- `counterexample_to_negation` — constructive
- `negation_to_counterexample` — classical
- `equivalence` — classical iff

`equivalence` relates two empty types. It does not fill either.

## Findings that *are* asserted

| Sentence | Direction | Term |
|---|---|---|
| Integral Hodge is false | negation, literature | Atiyah–Hirzebruch 1961; Kollár 1990. `docs/INTEGRAL.md` |
| The two rational-disproof types are classically equivalent | logic | `equivalence` |
| Rational Hodge | neither | no term |
| `L(D)` on a named fourfold | positive, finite list | HODGE `CycleSection`; not rebuilt here |

## Files

- `Disproof/Type.lean` — types and the five lemmas
- `docs/TYPE.md` — grind of the lemmas
- `docs/AXIOMS.md` — `#print axioms` table
- `docs/INTEGRAL.md` — integral finding
- `docs/FINDINGS.md` — assertion table
