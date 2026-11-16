/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import Disproof.Pairing
import Disproof.Type
import HodgeDisproof

/-!
# AxiomAudit

Machine-checked Lean 4 module.
-/

#print axioms HodgeDisproof.missWitness_of_pairing
#print axioms HodgeDisproof.counterexample_to_negation
#print axioms HodgeDisproof.equivalence
#print axioms HodgeDisproof.negation_to_counterexample
#print axioms HodgeDisproof.not_exists_forall_not
#print axioms HodgeDisproof.not_forall_exists_not
