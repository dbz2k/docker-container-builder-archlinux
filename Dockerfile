# Arch Linux with base-devel group
FROM archlinux:base-devel 
# update packages 
RUN pacman -Syu --noconfirm
# install sudo 
RUN pacman -Syu --noconfirm sudo
# install git
RUN pacman -Syu --noconfirm sudo
# create non-root user for building called builduser
RUN useradd -m builduser
# remove non-root user builduser password
RUN passwd -d builduser
# add non-root user builduser to sudo 
RUN echo "builduser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builduser

