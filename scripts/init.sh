#!bin/bash

rm -rf tmp
mkdir tmp
curl https://cloud.google.com/icons/files/google-cloud-icons.zip -o ./tmp/gcp-icons.zip
unzip ./tmp/gcp-icons -d ./tmp/
rsync -a ./tmp/Google\ Cloud\ Icons*/ ../source/official/
curl https://d1.awsstatic.com/webteam/architecture-icons/q2-2021/Asset-Package_04302021.7efed5c84a17020a6ddd81ef1f42e86ccd33a531.zip -o ./tmp/aws-icons.zip
unzip ./tmp/aws-icons -d ./tmp/
rsync -a ./tmp/Asset-Package*/ ../source/official/
rm -rf tmp
./icon-builder.py --create-config-template
mv -f config-template.yml config.yml
./icon-builder.py