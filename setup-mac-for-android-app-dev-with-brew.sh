Last login: Tue Feb  8 12:53:01 on console
test@Admins-MBP ~ % cp /Users/setup.brewformula .
test@Admins-MBP ~ % ls
Desktop			Library			Pictures
Documents		Movies			Public
Downloads		Music			setup.brewformula
test@Admins-MBP ~ % chmod +x setup.brewformula 
test@Admins-MBP ~ % ./setup.brewformula 
xcode-select: error: invalid argument '—-install'
Usage: xcode-select [options]

Print or change the path to the active developer directory. This directory
controls which tools are used for the Xcode command line tools (for example, 
xcodebuild) as well as the BSD development commands (such as cc and make).

Options:
  -h, --help                  print this help message and exit
  -p, --print-path            print the path of the active developer directory
  -s <path>, --switch <path>  set the path for the active developer directory
  --install                   open a dialog for installation of the command line developer tools
  -v, --version               print the xcode-select version
  -r, --reset                 reset to the default command line tools path
==> Checking for `sudo` access (which may request your password)...
Sorry, user test may not run sudo on Admins-MBP.
Need sudo access on macOS (e.g. the user test needs to be an Administrator)!
./setup.brewformula: line 12: brew: command not found
./setup.brewformula: line 13: brew: command not found
./setup.brewformula: line 14: brew: command not found
./setup.brewformula: line 15: brew: command not found
./setup.brewformula: line 16: brew: command not found
./setup.brewformula: line 17: brew: command not found
./setup.brewformula: line 18: brew: command not found
./setup.brewformula: line 21: brew: command not found
Cloning Oh My Zsh...
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /Users/test/.oh-my-zsh/.git/
remote: Enumerating objects: 1293, done.
remote: Counting objects: 100% (1293/1293), done.
remote: Compressing objects: 100% (1249/1249), done.
remote: Total 1293 (delta 25), reused 1050 (delta 24), pack-reused 0
Receiving objects: 100% (1293/1293), 1.07 MiB | 6.35 MiB/s, done.
Resolving deltas: 100% (25/25), done.
From https://github.com/ohmyzsh/ohmyzsh
 * [new branch]      master     -> origin/master
Branch 'master' set up to track remote branch 'master' from 'origin'.
Already on 'master'

Looking for an existing zsh config...
Found ~/.zshrc. Backing up to /Users/test/.zshrc.pre-oh-my-zsh
Using the Oh My Zsh template file and adding it to ~/.zshrc.

         __                                     __   
  ____  / /_     ____ ___  __  __   ____  _____/ /_  
 / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ 
/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / 
\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  
                        /____/                       ....is now installed!


Before you scream Oh My Zsh! look over the `.zshrc` file to select plugins, themes, and options.

• Follow us on Twitter: https://twitter.com/ohmyzsh
• Join our Discord community: https://discord.gg/ohmyzsh
• Get stickers, t-shirts, coffee mugs and more: https://shop.planetargon.com/collections/oh-my-zsh

➜  .oh-my-zsh git:(master) cd               
➜  ~ nano setup.brewformula 
➜  ~ sudo rm /Users/setup.brewformula 
Password:
Sorry, try again.
Password:
test is not in the sudoers file.  This incident will be reported.
➜  ~ ls /Users
Shared            admin             pathakashish      setup.brewformula test
➜  ~ cat /Users/setup.brewformula 
# echo '' >> ~/.zshrc

xcode-select —-install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew installed tools get higher precedence
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc

# Install commonly required dev tools for android app development
brew install git
brew tap AdoptOpenJDK/openjdk
brew install adoptopenjdk8
brew install adoptopenjdk11
brew install android-studio
brew install android-sdk
brew install gradle

# Install iterm2 and oh-my-zsh
brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup environment variables in the ~/.zshrc
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

source ~/.zshrc

# Update android-sdk
android update sdk --no-ui
➜  ~ nano setup.brewformula 
➜  ~ mv setup.brewformula 
setup-mac-for-android-app-dev-with-brew.sh
usage: mv [-f | -i | -n] [-v] source target
       mv [-f | -i | -n] [-v] source ... directory
zsh: command not found: setup-mac-for-android-app-dev-with-brew.sh
➜  ~ mv setup.brewformula setup-mac-for-android-app-dev-with-brew.sh
➜  ~ ls
Desktop                                    Library                                    Pictures
Documents                                  Movies                                     Public
Downloads                                  Music                                      setup-mac-for-android-app-dev-with-brew.sh
➜  ~ nano setup-mac-for-android-app-dev-with-brew.sh 

  GNU nano 2.0.6                              File: setup-mac-for-android-app-dev-with-brew.sh                                                                  

#!/bin/zsh

# echo '' >> ~/.zshrc

cd ~

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew installed tools get higher precedence
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc

# Install commonly required dev tools for android app development
brew install git
brew tap AdoptOpenJDK/openjdk
brew install adoptopenjdk8
brew install adoptopenjdk11
brew install android-studio
brew install android-sdk
brew install gradle

# Install iterm2 and oh-my-zsh
brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup environment variables in the ~/.zshrc
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

source ~/.zshrc

# Update android-sdk
android update sdk --no-ui

                                                                       [ Read 51 lines ]
^G Get Help               ^O WriteOut               ^R Read File              ^Y Prev Page              ^K Cut Text               ^C Cur Pos
^X Exit                   ^J Justify                ^W Where Is               ^V Next Page              ^U UnCut Text             ^T To Spell
