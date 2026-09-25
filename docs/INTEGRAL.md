# Finding: integral Hodge is false

Author: Benjamin Stanley Frohman

## Sentence

Every class in `H^{2k}(X, ℤ) ∩ H^{k,k}(X)` is the class of an algebraic cycle with ℤ coefficients.

## Direction asserted

This sentence is false.

## Terms in the literature (not constructed in Lean here)

- Atiyah, M. F.; Hirzebruch, F. *Analytic cycles on complex manifolds.* Topology 1 (1961), 25–45. Torsion Hodge classes that are not algebraic.
- Kollár, J. (1990). Non-torsion integral Hodge classes of infinite order that are not algebraic (some multiple is algebraic).

Those objects inhabit the *integral* counterexample type.

They do not inhabit either rational type in `docs/TYPE.md`:

- torsion dies after `⊗ ℚ`
- a class that becomes algebraic after multiplying by an integer is algebraic over ℚ

No Lean term of an integral Godeaux–Serre variety is supplied in `Disproof/Type.lean`. The finding is the literature term, recorded as a citation, not as `sorry`.
