echo "**** Setting up Python 3 Django Ubuntu environment..."
echo "**** Starting with the update..."
apt-get update >/dev/null 2>&1

echo "**** Installing some basic pre-reqs..."
apt-get install -y software-properties-common curl

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

echo "**** Adding Node..."
apt-get install -y nodejs

echo "**** Adding PostgreSQL..."
apt-get install postgresql-common
apt-get install postgresql-9.5 libpq-dev
sudo -u postgres createuser --superuser vagrant

echo "**** Installing Python 3.5.2..."
apt-get install -y python 3.5.2

echo "**** Installing Python 3 Pip..."
apt-get install -y python3-pip

echo "**** Installing Django..."
# apt-get install -y python-django
pip3 install django

echo "**** Installing htop ..."
apt-get install -y htop

echo "**** Remove excess"
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

echo "**** AND I THINK I AM DONE! :)"