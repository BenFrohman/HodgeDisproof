<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Term B

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

Term B is the Σ-sentence

$$
\exists X\ \exists\gamma\in\mathrm{Hdg}^2(X),\qquad
\gamma\notin\operatorname{im}(\mathrm{cl}_X).
$$

| Field | Type | Status |
|---|---|---|
| 1 | host \(X=V(F)\subset\mathbb{P}^5\) | shape written; not Term B alone |
| 2 | \(\gamma_{\mathrm{bad}}\in H^4(X,\mathbb{Q})\cap H^{2,2}(X)\), outside \(\mathbb{Q}h^2+\mathbb{Q}[\Pi]\) | empty |
| 3 | pairing with \(\gamma_{\mathrm{bad}}\notin\operatorname{im}(\mathrm{cl}_X)\) | empty |

## Field 3 pairing

$$
\mathrm{cl}_X:\mathrm{CH}^2(X)_{\mathbb{Q}}\to H^4(X,\mathbb{Q}).
$$

A witness is a class \(\alpha\in H^4(X,\mathbb{Q})\) such that

$$
\deg(\alpha\cup[Z])=0\quad\text{for every surface }Z\subset X,
\qquad
\deg(\alpha\cup\gamma_{\mathrm{bad}})\neq 0.
$$

Equivalently \(\varphi(\beta)=\deg(\alpha\cup\beta)\) vanishes on \(\operatorname{im}(\mathrm{cl}_X)\) and not on \(\gamma_{\mathrm{bad}}\).

## What does not fill Field 3 over \(\mathbb{Q}\)

- Steenrod / Atiyah–Hirzebruch torsion: integral Hodge. After \(\otimes\mathbb{Q}\) it disappears.
- Griffiths Abel–Jacobi: a different map.
- Noether–Lefschetz vanishing: \(\Delta_{\mathrm{Hdg}}=0\), so Field 2 is empty for the opposite reason.
- \([\Pi]\) and \([S]=h^2-[\Pi]\): they lie in \(\operatorname{im}(\mathrm{cl})\).

Working backwards from the \(\exists\) produces the type of Fields 2–3. It does not produce \(\gamma_{\mathrm{bad}}\) or \(\alpha\).
