sudo apt update

# Install python3, and link to the python command
sudo apt install -y python3
sudo ln /usr/bin/python3 /usr/bin/python

#Install pip3 and link
sudo apt install -y python3-pip
sudo ln /usr/bin/pip3 /usr/bin/pip

#Install pyenv to manage python versions
curl https://pyenv.run | bash
# Add to .bashrc:
echo 'export PATH="/home/ubuntu/.pyenv/bin:$PATH"' >>~/.bashrc
echo 'eval "$(pyenv init -)"' >>~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >>~/.bashrc

# Install virtualenv
pip install --user virtualenv

# Install MiniConda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh 
bash ~/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
# Now update .bashrc
$HOME/miniconda3/bin/conda init

# Install Pipenv
pip install --user pipenv
