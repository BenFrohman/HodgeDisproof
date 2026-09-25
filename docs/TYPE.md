# Type of a rational Hodge disproof

Author: Benjamin Stanley Frohman

## Sentence

```
¬ (∀ D, ∀ γ, ∃ z, cl z = γ)
```

equivalently

```
∃ D, ∃ γ, ∀ z, cl z = γ → False
```

## Dependent-type packing

```
DisproofProofTerm :
  Σ (D : Fourfold),
  Σ (γ : HodgeClass D),
  (∀ z : Cycle D, cl z = γ → False)
```

A term is a triple `(D_bad, γ_bad, contradiction)`.

This file names the type. It does not supply a term.
