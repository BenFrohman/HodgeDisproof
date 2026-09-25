#!/usr/bin/env bash
# Copyright (c) 2026 Benjamin Stanley Frohman
# Licensed under Apache-2.0
# Annotated snapshot tag. Does not claim Clay solved or Clay false.
set -euo pipefail

TAG=clay-open
MSG="Snapshot by Benjamin Stanley Frohman. Rational Hodge open. No D_bad. No gamma_bad. Integral IHC false in the literature only."

if git rev-parse "$TAG" >/dev/null 2>&1; then
  echo "tag $TAG already exists: $(git rev-parse $TAG)"
  exit 0
fi

git tag -a "$TAG" -m "$MSG"
echo "created annotated tag $TAG at $(git rev-parse HEAD)"
echo "push with: git push origin $TAG"
