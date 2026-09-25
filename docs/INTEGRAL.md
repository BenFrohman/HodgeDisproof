# Integral Hodge is a different type

Author: Benjamin Stanley Frohman

The integral Hodge conjecture asks that every class in

```
H^{2k}(X, ℤ) ∩ H^{k,k}(X)
```

be the class of an algebraic cycle with ℤ coefficients.

That statement is false. Known inhabitants of *its* disproof type:

- Atiyah–Hirzebruch, *Analytic cycles on complex manifolds*, Topology 1 (1961), 25–45. Torsion Hodge classes that are not algebraic.
- Kollár, 1990. Non-torsion integral Hodge classes some multiple of which is algebraic, but the class itself is not.

Those terms inhabit the *integral* disproof type. They do not inhabit the rational disproof type recorded in `docs/TYPE.md`.

Reason: a torsion class becomes zero after tensoring with ℚ. A class that becomes algebraic after multiplying by an integer is algebraic over ℚ. Neither fills `(D_bad, γ_bad)` for rational Hodge.
