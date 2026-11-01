/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/
/-
How a pairing builds the miss witness p.
This file does not supply γ_bad or α.
-/

import Disproof.Type

namespace HodgeDisproof

variable {Fourfold : Type} {HodgeClass : Fourfold → Type} {Cycle : Fourfold → Type}
  (cl : ∀ D : Fourfold, Cycle D → HodgeClass D)
  {R : Type} [Zero R]
  -- Schematic numerical pairing on Hodge classes (values in any `R` with `0`, e.g. `ℚ`).
  -- Not a period computation.
  (pair : ∀ D : Fourfold, HodgeClass D → HodgeClass D → R)

/-- Field 3 slot. Same type as the third component of Term B. -/
def MissWitness {D : Fourfold} (γ : HodgeClass D) : Prop :=
  ∀ z : Cycle D, cl _ z = γ → False

/--
If φ(β) := pair _ α β kills every cycle class and does not kill γ,
then p is the λ that rewrites cl _ z = γ into φ γ = 0.
-/
theorem missWitness_of_pairing {D : Fourfold}
    (α γ : HodgeClass D)
    (h_kill : ∀ z : Cycle D, pair _ α (cl _ z) = 0)
    (h_hit  : pair _ α γ ≠ 0) :
    MissWitness cl γ := by
  intro z hz
  have : pair _ α γ = 0 := hz ▸ h_kill z
  exact h_hit this

/-
Field 1 is written in docs: X = V(F) ⊂ ℙ⁵.
Field 2 (γ_bad) is not supplied.
Field 3 (p) is not supplied.
`missWitness_of_pairing` is the constructor of p from (α, φ).
It is not a term of `RationalCounterexample`.
-/

end HodgeDisproof
