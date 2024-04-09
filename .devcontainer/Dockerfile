FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get -y install curl git libgtk-3.0 libnss3 libdrm-dev libgbm-dev libasound2 sqlite3 mysql-client

USER vscode

RUN git clone https://github.com/nodenv/nodenv.git ~/.nodenv
RUN echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(nodenv init -)"' >> ~/.bashrc

RUN mkdir -p "$HOME/.nodenv"/plugins
RUN git clone https://github.com/nodenv/node-build.git "$HOME/.nodenv"/plugins/node-build

 # Arielのnodeバージョンと揃える
RUN $HOME/.nodenv/bin/nodenv install 18.17.1 
RUN $HOME/.nodenv/bin/nodenv global 18.17.1

RUN curl -sSfL https://assets.path.progate.com/cli-installer/out/setup.sh | bash -s -- -y
