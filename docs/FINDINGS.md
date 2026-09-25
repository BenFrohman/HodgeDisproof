# Findings

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

## Term B card

| Field | Type | Status |
|---|---|---|
| 1 | host \(X=V(F)\subset\mathbb{P}^5\) | shape written; not Term B alone |
| 2 | \(\gamma_{\mathrm{bad}}\in H^4\cap H^{2,2}\), outside \(\mathbb{Q}h^2+\mathbb{Q}[\Pi]\) | empty |
| 3 | pairing with \(\gamma_{\mathrm{bad}}\notin\operatorname{im}(\mathrm{cl}_X)\) | empty |

Field 3 pairing, if written, is a class \(\alpha\in H^4(X,\mathbb{Q})\) with

$$
\deg(\alpha\cup[Z])=0\quad\text{for every surface }Z\subset X,
\qquad
\deg(\alpha\cup\gamma_{\mathrm{bad}})\neq 0.
$$

## Also asserted

1. The integral Hodge conjecture is false. Citations: Atiyah–Hirzebruch, Topology 1 (1961); Kollár (1990). See `docs/INTEGRAL.md`.
2. `not_exists_forall_not` and `counterexample_to_negation` hold constructively.
3. `not_forall_exists_not`, `negation_to_counterexample`, and `equivalence` hold classically (`Classical.choice`).
4. `RationalHodgeNegation` has no term here.
5. `RationalCounterexample` (Term B) has no term here.
6. \(L(D)\) for a variable fourfold is not asserted here.

## Not asserted

- rational Hodge
- the negation of rational Hodge
- \(\Delta_{\mathrm{miss}}(D)\neq\emptyset\) for any named \(D\)
