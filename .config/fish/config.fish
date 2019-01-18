# Android
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $ANDROID_HOME/tools $PATH
set -x PATH $ANDROID_HOME/tools/bin $PATH
set -x PATH $ANDROID_HOME/platform-tools $PATH
set -x PATH $ANDROID_HOME/emulator $PATH

# Java
set -x JAVA_HOME (/usr/libexec/java_home -v "1.8")
set -x PATH $JAVA_HOME/bin $PATH

# Flutter
set -x PATH $HOME/development/flutter/bin $PATH

# Go
set -x GOPATH $HOME/go

# Composer
set -x PATH $HOME/.composer/vendor/bin/ $PATH
