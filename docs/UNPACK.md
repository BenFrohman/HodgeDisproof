<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Unpack of the two constructive lemmas

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

This is the missing write-up of the last two explanations. It does not inhabit
`RationalHodge`, `RationalHodgeNegation`, or `RationalCounterexample`.

## 1. Feed the triple into a hypothetical proof

```lean
theorem counterexample_to_negation :
    RationalCounterexample → RationalHodgeNegation := by
  intro h hHodge
  obtain ⟨D, γ, p⟩ := h
  obtain ⟨z, hz⟩ := hHodge D γ
  exact p z hz
```

- `h` is a triple `⟨D, γ, p⟩` with `p : ∀ z, cl z = γ → False`.
- `hHodge` is a hypothetical proof of `∀ D γ, ∃ z, cl z = γ`.
- Apply that proof at the host and class from the triple:
  `hHodge D γ` returns `⟨z, hz⟩` with `hz : cl z = γ`.
- Apply the third component: `p z hz : False`.

If a concrete counterexample exists, no global constructor can exist. The triple
is an *input*. If that input is missing, the implication still holds and the
conclusion stays empty. `#print axioms` is none.

## 2. Why `¬∃` is already `∀¬`

```lean
theorem not_exists_forall_not {α : Sort*} {p : α → Prop} :
    (¬ ∃ x, p x) → ∀ x, ¬ p x := by
  intro h x hx
  exact h ⟨x, hx⟩
```

- `h : ¬ ∃ x, p x` rejects any packed witness `⟨x, px⟩`.
- Fix an arbitrary `x` and suppose `hx : p x`.
- Pack `⟨x, hx⟩` and apply `h`. That is `False`.

From “no witness exists” you get “every candidate fails.” No search, no choice.
The caller supplies `x`. That is why this lemma prints **none**, while
`not_forall_exists_not` prints `Classical.choice`: from `¬∀` you would have to
*produce* a bad `x`; from `¬∃` you only *reject* an `x` that was already given.

## 3. Last line of `negation_to_counterexample`

After two classical `not_forall`s you hold `hγ : ¬ ∃ z, cl z = γ`. Then

```lean
exact not_exists_forall_not hγ
```

rewrites that as `∀ z, cl z = γ → False`, the third component of the triple.
The classical work is already finished before this line. This line is only the
unpacking.
