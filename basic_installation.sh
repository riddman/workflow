
## sublime 3
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu sublime-text

## docker
sudo pacman -S docker
sudo pacman -S ncdu
# Then you need reboot system
sudo systemctl start docker
sudo systemctl enable docker
sudo docker version
sudo usermod -aG docker $USER
sudo curl -L "https://github.com/docker/compose/releases/download/v2.19.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#sudo curl -SL https://github.com/docker/compose/releases/download/v2.19.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

## nvm
# https://github.com/nvm-sh/nvm#verify-installation
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04


