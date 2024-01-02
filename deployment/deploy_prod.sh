#!/bin/sh

ssh ubuntu@18.221.189.221 <<EOF
  cd drfblogproject
  git pull
  mkdir poonam
  ./manage.py makemigrations
  ./manage.py migrate  --run-syncdb
  sudo service gunicorn restart
  sudo service nginx restart
  exit
EOF
