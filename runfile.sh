echo "hello World"
dir='/home/sniperx07'
git config --global user.name "technerrrd"
git config --global user.email "94562196+technerrrd@users.noreply.github.com"
sudo apt-get update -y #packages update
sudo apt-get upgrade -y #packages upgrade
sudo apt dist-upgrade -y
sudo apt clean -y
curl -sSL https://get.docker.com 67 | sh #install docker
sudo usermod -aG docker sniperx07 #enable docker for sniperx07
cd $dir
sudo cp -r $dir/raspberry-pi/docker/ $dir/docker
sudo docker run hello-world 
cd $dir/docker/combined
sudo docker compose up -d
cd $dir/docker/postgres
sudo docker compose up -d
sudo rpi-update #update firmware in the end
sudo reboot #reboot