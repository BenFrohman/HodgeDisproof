# Findings

Author: Benjamin Stanley Frohman

Asserted:

1. The integral Hodge conjecture is false. Citations: Atiyah–Hirzebruch, Topology 1 (1961); Kollár (1990). See `docs/INTEGRAL.md`.
2. The constructive negation of rational Hodge (`RationalHodge → False`) has no term in this repository.
3. The existential counterexample type (`∃ D γ, ∀ z, cl z = γ → False`) has no term in this repository.
4. `L(D)` for a variable fourfold is not asserted here.
5. `classical_equiv` : `RationalHodgeNegation ↔ RationalCounterexample`.
   Constructive `→`. Classical `←` via `Classical.not_forall` twice.
   `#print axioms` is `Classical.choice`. Relates two empty types. Does not name `D_bad`.

Not asserted:

- rational Hodge
- the negation of rational Hodge
- `Δ_miss(D) ≠ ∅` for any named `D`
