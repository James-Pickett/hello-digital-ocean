# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.166.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="bionic"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# install apt packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    software-properties-common \
    jq

# install github cli
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 \
    && apt-add-repository https://cli.github.com/packages \
    && apt update -y \
    && apt install gh -y --no-install-recommends

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
