# HodgeDisproof

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.

This repository records the **type** of a counterexample to the
*rational* Hodge conjecture in codimension 2. It does not contain a
counterexample. It is not a Clay close and not a Clay disproof.

## Sentence being negated

```
∀ D, ∀ γ ∈ Hdg²(D), ∃ z, cl z = γ     (coefficients in ℚ)
```

## Disproof type (Σ-triple)

```
Σ (D : Fourfold),
Σ (γ : primitive rational Hodge class on D),
  (∀ z : Cycle D, cl z = γ → False)
```

Three slots, all empty here:

1. `D_bad` — a named smooth complex projective fourfold
2. `γ_bad` — a named class in `H⁴ ∩ H^{2,2}` that is primitive
3. a function sending any hypothetical cycle-match to `False`

## Integral vs rational

| Formulation | Coefficients | This type |
|---|---|---|
| integral Hodge | ℤ | inhabited in the literature (Atiyah–Hirzebruch 1961; Kollár) |
| rational Hodge | ℚ | uninhabited — Millennium problem |

Do not import an integral torsion class as `γ_bad` for the rational type.

## What this repo does not contain

- a term of the Σ-type above
- `sorry`, `True.intro`, or an axiom filling the triple
- assumptions imported from other projects unless added later by the author
