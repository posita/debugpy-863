#!/usr/bin/env bash
set -eux -o pipefail
exec "$( cd "$( dirname "${0}" )" && pwd )/run-without-cov.sh" --cov spam "${@}"
