<!--
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache-2.0 license as described in the file LICENSE.
Author: Benjamin Stanley Frohman
-->

# Two constructive maps

Author: Benjamin Stanley Frohman  
Copyright © 2026 Benjamin Stanley Frohman  
License: Apache-2.0

Neither needs `Classical.choice`. Neither names a fourfold.

## 1. Feed the triple into a hypothetical proof

`counterexample_to_negation` assumes you already have a triple and someone hands you a proof of Hodge. It shows those two objects cannot coexist.

```lean
theorem counterexample_to_negation :
    RationalCounterexample → RationalHodgeNegation := by
  intro h hHodge
  obtain ⟨D, γ, p⟩ := h
  obtain ⟨z, hz⟩ := hHodge D γ
  exact p z hz
```

Unpack the types.

- `h : RationalCounterexample`  
  so `h` is a triple \(\langle D,\gamma,p\rangle\) with  
  \(p : \forall z,\; \mathrm{cl}\,z=\gamma \to \mathrm{False}\).
- `hHodge : RationalHodge`  
  so `hHodge` is a function that, given any host and class, returns a cycle reconstructing it.

Apply that function at the host and class from the triple:

$$
\texttt{hHodge } D\ \gamma \quad\text{gives}\quad \langle z,\; hz\rangle
\quad\text{with}\quad hz : \mathrm{cl}\,z=\gamma.
$$

Now apply the third component of the triple:

$$
p\ z\ hz : \mathrm{False}.
$$

That is the whole proof. If a concrete counterexample exists, then no global constructor can exist: feed the bad pair into the constructor, get a cycle, feed that cycle into \(p\), get contradiction.

What this does not do: invent \(D\) or \(\gamma\). The triple is an input. If that input is missing, the theorem still holds as an implication and the conclusion `RationalHodgeNegation` stays empty.

## 2. Why \(\neg\exists\) is already \(\forall\neg\)

`not_exists_forall_not` is the unpacking of “there is no such \(z\)” into “every \(z\) fails.”

```lean
theorem not_exists_forall_not {α : Sort*} {p : α → Prop} :
    (¬ ∃ x, p x) → ∀ x, ¬ p x := by
  intro h x hx
  exact h ⟨x, hx⟩
```

Read it as English.

- `h : ¬ ∃ x, p x` means: if anyone exhibits a pair \(\langle x, px\rangle\), that pair is impossible.
- Fix an arbitrary `x` and suppose `hx : p x`.
- Pack them: \(\langle x, hx\rangle\) is exactly a witness of \(\exists x, p x\).
- Apply `h` to that witness: `False`.

So from “no witness exists” you get “every candidate fails.” No search, no choice, no excluded middle. You never pick an `x`; the caller supplies it.

That is why this lemma prints **none** under axioms, while `not_forall_exists_not` prints `Classical.choice`. From \(\neg\forall\) you would have to produce a bad `x`. From \(\neg\exists\) you only have to reject an `x` that was already given.

In `negation_to_counterexample` the last line is this lemma: after two classical `not_forall`s you hold `hγ : ¬ ∃ z, cl z = γ`. Then

```lean
exact not_exists_forall_not hγ
```

rewrites that as `∀ z, cl z = γ → False`, which is the third component of the triple. The classical work is already finished before this line. This line is only the unpacking.
