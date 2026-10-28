#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_render_evolution info
PYTHONPATH=src python -m gbt_render_evolution check --payload '{}'
PYTHONPATH=src python -m gbt_render_evolution run   --payload '{}'
