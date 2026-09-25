<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Term B

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

```
∃ X ∃ γ ∈ Hdg²(X),   γ ∉ im(cl_X)
```

Lean name: `RationalCounterexample`. No term in this repository.

## Findings card (2026-09-25)

**Field 1 — host.** `X = V(F) ⊂ ℝ⁵`  
A named smooth complex projective fourfold. Written as a shape. Not Term B by itself.

**Field 2 — class.**  
`γ_bad ∈ H⁴(X, ℚ) ∩ H^{2,2}(X)` and `γ_bad ∉ ℚ h² + ℚ [Π]`.  
Empty. `h^{2,2}` is a dimension. `[Π]` and `[S] = h² - [Π]` lie in the span Field 2 must leave.

**Field 3 — pairing / miss.**  
`γ_bad ∉ im(cl_X)`, where `cl_X : CH²(X)_ℚ → H⁴(X, ℚ)`.

A pairing witness is a class `α ∈ H⁴(X, ℚ)` such that

```
deg(α ∪ [Z]) = 0   for every surface Z ⊂ X,
deg(α ∪ γ_bad) ≠ 0.
```

Equivalently `φ(β) = deg(α ∪ β)` vanishes on `im(cl_X)` and not on `γ_bad`.  
Empty. No `α`, no `γ_bad`, no nonzero value.

## What does not fill Field 3 over ℚ

- Steenrod squares / Atiyah–Hirzebruch torsion: integral IHC; dies after `⊗ ℚ`.
- Griffiths Abel–Jacobi of a homologically trivial cycle: a different map.
- Noether–Lefschetz vanishing: `Δ_Hdg = 0`, so Field 2 is empty for the opposite reason.

Working backwards from the `∃` produces the *type* of Fields 2–3. It does not produce the class or the pairing.
