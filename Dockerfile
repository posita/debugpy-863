# syntax=docker/dockerfile:1.3-labs
# This ...................... ^^^^^ ... is required for heredoc support. See
# <https://www.docker.com/blog/introduction-to-heredocs-in-dockerfiles/>.

FROM python:3
USER root

RUN <<EOF
    set -eux

    install --verbose --directory --owner=root --group=root --mode=755 \
        /opt/local

    python3 -m venv /opt/local
EOF

ENV PATH "/opt/local/bin:${PATH}"

RUN <<EOF
    set -eux

    /opt/local/bin/pip install --upgrade \
        black \
        debugpy \
        flake8 \
        isort \
        mypy \
        pytest \
        pytest-cov
EOF

CMD bash --login
