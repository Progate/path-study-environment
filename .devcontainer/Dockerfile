FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# SHELL ["/bin/bash", "-c"]

RUN sudo apt update && sudo apt -y install curl git libffi-dev libgtk-3.0 libnss3 libdrm-dev libgbm-dev libasound2 libyaml-dev sqlite3 mysql-client

USER vscode

# progate cli
RUN curl -sSfL https://assets.path.progate.com/cli-installer/out/setup.sh | bash -s -- -y

# node
RUN git clone https://github.com/nodenv/nodenv.git ~/.nodenv
RUN echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(nodenv init -)"' >> ~/.bashrc
RUN mkdir -p "$HOME/.nodenv"/plugins
RUN git clone https://github.com/nodenv/node-build.git "$HOME/.nodenv"/plugins/node-build
RUN $HOME/.nodenv/bin/nodenv install 20.12.2
RUN $HOME/.nodenv/bin/nodenv global 20.12.2

# python
RUN curl https://pyenv.run | bash
RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc
RUN $HOME/.pyenv/bin/pyenv install 3.12.5
RUN $HOME/.pyenv/bin/pyenv global 3.12.5
RUN $HOME/.pyenv/shims/pip install pipenv

# ruby
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
RUN $HOME/.rbenv/bin/rbenv install 3.3.4
RUN $HOME/.rbenv/bin/rbenv global 3.3.4

# go
RUN wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && rm go1.23.0.linux-amd64.tar.gz
RUN echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

