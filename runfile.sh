echo "hello World"
username='sniperx07'
dir='/home/$username'
git config --global user.name "technerrrd"
git config --global user.email "94562196+technerrrd@users.noreply.github.com"
sudo apt-get update -y #packages update
sudo apt-get upgrade -y #packages upgrade
sudo apt dist-upgrade -y
sudo apt clean -y
sudo chmod -R 0750 /mount/sandisk
chown -R www-data:www-data /mount/sandisk
curl -sSL https://get.docker.com 67 | sh #install docker
sudo usermod -aG docker $username #enable docker for sniperx07
cd $dir
sudo cp -r $dir/raspberry-pi/docker/ $dir/docker
sudo docker run hello-world 
cd $dir/docker/combined
sudo docker compose --env-file details.env up -d
cd $dir/docker/postgres
sudo docker compose up -d
sudo rpi-update #update firmware in the end
sudo reboot #reboot