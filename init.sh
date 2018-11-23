# Fetch installation package
echo "Downloading Anaconda3..."

wget -c "https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-5.3.0-Linux-x86_64.sh" -O Anaconda3.sh
echo "Begin installation..."
sh ./Anaconda3.sh -b -p $HOME/anaconda3
echo "Setting up ~/.bashrc..."
export PATH="$HOME/anaconda3/bin:$PATH"
echo "PATH=\$HOME/anaconda3/bin:\$PATH" >> ~/.bashrc
echo "Installing Node.js"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc
echo "Setting up mirrors..."
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
python oh-my-tuna.py
npm install -g cnpm --registry=https://registry.npm.taobao.org
pip install -U pip
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
echo "Installing useful packages..."
sudo apt-get update
sudo apt-get install build-essential llvm clang cmake zsh
echo "Change shell to zsh"
chsh -s `which zsh
echo "Oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Deep learning things..."
conda install -y pytorch-nightly-cpu pytorch 
pip install -U tensorflow tensorflow-gpu
