# ll-alias - Global Alias Configuration for Linux

A shell script to globally configure the `ll` alias (`ls -l --color=auto`) for all users on Linux systems, including Alpine.


## Features

-  Configures `ll='ls -l --color=auto'` for both `bash` and `ash` shells
-  Applies globally to all users
-  Automatically verifies configuration after setup
-  Works on Alpine Linux and standard distributions


## Security Notice

**NEVER run scripts from the internet without reviewing them first!**  
This script is open source, but always check the code before executing:  
[View source on GitHub](https://github.com/Goobe7/ll-alias-script/blob/main/setup-ll-alias.sh)


## Quick Installation

```bash
# Download, review, then execute
curl -fsSL https://raw.githubusercontent.com/Goobe7/ll-alias-script/main/setup-ll-alias.sh > setup-ll-alias.sh
nano setup-ll-alias.sh  # Review the script content
sudo bash setup-ll-alias.sh
```

```bash
wget https://raw.githubusercontent.com/Goobe7/ll-alias-script/main/setup-ll-alias.sh
chmod +x setup-ll-alias.sh
sudo ./setup-ll-alias.sh
```


```bash
# One-line execution
curl -fsSL https://raw.githubusercontent.com/Goobe7/ll-alias-script/main/setup-ll-alias.sh | sudo bash
```

```bash
# One-line execution
wget -qO- https://raw.githubusercontent.com/Goobe7/ll-alias-script/main/setup-ll-alias.sh | sudo bash
```
