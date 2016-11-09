cd /tmp

#try to remove the repo if it already exists

rm -rf docker-turial; true

git clone git@github.com:rolfed/docker-turial.git

cd docker-turial

npm install
npm install -g nodemon
node .
