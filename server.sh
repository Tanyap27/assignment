# Add users and set up SSH keys
sudo adduser --disabled-password --gecos "" phrase_admin
sudo adduser --disabled-password --gecos "" phrase_user
sudo usermod -aG sudo phrase_admin

sudo mkdir -p /phrase_admin/.ssh
sudo mkdir -p /phrase_user/.ssh

sudo cp phrase_admin.pub /phrase_admin/.ssh/authorized_keys
sudo cp phrase_user.pub /phrase_user/.ssh/authorized_keys

sudo chown -R phrase_admin:phrase_admin /phrase_admin/.ssh
sudo chown -R phrase_user:phrase_user /phrase_user/.ssh

# Install basic packages
sudo apt-get update
sudo apt-get install -y curl jq vim
