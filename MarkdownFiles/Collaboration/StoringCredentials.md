``` shell
git config --global credential.helper cache
# Stores your git credential in cache for 15 mins.
```
1. If you want to store credentials for long term you have these tools at your disposal.
	1. Mac: Keychain
	2. Windows: Windows Credential State
``` shell
git credential-osxkeychain
# To check if keychain is installed on mac.
```
2. If not installed, install it and then run the following command.
``` shell
git config --global credential.helper osxkeychain
```
3. If you are on windows you have to install "Git-Credential-Manager-for-Windows"