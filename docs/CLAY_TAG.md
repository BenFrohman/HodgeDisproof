<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Clay tag

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

## Name

```
clay-open
```

Not `clay-solved`. Not `clay-false`.

## Meaning

Annotated snapshot of this repository at the moment the two rational-disproof
types and the Noether–Lefschetz miss-locus notes were recorded.

- `RationalHodge` — uninhabited
- `RationalHodgeNegation` — uninhabited
- `RationalCounterexample` — uninhabited
- integral Hodge — false in the literature, different type
- `L(D) ⇔ Δ_miss(D) = ∅` — definition, not a constructor

This tag does **not** claim the Clay Millennium Prize and does **not** claim a
rational counterexample.

## Command

```bash
git tag -a clay-open -m "Snapshot by Benjamin Stanley Frohman. Rational Hodge open. No D_bad. No γ_bad. Integral IHC false in the literature only."
git push origin clay-open
```

See `scripts/tag-clay-open.sh`.
