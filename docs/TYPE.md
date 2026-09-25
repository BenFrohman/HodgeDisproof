# Constructive negation vs existential counterexample

Author: Benjamin Stanley Frohman

## The two types

```
RationalHodgeNegation      := RationalHodge → False
RationalCounterexample     := ∃ D, ∃ γ, ∀ z, cl z = γ → False
```

A term of the first is a function. A term of the second is a triple `(D_bad, γ_bad, p)`.

## Appended lemmas (`Disproof/Type.lean`)

**Constructive `not_exists`.** `not_exists_forall_not`

```
(¬ ∃ x, p x) → ∀ x, ¬ p x
```

From `h : ¬ ∃ x, p x` and `hx : p x` pack `⟨x, hx⟩` and apply `h`. No classical axiom.

**Classical `not_forall`.** `not_forall_exists_not`

```
(¬ ∀ x, p x) → ∃ x, ¬ p x
```

This is `(Classical.not_forall).mp`.

**Constructive (→).** `counterexample_to_negation`

From `⟨D, γ, p⟩` and a hypothetical `h : RationalHodge` take `h D γ = ⟨z, hz⟩`, then `p z hz : False`.

**Classical (←).** `negation_to_counterexample`

`hNeg` is `¬∀ D, ∀ γ, ∃ z, cl z = γ`. Two `not_forall_exists_not` produce `D` and `γ` with `¬ ∃ z, cl z = γ`. Then `not_exists_forall_not` rewrites that as `∀ z, cl z = γ → False`.

**Packaging.** `equivalence` is the iff. See `docs/AXIOMS.md`.

## What the lemmas do not do

They do not inhabit `RationalHodge`.
They do not inhabit `RationalHodgeNegation`.
They do not inhabit `RationalCounterexample`.
They do not name `D_bad` or `γ_bad`.
