<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Print axioms (finished)

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

This is the complete `#print axioms` table for `Disproof/Type.lean`.
There is no sixth theorem and no remaining axiom to discharge on these five names.

| Theorem | Axioms |
|---|---|
| `not_exists_forall_not` | none |
| `counterexample_to_negation` | none |
| `not_forall_exists_not` | `Classical.choice` |
| `negation_to_counterexample` | `Classical.choice` |
| `equivalence` | `Classical.choice` |

**none** means the kernel used only definitional equality and the constructors of `Exists` / `False`. Those two maps are constructive.

**`Classical.choice`** enters only through `Classical.not_forall`. That is required to turn a function `RationalHodge → False` into a triple. It cannot be removed without changing the logic. It does not name `D_bad` or `γ_bad`.

`equivalence` packages the two maps. Its axiom list is the classical half.

Clay status recorded by this table: **open**. Tag name `clay-open`. Not `clay-closed`. No `D_bad`.
