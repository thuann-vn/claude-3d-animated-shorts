#!/usr/bin/env bash
# Downloads the third-party files this repo does not ship (their own licenses apply):
#  - Xbot.glb (Mixamo rig from the three.js examples) -> the skeleton every character is built on
#  - Horse.glb (three.js examples) -> only for the ?chase=1 demo
#  - Anton + Inter Black fonts (SIL OFL) -> captions and cards
set -euo pipefail
cd "$(dirname "$0")/../engine"
TJ=https://raw.githubusercontent.com/mrdoob/three.js/r170/examples/models/gltf
curl -fsSL -o assets/rigs/Xbot.glb   "$TJ/Xbot.glb"
curl -fsSL -o assets/horse/Horse.glb "$TJ/Horse.glb"
curl -fsSL -o film/Anton.ttf "https://github.com/google/fonts/raw/main/ofl/anton/Anton-Regular.ttf"
curl -fsSL -o film/Inter-Black.otf "https://github.com/rsms/inter/raw/v3.19/docs/font-files/Inter-Black.otf"
echo "assets ok"
