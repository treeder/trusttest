FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Install Flutter
RUN wget https://storage.googleapis.com/flutter_infra/releases/beta/linux/flutter_linux_1.24.0-10.2.pre-beta.tar.xz
RUN tar xf flutter_linux_1.24.0-10.2.pre-beta.tar.xz
ENV PATH "$PATH:/root/flutter/bin"
RUN rm flutter_linux_1.24.0-10.2.pre-beta.tar.xz
RUN flutter channel beta
RUN flutter config --enable-web
# RUN flutter upgrade
# RUN flutter version -y 1.22.0-12.4.pre
