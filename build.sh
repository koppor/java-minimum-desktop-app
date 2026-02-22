set -ex

# Remove build directory
rm -rf FooClient/
rm -rf tmp/
mkdir tmp

"$JAVA_HOME/bin/javac" FooClient.java
"$JAVA_HOME/bin/jar" cfe fooclient.jar FooClient FooClient.class
"$JAVA_HOME/bin/jpackage" --type deb --input . --main-jar fooclient.jar --main-class FooClient --verbose --temp tmp/ --resource-dir res/
