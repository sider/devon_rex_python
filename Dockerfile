FROM quay.io/actcat/devon_rex_base:1.1.0

# Install pyenv
RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

ENV PYENV_ROOT /root/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

# Install python 2 and 3
RUN pyenv install 2.7.16 \
  && pyenv install 3.7.3 \
  && pyenv rehash        \
  && pyenv global 3.7.3
