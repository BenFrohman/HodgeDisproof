# Noether–Lefschetz vanishing is not a miss

Author: Benjamin Stanley Frohman  
Copyright (c) 2026 Benjamin Stanley Frohman  
License: Apache-2.0

## Very general high-degree fourfold in ℝ⁵

Lefschetz hyperplane plus monodromy give

```
H⁴(X, ℚ) ∩ H^{2,2}(X) = ℚ ⟨ω²⟩.
```

The primitive piece vanishes:

```
Δ_Hdg(D) := P⁴(X, ℚ) ∩ H^{2,2}(X) = 0.
```

Then Δ_miss(D) = ∅ automatically: there is no extra rational Hodge class for cl to miss.
L(D) holds because the only remaining (2,2) class is ω², which is algebraic.

h^{2,2} may still be large. That is a complex Hodge number, not a count of rational Hodge classes. Genericity kills extra classes in H⁴(X, ℚ), not the complex summand H^{2,2}.

This host cannot be D_bad. A Clay disproof needs Δ_Hdg ≠ 0 and a class in that space outside im(cl).

## Localized definition on a polarized fourfold D

```
L(D)  : every primitive rational (2,2)-class on D is algebraic.
Δ_miss(D) := Δ_Hdg(D) \ im(cl_X)
```

By definition,

```
L(D)  ⟷  Δ_miss(D) = ∅.
```

This is not a global template that collapses under NL. When Δ_Hdg = 0 both sides are true for the trivial reason. When Δ_Hdg ≠ 0, L(D) is the claim that those extra classes still lie in im(cl).

## What a rational disproof would be

Pick D with both sides false:

```
Δ_miss(D_bad) ≠ ∅   and therefore   ¬ L(D_bad).
```

That requires Δ_Hdg ≠ 0 first. Then produce γ_bad in that space and p : ∀ z, cl z = γ_bad → False.

This file does not produce those three objects.
