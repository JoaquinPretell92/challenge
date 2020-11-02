sudo yum -y update
sudo yum -y install epel-repo
sudo yum -y update
sudo yum -y install ansible
sudo yum -y install nano
sleep 10m 
sudo yum -y install git
cd /home
sudo su
git clone https://github.com/JoaquinPretell92/playbook.git
cd jenkins-installation
ansible-playbook site.yml
