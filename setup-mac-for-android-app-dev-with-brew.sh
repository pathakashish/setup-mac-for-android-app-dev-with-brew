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

# Install iterm2 and oh-my-zsh
brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup environment variables in the ~/.zshrc
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
echo 'export JAVA_8_HOME="$(/usr/libexec/java_home -v 1.8)"' >> ~/.zshrc
echo 'export JAVA_11_HOME="$(/usr/libexec/java_home -v 11)"' >> ~/.zshrc
echo 'alias java8="export JAVA_HOME=$JAVA_8_HOME"' >> ~/.zshrc
echo 'alias java11="export JAVA_HOME=$JAVA_11_HOME"' >> ~/.zshrc
echo '# Default to Java 11' >> ~/.zshrc
echo 'java11' >> ~/.zshrc
echo 'export ANDROID_HOME=~/Library/Android/sdk' >> ~/.zshrc
echo 'export PATH=$ANDROID_HOME/platform-tools:$PATH' >> ~/.zshrc
echo 'export PATH=$ANDROID_HOME/tools:$PATH' >> ~/.zshrc
echo '/usr/libexec/java_home' >> ~/.zshrc
echo 'export GRADLE_HOME=/usr/local/opt/gradle' >> ~/.zshrc
echo 'export PATH=$GRADLE_HOME/bin:$PATH' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/sbin:$PATH"' >> ~/.zshrc

git clone https://github.com/powerline/fonts.git
cd fonts
pwd
./install.sh
cd ..
rm -fr fonts

echo 'ZSH_THEME="robbyrussell"' >> ~/.zshrc

mkdir -p ~/Library/Android
ln -s /opt/homebrew/share/android-sdk/ ~/Library/Android/sdk
source ~/.zshrc
# Update android-sdk
# sdkmanager --install 'build-tools;29.0.3' 'build-tools;30.0.3' 'build-tools;31.0.0' 'build-tools;32.0.0' 'platform-tools' 'platforms;android-29' 'platforms;android-30' 'platforms;android-31' 'platforms;android-32' 'platforms;android-28' 'tools' 'cmake;3.18.1' 'ndk;23.1.7779620' 'ndk;23.1.7779620'
sdkmanager --install 'build-tools;32.0.0' 'platform-tools' 'cmake;3.18.1' 'ndk;23.1.7779620'

cd ~
pwd
