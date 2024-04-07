FROM gitpod/openvscode-server
RUN sudo apt update
RUN sudo apt install curl zsh git python3-dev build-essential openssh-client -y 
RUN sudo chsh -s $(which zsh) $(whoami)
RUN mkdir -p ~/Projects
RUN mkdir -p ~/.ssh
RUN wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3.sh \
    && bash ~/miniconda3.sh -b -p ~/miniconda3 \
    && rm ~/miniconda3.sh
# RUN ~/miniconda3/bin/conda config --set changeps1 False
RUN ~/miniconda3/bin/conda update conda -y
RUN ~/miniconda3/bin/conda init zsh 
ENV PATH ~/miniconda3/bin:$PATH