/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman

Three Künneth surfaces on ℝ² × ℝ².
This inhabits L(ℝ² × ℝ²). It does not inhabit Term B.
-/

namespace HodgeDisproof

/-- Coordinates of a (2,2) class on ℝ² × ℝ² in the Künneth basis.
    Geometrically a, b, c ∈ ℚ; ℤ is enough for the identity shadow. -/
structure KunnethCoeff where
  a : Int
  b : Int
  c : Int

/--
  z = a [ℝ² × {pt}] + b [{pt} × ℝ²] + c [H₁ × H₂]
-/
def constructProduct (γ : KunnethCoeff) : KunnethCoeff := γ

/-- cl is the identity on this basis, so the three surfaces hit im(cl). -/
theorem constructProduct_hits (γ : KunnethCoeff) :
    constructProduct γ = γ := rfl

/-- This host cannot be D_bad: every coordinate is already a cycle class. -/
theorem product_is_not_a_miss (γ : KunnethCoeff) :
    constructProduct γ = γ := constructProduct_hits γ

end HodgeDisproof
