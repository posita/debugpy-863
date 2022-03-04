#!/usr/bin/env bash
set -eux -o pipefail
exec python -m debugpy --listen 0.0.0.0:5678 --wait-for-client -m pytest "${@}"
