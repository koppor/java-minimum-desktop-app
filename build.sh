set -ex

# Remove build directory
rm -rf FooClient/

"$JAVA_HOME/bin/javac" FooClient.java
"$JAVA_HOME/bin/jar" cfe fooclient.jar FooClient FooClient.class
"$JAVA_HOME/bin/jpackage" --type app-image --input . --main-jar fooclient.jar --main-class FooClient --verbose
