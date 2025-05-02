#!/bin/bash

# prevent data from depending on presentation
if grep -q "presentation:" packages/data/pubspec.yaml; then
  echo "❌ data cannot depend on presentation!"
  exit 1
fi

# prevent domain from depending on presentation
if grep -q "presentation:" packages/domain/pubspec.yaml; then
  echo "❌ domain cannot depend on presentation!"
  exit 1
fi

# prevent core from depending on anyone
if grep -q -E "(data:|domain:|presentation:)" packages/core/pubspec.yaml; then
  echo "❌ core should not depend on anyone!"
  exit 1
fi

echo "✅ All dependencies are correct"
