/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman

Two types for a rational disproof. Neither is inhabited.
-/

namespace HodgeDisproof

/-- Placeholder sorts. Not a named fourfold. -/
opaque Fourfold : Type

opaque HodgeClass (D : Fourfold) : Type

opaque Cycle (D : Fourfold) : Type

opaque cl {D : Fourfold} : Cycle D → HodgeClass D

/-- Rational Hodge (schematic). -/
def RationalHodge : Prop :=
  ∀ D : Fourfold, ∀ γ : HodgeClass D, ∃ z : Cycle D, cl z = γ

/-- Constructive negation: a function, not a triple. -/
def RationalHodgeNegation : Prop :=
  RationalHodge → False

/-- Existential counterexample: a triple. Classically equivalent to
`RationalHodgeNegation`, not definitionally the same. -/
def RationalCounterexample : Prop :=
  ∃ D : Fourfold, ∃ γ : HodgeClass D, ∀ z : Cycle D, cl z = γ → False

/-
Findings encoded as comments, not fake theorems:

* No term of `RationalHodge`.
* No term of `RationalHodgeNegation`.
* No term of `RationalCounterexample`.
* Integral Hodge is false in the literature; that term is not this file.
-/

end HodgeDisproof
