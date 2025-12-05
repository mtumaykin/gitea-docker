FROM debian:trixie

LABEL maintainer="Mikhail Tumaykin"
LABEL description="Test ansible docker image for Debian 13"
LABEL version="1.0"
LABEL base_image="debian:trixie"

ENV DEBIAN_FRONTEND=nointeractive \
    ANSIBLE_FORCE_COLOR=true \
    PYTHONUNBUFFERED=1 \
    PATH="/root/.local/bin:${PATH}"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ansible \
    python3 \
    ssh-client \
    && apt-get clean \
    && rm -rff /var/lib/apt/lists/*

RUN ansible --version

WORKDIR /ansible

COPY ansible/ /ansible

COPY --chmod=600 ssh/id_ed25519 /root/.ssh/id_ed25519
COPY --chmod=644 ssh/id_ed25519.pub /root/.ssh/id_ed25519.pub

CMD ["ansible", "--version"]
