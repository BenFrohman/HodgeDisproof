/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman

Two types for a rational disproof. Neither is inhabited.
The classical lemma below identifies them. It does not fill either box.
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

/-- Constructive direction. No classical axiom. -/
theorem counterexample_implies_negation :
    RationalCounterexample → RationalHodgeNegation := by
  intro ⟨D, γ, p⟩ hAll
  obtain ⟨z, hz⟩ := hAll D γ
  exact p z hz

/-- Classical converse: `Classical.not_forall` twice. -/
theorem negation_implies_counterexample :
    RationalHodgeNegation → RationalCounterexample := by
  intro hNeg
  have hNot : ¬ ∀ D : Fourfold, ∀ γ : HodgeClass D, ∃ z : Cycle D, cl z = γ :=
    hNeg
  rw [Classical.not_forall] at hNot
  obtain ⟨D, hD⟩ := hNot
  rw [Classical.not_forall] at hD
  obtain ⟨γ, hγ⟩ := hD
  refine ⟨D, γ, ?_⟩
  intro z hz
  exact hγ ⟨z, hz⟩

theorem classical_equiv :
    RationalHodgeNegation ↔ RationalCounterexample :=
  ⟨negation_implies_counterexample, counterexample_implies_negation⟩

/-
Findings encoded as comments, not fake theorems:

* No term of `RationalHodge`.
* No term of `RationalHodgeNegation`.
* No term of `RationalCounterexample`.
* `classical_equiv` identifies the last two *as types*.
  It does not produce D_bad or γ_bad.
* Integral Hodge is false in the literature; that term is not this file.
-/

end HodgeDisproof
