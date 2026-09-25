<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Status

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

## Finished: the type of Term B

$$
\langle X,\;\gamma_{\mathrm{bad}},\;p\rangle
\qquad
p:\forall z,\;\mathrm{cl}\,z=\gamma\to\mathrm{False}
$$

| Field | Call it | Lean slot | Status |
|---|---|---|---|
| 1 | the host | `D` | shape \(X=V(F)\subset\mathbb{P}^5\) |
| 2 | the class \(\gamma_{\mathrm{bad}}\) | `γ` | empty |
| 3 | the miss witness \(p\) | `MissWitness γ` | empty |

Constructor of \(p\) from a pairing: `missWitness_of_pairing` in `Disproof/Pairing.lean`.
That lemma is not a term of `RationalCounterexample`.

## Not finished

- no \(\gamma_{\mathrm{bad}}\)
- no \(\alpha\), no \(\varphi\) with \(\varphi(\mathrm{cl}\,z)=0\) and \(\varphi(\gamma)\neq 0\)
- no term of `RationalHodgeNegation`
- no term of `RationalCounterexample`
- Clay tag is `clay-open`, not `clay-closed`

Local HODGE drafts under `/home/workdir/artifacts` are named-host material for BenFrohman/HODGE. They are not a Term B witness and are not copied here.
