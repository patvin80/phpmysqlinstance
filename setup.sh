sudo yum update
sudo yum install -y httpd24 php70 mysql56-server php70-mysqlnd
sudo service httpd start
sudo chkconfig httpd on
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo yum install git
cd /var/www
git clone https://github.com/patvin80/phpmysqlinstance.git
cp phpmysqlinstance/mypage.php mypage.php
sudo service mysqld start
/usr/libexec/mysql56/mysqladmin -u root password 'root'
/usr/libexec/mysql56/mysqladmin -u root -h localhost password 'root'
mysql < ./phpmysqlinstance/mysql.sql

