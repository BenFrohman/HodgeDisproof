<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Noether–Lefschetz vanishing and the miss locus

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

## Very general high-degree fourfolds

On a very general hypersurface fourfold of high degree in \(\mathbb{P}^5\),
Lefschetz hyperplane plus monodromy imply

$$
H^4(X,\mathbb{Q})\cap H^{2,2}(X)=\mathbb{Q}\langle\omega^2\rangle.
$$

The primitive piece vanishes:

$$
\Delta_{\mathrm{Hdg}}(D)=P^4(X,\mathbb{Q})\cap H^{2,2}(X)=0.
$$

The only rational Hodge class of type \((2,2)\) is a power of the hyperplane
class, which is algebraic. Hodge holds on that host because there is nothing
extra to algebraize.

The Hodge number \(h^{2,2}\) can still be large. That counts complex forms of
type \((2,2)\), not rational Hodge classes. Genericity kills extra classes in
\(H^4(X,\mathbb{Q})\), not the complex summand \(H^{2,2}\).

That is Noether–Lefschetz vanishing of extra classes. It is the opposite of a
miss: the remaining Clay piece is empty, so there is nothing for
\(\mathrm{cl}_X\) to miss.

## Structural definition for a polarized fourfold \(D\)

- \(L(D)\): every primitive rational \((2,2)\)-class on \(D\) is algebraic.
- \(\Delta_{\mathrm{miss}}(D)=\Delta_{\mathrm{Hdg}}(D)\setminus\operatorname{im}(\mathrm{cl}_X)\).

$$
L(D)\;\Longleftrightarrow\;\Delta_{\mathrm{miss}}(D)=\emptyset.
$$

This is the definition of Hodge on the primitive summand, plus Lefschetz for
\(\omega^2\). It is not a global template that collapses under NL vanishing.
When \(\Delta_{\mathrm{Hdg}}(D)=0\) both sides are true for a trivial reason.

A Clay disproof is a *special* fourfold with

$$
\Delta_{\mathrm{Hdg}}(D_{\mathrm{bad}})\neq 0
\qquad\text{and}\qquad
\Delta_{\mathrm{miss}}(D_{\mathrm{bad}})\neq\emptyset,
$$

hence \(\neg L(D_{\mathrm{bad}})\). A very general high-degree fourfold in
\(\mathbb{P}^5\) cannot be that host.

This file does not name such a \(D_{\mathrm{bad}}\).
