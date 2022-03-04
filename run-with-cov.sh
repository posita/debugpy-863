#!/usr/bin/env bash
set -eu -o pipefail
exec "$( cd "$( dirname "${0}" )" && pwd )/run-without-cov.sh" --cov spam "${@}"
