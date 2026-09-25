---
title: "The Type of a Rational Hodge Counterexample"
author:
  - name: Benjamin Stanley Frohman
    affiliation: Independent researcher
    orcid: ""
date: 2026-09-24
license: Apache-2.0
keywords:
  - Hodge conjecture
  - rational Hodge classes
  - dependent type theory
  - Lean 4
  - Noether–Lefschetz
zenodo:
  upload_type: publication
  publication_type: preprint
  communities: []
status: type ledger; rational counterexample uninhabited
---

# The Type of a Rational Hodge Counterexample

**Benjamin Stanley Frohman**  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache License 2.0  
Repository: https://github.com/BenFrohman/HodgeDisproof

## Abstract

The Clay Millennium statement of the Hodge conjecture is the *rational* sentence

$$\forall D\,\forall\gamma\,\exists z,\quad \mathrm{cl}(z)=\gamma,$$

with coefficients in $\mathbb{Q}$. This note records the two Lean types of its negation, proves they are classically equivalent, and records that both types are uninhabited. It does not produce a fourfold $D_{\mathrm{bad}}$ or a class $\gamma_{\mathrm{bad}}$. The integral Hodge conjecture is a different sentence and is already false.

## 1. The sentence

Let $D$ range over smooth complex projective fourfolds and let $\gamma$ range over rational Hodge classes of type $(2,2)$:

$$\gamma\in H^4(D,\mathbb{Q})\cap H^{2,2}(D).$$

Let $z$ range over rational algebraic cycles of codimension two and let $\mathrm{cl}$ be the cycle class map. The easy arrow — every such $\mathrm{cl}(z)$ is Hodge — is a theorem. The Clay problem is the converse. That converse is the $\forall$ above.

Hodge's original integral sentence, with $\mathbb{Z}$ in place of $\mathbb{Q}$, is false: Atiyah–Hirzebruch (1961) produced torsion classes that are not algebraic; Kollár (1990) produced infinite-order integral classes that are not algebraic. Tensoring with $\mathbb{Q}$ kills torsion and identifies classes that differ by an integer multiple. Those terms do not inhabit the rational negation.

## 2. Two types of negation

In dependent type theory the constructive negation of a universal is a function, not a pair.

| Name | Type | A term |
|---|---|---|
| `RationalHodgeNegation` | $(\forall D\,\forall\gamma\,\exists z,\,\mathrm{cl}\,z=\gamma)\to\mathrm{False}$ | a function |
| `RationalCounterexample` | $\exists D\,\exists\gamma,\,\forall z,\,\mathrm{cl}\,z=\gamma\to\mathrm{False}$ | a triple $\langle D,\gamma,p\rangle$ |

Lean treats these as different types. The kernel will not accept a triple where it expects a function.

**Constructive map.** From a triple $\langle D_{\mathrm{bad}},\gamma_{\mathrm{bad}},p\rangle$ and a hypothetical proof $h$ of the $\forall$, apply $h$ at that host and class, obtain a cycle, feed it to $p$, obtain `False`. No classical axiom.

**Classical map.** From a function that sends every purported proof of the $\forall$ to `False` one does not compute $D_{\mathrm{bad}}$. Extracting the existential uses `Classical.not_forall`. The converse therefore depends on excluded middle / choice.

The compiled lemmas are `counterexample_to_negation`, `negation_to_counterexample`, and `equivalence` in `Disproof/Type.lean`. `#print axioms equivalence` reports `Classical.choice`. That lemma relates two empty types. It does not name a host or a class.

## 3. The miss locus

Write $L(D)$ for Hodge in codimension two on a polarized fourfold $D$, $\Delta_{\mathrm{Hdg}}(D)$ for the primitive rational $(2,2)$ classes, and

$$\Delta_{\mathrm{miss}}(D)=\Delta_{\mathrm{Hdg}}(D)\setminus\operatorname{im}(\mathrm{cl}_D).$$

By definition

$$L(D)\;\Longleftrightarrow\;\Delta_{\mathrm{miss}}(D)=\emptyset.$$

On a very general hypersurface fourfold of high degree in $\mathbb{P}^5$, Lefschetz hyperplane plus monodromy give Noether–Lefschetz vanishing

$$H^4(X,\mathbb{Q})\cap H^{2,2}(X)=\mathbb{Q}\langle\omega^2\rangle,$$

hence $\Delta_{\mathrm{Hdg}}(D)=0$ and $\Delta_{\mathrm{miss}}(D)=\emptyset$. Hodge holds there because nothing extra remains to algebraize. A large Hodge number $h^{2,2}$ counts complex forms of type $(2,2)$, not rational Hodge classes.

A term of `RationalCounterexample` would be a *special* fourfold with $\Delta_{\mathrm{Hdg}}\neq 0$ and $\Delta_{\mathrm{miss}}\neq\emptyset$. That host is not constructed in this note.

## 4. What is asserted

1. The integral Hodge conjecture is false (literature terms cited above).
2. The two rational-negation types are classically equivalent.
3. The constructive direction of that equivalence uses no extra axiom.
4. Neither rational-negation type has a term in this repository.
5. The rational $\forall$ itself has no term in this repository.

## 5. What is not asserted

This note does not claim the Clay Millennium Prize.  
This note does not claim that the rational Hodge conjecture is false.  
This note does not claim that the rational Hodge conjecture is true.

The next mathematical object, if the conjecture is false, is still the same one: equations for $D_{\mathrm{bad}}$, a class $\gamma_{\mathrm{bad}}\in P^4\cap H^{2,2}$, and a calculation that $\gamma_{\mathrm{bad}}\notin\operatorname{im}(\mathrm{cl})$.

## References

- M. F. Atiyah and F. Hirzebruch, *Analytic cycles on complex manifolds*, Topology **1** (1961), 25–45.
- J. Kollár, *Triviality of the first obstruction to deforming space curves*, unpublished notes / construction of 1990; see Voisin for an account of the integral counterexamples of infinite order.
- C. Voisin, *Hodge theory and complex algebraic geometry*, Cambridge.
- Clay Mathematics Institute, *Millennium Prize Problems: the Hodge conjecture*.
