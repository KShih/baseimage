FROM phusion/baseimage

MAINTAINER KShih <kontonsine@gmail.com>

ENV TERM screen-256color
ENV LC_ALL en_US.UTF-8
ENV HOME /root
ENV XDG_CONFIG_HOME /root/.config

CMD ["/sbin/my_init"]

# apt-fast
RUN add-apt-repository --yes ppa:saiarcot895/myppa \
&& apt-get update \
&& apt-get -y install apt-fast

# apt-get
RUN add-apt-repository --yes ppa:neovim-ppa/unstable \
&& apt-fast update \
&& apt-fast -y upgrade \
&& apt-fast -y install \
   bash-completion \
   git \
   vim \
   wget \
   tmux \
   net-tools \
&& apt-fast clean

# dotfiles
RUN git clone https://github.com/KShih/dotfile.git --depth 1 ~/dotfile \
&& cp ~/dotfile/.vimrc ~/.vimrc \
&& cp ~/dotfile/.tmux.conf ~/.tmux.conf


# vim plugin
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
&& vim +PlugInstall +q +q
