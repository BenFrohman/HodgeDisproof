#!/usr/bin/env bash
# Snapshot tags. They do not claim Clay solved or Clay false.
# Author: Benjamin Stanley Frohman
set -euo pipefail

git tag -a clay-open -m "Snapshot authored by Benjamin Stanley Frohman.
Rational Hodge remains an uninhabited Prop.
RationalHodgeNegation and RationalCounterexample remain empty.
No D_bad. No gamma_bad. Not a Clay prize claim."

git tag -a type-ledger -m "Type ledger freeze. equivalence uses Classical.choice.
Neither side of the iff is inhabited."

echo "Created local tags clay-open and type-ledger."
echo "Push with: git push origin clay-open type-ledger"
