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
|---|---|---|---|
| constructive negation | `RationalHodge → False` | a function that takes any purported proof of Hodge and returns `False` | empty |
| existential counterexample | `∃ D, ∃ γ, ∀ z, cl z = γ → False` | a triple `(D_bad, γ_bad, contradiction)` | empty |

These are classically equivalent (after `Not.not_forall` / `not_exists`). They are not the same Lean type. A proof assistant will not accept a triple where it expects a function unless a classical axiom is used. This repo records both types and inhabits neither for rational Hodge.

## Findings that *are* asserted

| Sentence | Direction | Term |
|---|---|---|
| Integral Hodge is false | negation, literature | Atiyah–Hirzebruch 1961 (torsion); Kollár 1990 (non-torsion infinite order). Documented in `docs/INTEGRAL.md`. Not a Lean construction of those varieties. |
| Rational Hodge | neither | no term of `RationalHodge`, no term of `RationalHodge → False`, no triple |
| `L(D)` on a named fourfold | positive, finite list | lives in the HODGE library as `CycleSection`; not reconstructed here |

`Δ_miss(D_bad) ≠ ∅` is the same geometric content as the triple. No such `D_bad` is named here.

## Files

- `Disproof/Type.lean` — the two types, no theorems inhabiting them
- `docs/TYPE.md` — the constructive vs classical split
- `docs/INTEGRAL.md` — integral finding, with citations
- `docs/FINDINGS.md` — the assertion table
