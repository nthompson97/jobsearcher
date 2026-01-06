# syntax=docker/dockerfile:1.3.1

FROM dev-environment:latest

# Installation for UV + python environment
# https://docs.astral.sh/uv/getting-started/installation/
# https://docs.astral.sh/uv/getting-started/installation/#shell-autocompletion
ENV UV_VERSION="0.9.21"
RUN curl -LsSf https://astral.sh/uv/$UV_VERSION/install.sh | sh && \
    echo 'eval "$(uv generate-shell-completion bash)"' >> $HOME/.bashrc
