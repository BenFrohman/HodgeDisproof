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

Unfolded into three fields. Field 1 may be a named host. Fields 2–3 are empty here.

## Field 1

A named smooth complex projective fourfold. Example already written:
`X = V(F) ⊂ ℝ⁵`. That host alone is not Term B.

## Field 2

A single cohomology class on that host:

```
γ_bad ∈ H⁴(X, ℚ) ∩ H^{2,2}(X),
γ_bad ∉ ℚ h² + ℚ [Π].
```

A period vector, a coefficient against a Hodge basis, or an explicit
harmonic (2,2)-form would count. `h^{2,2}` is a dimension, not a class.
`[Π]` and `[S] = h² - [Π]` lie in the span Field 2 must leave.

## Field 3

A proof about *that same class*:

```
γ_bad ∉ im(cl_X),
cl_X : CH²(X)_ℚ → H⁴(X, ℚ).
```

A pairing that vanishes on every algebraic class and does not vanish on
`γ_bad` would count. The sentence “it is a miss” without that pairing is
Field 2 wearing Field 3’s name.

## What does not fill Field 3 over ℚ

- Steenrod squares / Atiyah–Hirzebruch torsion: that is the *integral*
  obstruction. After `⊗ ℚ` it disappears.
- Griffiths intermediate Jacobian of a homologically trivial cycle: a
  different map (Abel–Jacobi), not `cl` on Hodge classes of type (2,2).
- Noether–Lefschetz vanishing: that makes `Δ_Hdg = 0`, so Field 2 is
  empty for the opposite reason.

Working backwards from the `∃` produces the *type* of Fields 2–3.
It does not produce `γ_bad` or the pairing.
