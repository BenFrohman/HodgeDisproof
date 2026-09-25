<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Three Künneth surfaces

Author: Benjamin Stanley Frohman  
License: Apache-2.0

On \(\mathbb{P}^2\times\mathbb{P}^2\)

$$
z \;=\; a\,[\mathbb{P}^2\times\{\mathrm{pt}\}]
  \;+\; b\,[\{\mathrm{pt}\}\times\mathbb{P}^2]
  \;+\; c\,[H_1\times H_2].
$$

Lean: `Disproof/Construct.lean`, `constructProduct`.
`constructProduct_hits` is `rfl` because the model takes this basis as coordinates.

This is Field 2 **and** Field 3 on that host, both hitting \(\operatorname{im}(\mathrm{cl})\).
It is `L(\mathbb{P}^2\times\mathbb{P}^2)`. It is not Term B. It is not \(D_{\mathrm{bad}}\).

`lake build HodgeDisproof` typechecks `Disproof/Type.lean` and this file. That is not a Clay completion.
