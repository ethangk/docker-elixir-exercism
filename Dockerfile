FROM elixir
RUN wget https://github.com/exercism/cli/releases/download/v2.3.0/exercism-linux-64bit.tgz
RUN tar -xzvf exercism-linux-64bit.tgz
RUN mkdir ~/bin
RUN mv exercism ~/bin/
RUN export PATH=$HOME/bin:$PATH
RUN echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
