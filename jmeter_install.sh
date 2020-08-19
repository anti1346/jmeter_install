#!/bin/bash

amazon-linux-extras install -y java-openjdk11
java -version

cd /usr/local/src/
export JMETER_VERSION=5.3
wget -q https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz
tar -xzf apache-jmeter-$JMETER_VERSION.tgz
mv apache-jmeter-$JMETER_VERSION /usr/local/jmeter 

export JMETER_HOME=/usr/local/jmeter
export PATH=$JMETER_HOME/bin:$PATH

jmeter -v

##부하 테스트 명령어
#jmeter -n -f -t www_testplan.jmx -l www_log.jtl -e -o www-report

##결과 웹페이지
#docker run -d -v /usr/local/jmeter/bin/www-report:/usr/share/nginx/html -p 80:80 --name nginx nginx
