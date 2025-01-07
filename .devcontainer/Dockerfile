FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

SHELL ["/bin/bash", "-c"]

USER vscode

RUN sudo apt-get update && sudo apt-get install -y curl \
    libgtk-3-dev \
    libnotify-dev \
    libnss3 \
    libxss1 \
    libasound2t64 \
    mysql-client \
    unzip

# Progate CLI
RUN curl -sSfL https://assets.path.progate.com/cli-installer/out/setup.sh | bash -s -- -y

# nodenv
RUN git clone https://github.com/nodenv/nodenv.git ~/.nodenv
RUN echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(nodenv init -)"' >> ~/.bashrc
RUN mkdir -p "$HOME/.nodenv"/plugins
RUN git clone https://github.com/nodenv/node-build.git "$HOME/.nodenv"/plugins/node-build

# Ariel の nodeバージョンと揃える
RUN $HOME/.nodenv/bin/nodenv install 18.17.1 
RUN $HOME/.nodenv/bin/nodenv global 18.17.1
