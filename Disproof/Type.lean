/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman

Schema only. No geometry is imported. No term is supplied.
-/

namespace HodgeDisproof

/-- Placeholder sorts. Not a moduli space and not a named fourfold. -/
opaque Fourfold : Type

opaque HodgeClass (D : Fourfold) : Type

opaque Cycle (D : Fourfold) : Type

opaque cl {D : Fourfold} : Cycle D → HodgeClass D

/-- Rational Hodge, schematic. Coefficients implicit in the sorts. -/
def RationalHodge : Prop :=
  ∀ D : Fourfold, ∀ γ : HodgeClass D, ∃ z : Cycle D, cl z = γ

/--
Type of a rational disproof: a fourfold, a Hodge class, and a
contradiction from any cycle reconstruction.

This definition is a type. This file does not inhabit it.
-/
def RationalDisproofType : Prop :=
  ∃ D : Fourfold, ∃ γ : HodgeClass D, ∀ z : Cycle D, cl z = γ → False

/-
No `theorem rational_hodge_false : RationalDisproofType`.
No `theorem rational_hodge : RationalHodge`.
No `sorry`.
-/

end HodgeDisproof
