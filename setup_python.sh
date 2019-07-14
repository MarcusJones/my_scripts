echo ======= Install python3 ========
sudo apt install -y python3
sudo ln /usr/bin/python3 /usr/bin/python

echo ======= Install pip3 ========
sudo apt install -y python3-pip
sudo ln /usr/bin/pip3 /usr/bin/pip

echo ======= Install pyenv ========
#Install pyenv to manage python versions
curl https://pyenv.run | bash
# Add to .bashrc:
export THIS_SHELL=~/.bashrc
# Or, for ZSH:
export THIS_SHELL=~/.zshrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> $THIS_SHELL
echo 'eval "$(pyenv init -)"' >> $THIS_SHELL
echo 'eval "$(pyenv virtualenv-init -)"' >> $THIS_SHELL

echo ======= Install virtualenv ========
pip install --user virtualenv

echo ======= Install conda ========
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh 
bash ~/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
# Now update .bashrc
$HOME/miniconda3/bin/conda init

echo ======= Install pipenv ========
pip install --user pipenv

echo ======= Source .bashrc ========
# Re-source your new configuration
. ./.bashrc

