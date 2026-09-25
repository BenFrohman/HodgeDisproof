# The Type of a Rational Hodge Counterexample

**Author.** Benjamin Stanley Frohman  
**Copyright.** © 2026 Benjamin Stanley Frohman  
**License.** Apache License 2.0  
**Status.** Type ledger. Not a Clay prize claim. Not a disproof of rational Hodge.

## Abstract

The rational Hodge conjecture in codimension 2 asks that every class
$\gamma \in H^4(X,\mathbb{Q})\cap H^{2,2}(X)$ on a smooth complex projective
fourfold $X$ be a finite rational combination of surfaces. Clay lists that
sentence as a Millennium problem. This note records the Lean types of its
negation and proves they are classically equivalent. Neither type is inhabited.
The integral Hodge conjecture is a different sentence and is already false.

## 1. The prize sentence

$$
\forall D\,\forall\gamma\,\exists z,\quad \mathrm{cl}\,z=\gamma
$$

with coefficients in $\mathbb{Q}$. This is *rational* Hodge. Hodge's original
integral form is false (Atiyah–Hirzebruch 1961; Kollár 1990). Tensoring with
$\mathbb{Q}$ kills torsion; an integral counterexample is not a witness against
the Clay sentence.

## 2. Two types of “false”

| Name | Type | Term |
|---|---|---|
| Constructive negation | $(\forall D\,\forall\gamma\,\exists z,\,\mathrm{cl}\,z=\gamma)\to\mathrm{False}$ | a function |
| Existential counterexample | $\exists D\,\exists\gamma,\,\forall z,\,\mathrm{cl}\,z=\gamma\to\mathrm{False}$ | a triple $(D_{\mathrm{bad}},\gamma_{\mathrm{bad}},p)$ |

These are not the same Lean type. Triple $\to$ function is constructive.
Function $\to$ triple uses `Classical.not_forall` (`Classical.choice`).
The iff relates two empty types. It does not produce $D_{\mathrm{bad}}$.

## 3. Noether–Lefschetz is the opposite host

On a very general high-degree fourfold in $\mathbb{P}^5$,

$$
H^4(X,\mathbb{Q})\cap H^{2,2}(X)=\mathbb{Q}\langle\omega^2\rangle,
\qquad
\Delta_{\mathrm{Hdg}}=0,
\qquad
\Delta_{\mathrm{miss}}=\emptyset.
$$

Hodge holds there because nothing extra remains. A large $h^{2,2}$ is a complex
Hodge number, not a count of rational Hodge classes. That host cannot fill the
triple. By definition $L(D)\iff\Delta_{\mathrm{miss}}(D)=\emptyset$. A
disproof is a special $D$ with both sides false. No such $D$ is supplied here.

## 4. What is asserted

1. Integral Hodge is false (literature).
2. The two rational-disproof types are classically equivalent (Lean).
3. Rational Hodge is not proved in this note.
4. Rational Hodge is not disproved in this note.

## 5. Zenodo deposit

Deposit this file together with `Disproof/Type.lean`, `LICENSE`, and `NOTICE`.
Title on Zenodo must remain the title of this note. Do not retitle as
“Hodge disproved.” After deposit, record the DOI in `docs/ZENODO.md`.
