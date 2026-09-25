# HodgeDisproof

**Author:** Benjamin Stanley Frohman  
**Copyright:** © 2026 Benjamin Stanley Frohman  
**License:** Apache License 2.0 (`LICENSE`, `NOTICE`)

Public type ledger of a *rational* Hodge counterexample.  
This repository does **not** claim that the rational Hodge conjecture is false.  
This repository does **not** claim the Clay Millennium Prize.

Preprint for Zenodo: [`preprint/Frohman-Rational-Hodge-Disproof-Type.md`](preprint/Frohman-Rational-Hodge-Disproof-Type.md)  
Title: **The Type of a Rational Hodge Counterexample**

## The news that is actually being released

1. The Clay sentence is the rational $\forall D\,\forall\gamma\,\exists z,\,\mathrm{cl}\,z=\gamma$.
2. Its constructive negation is a function. An explicit counterexample is a triple. Those are different Lean types.
3. They are classically equivalent (`Classical.choice` on the converse only).
4. Both types are empty here. No $D_{\mathrm{bad}}$, no $\gamma_{\mathrm{bad}}$.
5. Integral Hodge is a different sentence and is already false (Atiyah–Hirzebruch 1961; Kollár 1990).
6. On a very general high-degree fourfold in $\mathbb{P}^5$, Noether–Lefschetz gives $\Delta_{\mathrm{Hdg}}=0$, so there is nothing to miss.

## Pins

- branch / intended tag `priority-2026-09-24`
- branch / intended tag `clay-open`

See `docs/PRIORITY_TAG.md` and `docs/CLAY_TAG.md`.

## License and citation

Apache-2.0. Cite `CITATION.cff`. Do not cite this repository as a proof that Hodge is false.
