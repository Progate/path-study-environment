FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

SHELL ["/bin/bash", "-c"]

USER vscode

RUN sudo apt update && sudo apt install -y libgtk-3-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 chromium-browser 

# Progate CLI
RUN curl -sSfL https://assets.path.progate.com/cli-installer/out/setup.sh | bash -s -- -y

# nodenv
RUN git clone https://github.com/nodenv/nodenv.git ~/.nodenv
RUN echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(nodenv init -)"' >> ~/.bashrc
RUN mkdir -p "$HOME/.nodenv"/plugins
RUN git clone https://github.com/nodenv/node-build.git "$HOME/.nodenv"/plugins/node-build

# Ariel の node バージョンと揃える
RUN $HOME/.nodenv/bin/nodenv install 22.12.0
RUN $HOME/.nodenv/bin/nodenv global 22.12.0

