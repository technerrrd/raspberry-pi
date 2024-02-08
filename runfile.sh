echo "hello World"
git config --global user.name "technerd"
git config --global user.email "mathuranirudh1998@gmail.com"
sudo apt-get update -y #packages update
sudo apt-get upgrade -y #packages upgrade
sudo apt dist-upgrade -y
sudo apt clean -y
curl -sSL https://get.docker.com 67 | sh #install docker
sudo usermod -aG docker sniperx07 #enable docker for sniperx07
sudo systemctl enable docker
cd ~
cp -r ~/raspberry-pi/docker ~/docker
sudo docker run hello-world 
cd ~/docker/combined
sudo docker compose up -d
sudo rpi-update -y #update firmware in the end
sudo reboot#reboot