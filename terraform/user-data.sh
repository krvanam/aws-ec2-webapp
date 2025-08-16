#!/bin/bash
yum update -y
amazon-linux-extras install python3.8 -y
yum install -y python3-pip git

# Clone app repo (replace with your GitHub repo)
cd /home/ec2-user
git clone https://github.com/krvanam/aws-ec2-simple-webapp.git
cd aws-ec2-simple-webapp/app

pip3 install -r requirements.txt

# Run Flask app
nohup python3 app.py > app.log 2>&1 &

