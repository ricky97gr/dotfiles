FROM ubuntu:latest
WORKDIR /root
RUN apt-get update -y && apt-get install software-properties-common -y && add-apt-repository ppa:neovim-ppa/unstable && apt-get update -y && apt-get install neovim -y && apt-get install -y fd-find && mv /usr/bin/fdfind /usr/bin/fd && apt-get install ripgrep -y && apt install -y tmux && apt-get install git -y && apt install -y build-essential && apt-get install wget -y && apt-get install -y lua5.4 

#RUN wget https://go.dev/dl/go1.14.7.linux-amd64.tar.gz && tar -zxvf https://go.dev/dl/go1.14.7.linux-amd64.tar.gz

RUN git clone https://github.com/ricky97gr/dotfiles.git 
RUN bash  /root/dotfiles/scripts/install.sh
RUN  nvim --headless "+Lazy! sync" +qa
#RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

