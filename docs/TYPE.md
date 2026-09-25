# Constructive negation vs existential counterexample

Author: Benjamin Stanley Frohman

## The two types

```
RationalHodgeNegation      := RationalHodge → False
RationalCounterexample     := ∃ D, ∃ γ, ∀ z, cl z = γ → False
```

A term of the first is a function. A term of the second is a triple `(D_bad, γ_bad, p)`.

## Lemma (`Disproof/Type.lean`)

**Constructive (→).** `counterexample_to_negation`

From `⟨D, γ, p⟩` and a hypothetical `h : RationalHodge` take `h D γ = ⟨z, hz⟩`, then `p z hz : False`. No classical axiom.

**Classical (←).** `negation_to_counterexample`

`hNeg : RationalHodge → False` is `¬∀ D, ∀ γ, ∃ z, cl z = γ`.
`Classical.not_forall` twice produces `D` and `γ` with `¬ ∃ z, cl z = γ`.
`not_exists` is constructive and rewrites that as `∀ z, cl z = γ → False`.

**Packaging.** `equivalence` is the iff. `#print axioms equivalence` reports `Classical.choice`. That is the price of `not_forall`. It is not a term of either side.

## What the lemma does not do

It does not inhabit `RationalHodge`.
It does not inhabit `RationalHodgeNegation`.
It does not inhabit `RationalCounterexample`.
It does not name `D_bad` or `γ_bad`.
