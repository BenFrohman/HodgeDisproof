/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman

Classical equivalence of the two disproof types.
Neither type is inhabited.
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

/-- Existential counterexample: a triple. -/
def RationalCounterexample : Prop :=
  ∃ D : Fourfold, ∃ γ : HodgeClass D, ∀ z : Cycle D, cl z = γ → False

/-- Constructive: a triple yields a function. No classical axiom. -/
theorem counterexample_to_negation :
    RationalCounterexample → RationalHodgeNegation := by
  intro h hHodge
  obtain ⟨D, γ, p⟩ := h
  obtain ⟨z, hz⟩ := hHodge D γ
  exact p z hz

/-- Classical: `¬∀` yields `∃¬`. This is the only classical step. -/
theorem not_forall_exists_not {α : Sort*} {p : α → Prop} :
    (¬ ∀ x, p x) → ∃ x, ¬ p x :=
  (Classical.not_forall).mp

/-- Classical converse: a function yields a triple. -/
theorem negation_to_counterexample :
    RationalHodgeNegation → RationalCounterexample := by
  intro hNeg
  have h1 : ¬ ∀ D : Fourfold, ∀ γ : HodgeClass D, ∃ z : Cycle D, cl z = γ := hNeg
  obtain ⟨D, hD⟩ := not_forall_exists_not h1
  obtain ⟨γ, hγ⟩ := not_forall_exists_not hD
  refine ⟨D, γ, ?_⟩
  intro z hz
  exact hγ ⟨z, hz⟩

/-- The two disproof types are classically equivalent.
    `#print axioms equivalence` uses `Classical.choice`. -/
theorem equivalence :
    RationalCounterexample ↔ RationalHodgeNegation :=
  ⟨counterexample_to_negation, negation_to_counterexample⟩

/-
No term of `RationalHodge`.
No term of `RationalHodgeNegation`.
No term of `RationalCounterexample`.
`equivalence` relates the last two; it does not fill either.
-/

end HodgeDisproof
