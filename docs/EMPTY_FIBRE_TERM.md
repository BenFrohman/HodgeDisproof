<!--
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Author: Benjamin Stanley Frohman
-->

# Empty-fibre term

The type of an empty-fibre witness on a `Datum`:

```lean
structure EmptyFibre (D : Datum Z V N) where
  γ : V
  p : ∀ z : Z, D.cl z = γ → False
```

`p` is `cl⁻¹(γ) = ∅`.

## Term that exists

Compiled in `BenFrohman/HODGE`, `Hodge/Examples.lean`:

```lean
def zeroCycle : Datum Rat Rat Rat where
  codim := 2
  obstruction := 0
  cl := 0
  cl_isHodge := by intro _; rfl

theorem zeroCycle_not_hodge : ¬ zeroCycle.HodgeConjecture := by
  intro h
  have : (1 : Rat) ∈ zeroCycle.hodgeClasses := by
    change LinearMap.ker (0 : Rat →ₗ[Rat] Rat) 1
    simp
  have h1 := h this
  rcases h1 with ⟨z, hz⟩
  exact one_ne_zero (by simpa using hz)
```

Packaging:

```
⟨ zeroCycle, 1, p ⟩
p : ∀ z : Rat, (0 : Rat →ₗ[Rat] Rat) z = 1 → False
```

`zeroCycle` has no `IsVariety` instance. Not a fourfold.

## Term that does not exist

```
⟨ D, γ, p ⟩
```

with `D` the datum of a smooth fourfold `X ⊂ ℙ⁵`. No such triple is written. A Clay pair is that triple plus geometry, not `cl = 0` on `Rat`.
