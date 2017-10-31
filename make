#!/bin/sh
rm -rf out
mkdir out
find ./lib -name "*.jar" > out/classpath.txt
javac @sources.txt -classpath "lib/*" -d out/
echo  "Main-Class: com.benjaminlimb.tutorial.infinispan.Main" >./out/manifest.txt
cd out
jar cvfm ../ChatDemo.jar manifest.txt .
cd ../

