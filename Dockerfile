# Use the latest version of Arch Linux
FROM archlinux:latest

# Setup environment variables
ENV USERNAME=noel
ENV USER_UID=1000
ENV USER_GID=${USER_UID}

# Install needed packages
RUN pacman -Syu --noconfirm && pacman -Sy --noconfirm sudo git curl neofetch git-lfs

# Setup the user
RUN groupadd -g ${USER_GID} ${USERNAME} && \
  useradd -u ${USER_UID} -g ${USER_GID} -m -s /bin/bash -d /home/${USERNAME} ${USERNAME} && \
  echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
  chown ${USERNAME}:${USERNAME} "/home/${USERNAME}/.bashrc"

# Set workdir to /home/$USERNAME
WORKDIR /home/${USERNAME}

# Configure git-lfs
RUN sudo git lfs install --system
