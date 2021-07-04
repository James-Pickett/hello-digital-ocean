# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.166.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="bionic"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# install tfswitch
RUN curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash && tfswitch --latest

ARG DOCTL_VERSION="1.60.0"
# install digital ocean cli
RUN wget https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz \
    && tar xf doctl-${DOCTL_VERSION}-linux-amd64.tar.gz \
    && mv doctl /usr/local/bin \
    && rm doctl-${DOCTL_VERSION}-linux-amd64.tar.gz

# load bashrc
ADD .bashrc /root/.bashrc
