#!/bin/bash

amazon-linux-extras install -y java-openjdk11

cd /usr/local/src/
export JMETER_VERSION=5.3
wget -q https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz
tar -xzf apache-jmeter-$JMETER_VERSION.tgz
mv apache-jmeter-$JMETER_VERSION /usr/local/jmeter 

export JMETER_HOME=/usr/local/jmeter
export PATH=$JMETER_HOME/bin:$PATH
