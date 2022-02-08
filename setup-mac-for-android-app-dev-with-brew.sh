#!/bin/zsh

# echo '' >> ~/.zshrc

cd ~

spwan zsh {

  # Install homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
  ech 'export PATH=$GRADLE_HOME/bin:$PATH' >> ~/.zshrc

  git clone https://github.com/powerline/fonts.git
  cd fonts
  sh -c install.sh
  cd ..
  rm -fr fonts

  echo 'ZSH_THEME="robbyrussell"' >> ~/.zshrc
  
  mkdir -p ~/Library/Android
  ln /usr/local/share/android-sdk ~/Library/Android/sdk
}
source ~/.zshrc
# Update android-sdk
android update sdk --no-ui
