# WGET COM AGENT DE SAO PAULO
wget https://s3.sa-east-1.amazonaws.com/amazoncloudwatch-agent-us-west-2/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb 
# INSTALACAO DO AGENT
dpkg -i -E ./amazon-cloudwatch-agent.deb 
cd /opt/aws/amazon-cloudwatch-agent/bin 
# BAIXAR SCRIPT DE COLETA (BASICO) PARA LINUX
wget https://raw.githubusercontent.com/juanmichael00/cloudwatch_ubuntu18/main/config.json 
cd /opt/aws/amazon-cloudwatch-agent/etc/ 
cp -av ../bin/config.json amazon-cloudwatch-agent.json 
mkdir -p /usr/share/collectd/ 
touch /usr/share/collectd/types.db 
sudo sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s 
systemctl enable amazon-cloudwatch-agent 
systemctl status amazon-cloudwatch-agent
