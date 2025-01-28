FROM ubuntu

SHELL [ "/bin/bash", "-c" ]

# Install apt packages
RUN apt-get update && \
  apt-get install -y \
  curl \
  git \
  iproute2 \
  locales \
  sudo \
  tar \
  tzdata \
  wget \
  zsh

# Timezone & Locale
ENV TZ=Asia/Tokyo
RUN locale-gen ja_JP

# TERM
ENV TERM=xterm-256color

# Add general user
ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=2000
ARG GID=2000
ARG PASSWORD=user

RUN groupadd -g $GID $GROUPNAME && \
  useradd -m -s /bin/zsh -u $UID -g $GID -G sudo $USERNAME && \
  echo $USERNAME:$PASSWORD | chpasswd && \
  echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER $USERNAME
WORKDIR /home/$USERNAME/

# Add dotfiles
ARG DOTFILES_DIR=/home/$USERNAME/dotfiles
RUN mkdir -p $DOTFILES_DIR/config
COPY --chown=$USERNAME:$USERNAME config $DOTFILES_DIR/config
COPY --chown=$USERNAME:$USERNAME assets $DOTFILES_DIR/assets
COPY --chown=$USERNAME:$USERNAME install.sh $DOTFILES_DIR
COPY --chown=$USERNAME:$USERNAME Brewfile $DOTFILES_DIR

# Shellenv
ENV SHELL=/bin/zsh
CMD [ "zsh" ]
