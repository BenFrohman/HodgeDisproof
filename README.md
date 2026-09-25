# HodgeDisproof

**This repository does not contain a counterexample to the rational Hodge conjecture.**

It records the *type* of such a counterexample, and nothing else.

Author: Benjamin Stanley Frohman  
License: Apache-2.0  
Status: the Σ-type below is uninhabited.

## The claim being negated

Rational Hodge, schematic form (coefficients in ℚ):

```
∀ D, ∀ γ, ∃ z, cl(z) = γ
```

`D` is a smooth complex projective fourfold (the first open geometric case is codimension 2).  
`γ` is a rational Hodge class of type (2,2).  
`z` is a rational algebraic cycle of codimension 2.  
`cl` is the cycle class map.

## Type of a disproof

Negation pushes the quantifiers in:

```
∃ D, ∃ γ, ∀ z, cl(z) ≠ γ
```

In dependent type theory that is a nested Σ-type (a triple):

```
Σ (D : Fourfold),
Σ (γ : HodgeClass D),
(∀ z : Cycle D, cl z = γ → False)
```

The three slots are:

| Slot | Object | Status here |
|---|---|---|
| 1 | a concrete fourfold `D_bad` | empty |
| 2 | a concrete class `γ_bad` that is Hodge | empty |
| 3 | a function sending any cycle and any proof `cl z = γ_bad` to `False` | empty |

No file in this repository fills any slot.

## Integral vs rational

| Formulation | Coefficients | Disproof type |
|---|---|---|
| integral Hodge | ℤ | inhabited in the literature (Atiyah–Hirzebruch 1961; Kollár 1990) |
| rational Hodge | ℚ | uninhabited; Millennium problem |

See `docs/INTEGRAL.md`. An integral torsion class is **not** a term of the rational disproof type. Do not paste Atiyah–Hirzebruch or Kollár into slot 1–2 of the table above.

## What this repo is not

- not a proof that Hodge is false
- not a Clay close
- not a constructor `HodgeClass → Cycle`
- not imported from any other project

Lean schema (uninhabited): `Disproof/Type.lean`.
