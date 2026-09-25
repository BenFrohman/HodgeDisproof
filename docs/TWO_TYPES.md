<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Two types, not one

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

The opening sentence “a term of \(\neg\forall D\,\gamma,\,\exists z,\,\mathrm{cl}\,z=\gamma\) is a triple” is the wrong type in Lean.

| Name | Type | A term of it |
|---|---|---|
| Negation | \((\forall D\,\forall\gamma\,\exists z,\,\mathrm{cl}\,z=\gamma)\to\mathrm{False}\) | a function |
| Counterexample | \(\exists D\,\exists\gamma,\,\forall z,\,\mathrm{cl}\,z=\gamma\to\mathrm{False}\) | a triple \(\langle D,\gamma,p\rangle\) |

The kernel will **not** accept a triple where it expects a function. The two maps are `counterexample_to_negation` and `negation_to_counterexample` in `Disproof/Type.lean`.

**Triple \(\to\) negation is constructive.** Given \(\langle D_{\mathrm{bad}},\gamma_{\mathrm{bad}},p\rangle\) and a hypothetical \(h:\forall D\,\gamma,\,\exists z,\,\mathrm{cl}\,z=\gamma\), apply \(h\) to that host and class, get a cycle, feed it to \(p\), get `False`. No extra axioms.

**Negation \(\to\) triple is classical.** From a function that sends every purported proof of Hodge to `False` you do not compute \(D_{\mathrm{bad}}\). Extracting the existential uses `Classical.not_forall`. `#print axioms equivalence` lists `Classical.choice`.

Those lemmas relate two empty types. They do not produce:

1. \(D_{\mathrm{bad}}\) — a named smooth complex projective fourfold with \(\Delta_{\mathrm{Hdg}}\neq 0\)
2. \(\gamma_{\mathrm{bad}}\) — a named class in \(P^4\cap H^{2,2}\)
3. \(p\) — for every finite rational combination of surfaces, inequality with \(\gamma_{\mathrm{bad}}\)

Integral counterexamples (Atiyah–Hirzebruch, Kollár) inhabit a different sentence. They do not inhabit this triple.

$$
L(D)\;\Longleftrightarrow\;\Delta_{\mathrm{miss}}(D)=\emptyset
$$

holds for every polarized fourfold \(D\). It is the definition. A disproof picks a \(D\) on which both sides are false:

$$
\Delta_{\mathrm{miss}}(D_{\mathrm{bad}})\neq\emptyset
\qquad\text{and therefore}\qquad
\neg L(D_{\mathrm{bad}}).
$$

That requires \(\Delta_{\mathrm{Hdg}}\neq 0\) as well, since the miss locus sits inside the extra Hodge classes. Naming the boundary is not the construction. The construction is equations for \(D_{\mathrm{bad}}\) and a period or intersection calculation showing \(\gamma_{\mathrm{bad}}\notin\operatorname{im}(\mathrm{cl})\). That calculation is not in this repository.
