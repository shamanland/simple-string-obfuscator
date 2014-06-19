#!/usr/bin/env bash
current=$(pwd)
cd $(dirname $0)
javac SimpleStringObfuscator.java
java SimpleStringObfuscator $1
cd $current
