# Constructive negation vs existential counterexample

Author: Benjamin Stanley Frohman

## 1. Function type (constructive `¬`)

```
¬ RationalHodge
  := RationalHodge → False
  := (∀ D γ, ∃ z, cl z = γ) → False
```

A term is a function. It is not a triple.

## 2. Σ-type (explicit counterexample)

```
∃ D, ∃ γ, ∀ z, cl z = γ → False
```

A term is a triple `(D_bad, γ_bad, p)` with

```
p : ∀ z, cl z = γ_bad → False
```

## 3. They are not definitionally the same

In classical logic, `¬∀ ⇔ ∃¬`. In Lean this uses `Classical.not_forall` (or `propext` + choice, depending on the lemma). This repository does not apply that axiom to manufacture a triple from a function or a function from a triple.

For rational Hodge both types are empty here.
