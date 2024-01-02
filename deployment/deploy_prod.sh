#!/bin/sh

ssh ubuntu@18.221.189.221 <<EOF
  cd drfblogproject
  git pull
  source /opt/envs/drfblogproject/bin/activate
  pip install -r requirements.txt
  ./manage.py makemigrations
  ./manage.py migrate  --run-syncdb
  sudo service gunicorn restart
  sudo service nginx restart
  exit
EOF
