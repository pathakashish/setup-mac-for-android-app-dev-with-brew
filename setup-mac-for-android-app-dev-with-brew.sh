#!/bin/zsh

# echo '' >> ~/.zshrc

cd ~
pwd

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install commonly required dev tools for android app development
brew install git
brew tap AdoptOpenJDK/openjdk
brew install adoptopenjdk8
brew install adoptopenjdk11
brew install android-studio
brew install android-sdk
brew install gradle
brew install gpg

# Setup environment variables in the ~/.zprofile
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zprofile
echo 'export JAVA_8_HOME="$(/usr/libexec/java_home -v 1.8)"' >> ~/.zprofile
echo 'export JAVA_11_HOME="$(/usr/libexec/java_home -v 11)"' >> ~/.zprofile
echo 'alias java8="export JAVA_HOME=$JAVA_8_HOME"' >> ~/.zprofile
echo 'alias java11="export JAVA_HOME=$JAVA_11_HOME"' >> ~/.zprofile
echo '# Default to Java 11' >> ~/.zprofile
echo 'java11' >> ~/.zprofile
echo 'export ANDROID_HOME=~/Library/Android/sdk' >> ~/.zprofile
echo 'export PATH=$ANDROID_HOME/platform-tools:$PATH' >> ~/.zprofile
echo 'export PATH=$ANDROID_HOME/tools:$PATH' >> ~/.zprofile
echo '/usr/libexec/java_home' >> ~/.zprofile
echo 'export GRADLE_HOME=/usr/local/opt/gradle' >> ~/.zprofile
echo 'export PATH=$GRADLE_HOME/bin:$PATH' >> ~/.zprofile
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zprofile
echo 'export PATH="/opt/homebrew/sbin:$PATH"' >> ~/.zprofile
echo 'ZSH_THEME="robbyrussell"' >> ~/.zprofile

mkdir -p ~/Library/Android
ln -s /opt/homebrew/share/android-sdk/ ~/Library/Android/sdk
source ~/.zprofile

# Update android-sdk
java8
# sdkmanager --install 'build-tools;29.0.3' 'build-tools;30.0.3' 'build-tools;31.0.0' 'build-tools;32.0.0' 'platform-tools' 'platforms;android-29' 'platforms;android-30' 'platforms;android-31' 'platforms;android-32' 'platforms;android-28' 'tools' 'cmake;3.18.1' 'ndk;23.1.7779620' 'ndk;23.1.7779620' 'cmdline-tools;latest'
sdkmanager --install 'build-tools;32.0.0' 'platform-tools' 'cmake;3.18.1'
java11

# Install iterm2 and oh-my-zsh
brew install --cask iterm2

git clone https://github.com/powerline/fonts.git
cd fonts
pwd
./install.sh
cd ..
rm -fr fonts

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Done!!!"
