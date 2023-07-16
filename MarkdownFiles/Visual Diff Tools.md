1. Most popular ones include KDiff3 and P4Merge.
2. You can also use WinMerge (Only if using windows).
3. VSCode can also be used as a diff tool.
4. To set VSCode as the default diff tool use the following command.
``` shell
git config --global diff.tool vscode
```
5. After setting the default tool you also need to configure how to start diff tools, use the below command with the mentioned flags.
``` shell
git config --global difftool.vscode.cmd "code --wait --diff $LOCAL $REMOTE"
# We are running the diff tool using command line.
# We will use the code command to start diff tools.
# --wait flag waits for use to make changes and close the file.
# --diff defines we are trying to find the differences.
# $LOCAL and $REMOTE define the files to be changed as arguments.
```
6. Make sure to check these setting by git config --global -e, for me the $LOCAL and $REMOTE arguments were lost for some reason.
7. Now you can launch code as difftool with the following command
``` shell
git difftool
```
8. You might face some issues when running this because for Xcode error.
``` shell
[Output]
xcode-select: error: tool 'opendiff' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance
```
9. What this means is that xcode is not set properly in the system, install or update it.