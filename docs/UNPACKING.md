<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Unpacking the two constructive maps

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

Neither map needs `Classical.choice`. Neither names a fourfold.

## 1. Feed the triple into a hypothetical proof

`counterexample_to_negation` assumes a triple and a proof of Hodge. Those two objects cannot coexist.

```lean
theorem counterexample_to_negation :
    RationalCounterexample → RationalHodgeNegation := by
  intro h hHodge
  obtain ⟨D, γ, p⟩ := h
  obtain ⟨z, hz⟩ := hHodge D γ
  exact p z hz
```

- `h : RationalCounterexample` is a triple ⟨D, γ, p⟩ with
  `p : ∀ z, cl z = γ → False`.
- `hHodge : RationalHodge` is a function that, given any host and class,
  returns a cycle reconstructing it.

Apply that function at the host and class from the triple:

```
hHodge D γ   gives   ⟨z, hz⟩   with   hz : cl z = γ.
```

Then `p z hz : False`.

If a concrete counterexample exists, no global constructor can exist: feed the
bad pair into the constructor, get a cycle, feed that cycle into `p`.
The triple is an *input*. If that input is missing, the implication still holds
and `RationalHodgeNegation` stays empty.

## 2. Why ¬∃ is already ∀¬

```lean
theorem not_exists_forall_not {α : Sort*} {p : α → Prop} :
    (¬ ∃ x, p x) → ∀ x, ¬ p x := by
  intro h x hx
  exact h ⟨x, hx⟩
```

- `h : ¬ ∃ x, p x` means: any pair ⟨x, px⟩ is impossible.
- Fix an arbitrary `x` and suppose `hx : p x`.
- Pack them: ⟨x, hx⟩ witnesses `∃ x, p x`.
- Apply `h` to that witness: `False`.

From “no witness exists” you get “every candidate fails.” No search, no choice.
You never pick an `x`; the caller supplies it.

That is why this lemma prints **none** under axioms, while
`not_forall_exists_not` prints `Classical.choice`. From `¬∀` you would have
to *produce* a bad `x`. From `¬∃` you only have to *reject* an `x` that was
already given.

In `negation_to_counterexample` the last line is this lemma. After two classical
`not_forall`s you hold `hγ : ¬ ∃ z, cl z = γ`. Then

```lean
exact not_exists_forall_not hγ
```

rewrites that as `∀ z, cl z = γ → False`, the third component of the triple.
The classical work is finished before this line. This line is only the unpacking.
