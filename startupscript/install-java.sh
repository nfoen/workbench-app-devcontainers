#!/bin/bash

# install-java.sh
#
# Creates a soft link in /usr/bin to the java runtime.
#
# Note that this script is intended to be source from the "post-startup.sh" script
# and is dependent on java packages already installed in the container image or as 
# a devcontainer feature (ghcr.io/devcontainers/features/java:1).

ln -sf "$(which java)" "/usr/bin"
chown --no-dereference "${user}" "/usr/bin/java"
