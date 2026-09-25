<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Names of the Term B triple

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

Term B is \(\langle X,\;\gamma_{\mathrm{bad}},\;p\rangle\).

| Field | Call it | Lean slot |
|---|---|---|
| 1 | the host | `D` |
| 2 | the class \(\gamma_{\mathrm{bad}}\) | `γ` |
| 3 | the miss witness \(p\) | `p : ∀ z, cl z = γ → False` |

Field 2 is a vector in \(H^4(X,\mathbb{Q})\cap H^{2,2}(X)\) outside \(\mathbb{Q}h^2+\mathbb{Q}[\Pi]\).

Field 3 is the proof that this same vector misses \(\operatorname{im}(\mathrm{cl}_X)\).

## How \(\alpha\) and \(\varphi\) build \(p\)

$$
\varphi(\beta)=\deg(\alpha\cup\beta).
$$

$$
p \;=\; \lambda z.\,\lambda h.\
\text{from }h:\mathrm{cl}\,z=\gamma_{\mathrm{bad}}
\text{ and }\varphi\!\restriction_{\operatorname{im}(\mathrm{cl})}=0
\text{ get }\varphi(\gamma_{\mathrm{bad}})=0,
\text{ contradict }\varphi(\gamma_{\mathrm{bad}})\neq 0.
$$

\(\alpha\) defines \(\varphi\). \(\varphi\) plus those two numerical identities define \(p\). The Lean slot is still \(p\), not \(\alpha\).

Neither \(\gamma_{\mathrm{bad}}\) nor \(p\) is written.
