### Windows Setup (Using MSYS2)

Reasons to use *MSYS2*:

- Windows batch script is hard to use.
- *vim* cursor behaves strangely in *nushell* which leads to unreliable behaviour.
- Need to use *gdb* as it is natively supported by *vim* (*termdebug*).
- *grep* is not natively supported by Windows.
- Unix terminals are more user friendly.
- Shell script is much easier.
- Can't use Windows Linux Subsystem to develop apps for Windows.

Reasons to use *Neovim* in place of *Vim*:

- Repaint is very slow for even medium sized files in *Vim*. Might switch back to *Vim* if this issue is resolved.

Setup steps:

- Install tools:
    - Install *MSYS2* [https://www.msys2.org/](https://www.msys2.org/).
    - Launch *MSYS2 UCRT64* from Windows menu.
    - Install the following using *pacman -S <package_name>*: *vim*, *neovim*, *ctags*, *cscope*, *gcc*, *gdb*, *ripgrep*, *git*, *unzip*, *zsh* (and *node* if working on a *js* or *ts* project). Install the *ucrt64* versions of the apps if available.  If LSP is required, install *cmake* and *ninja* as well to generate *compile_commands.json*.
    - Install *win32yank* by running the following:
    ```sh
    curl -sLo /tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.1.1/win32yank-x64.zip
    unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
    chmod +x /tmp/win32yank.exe
    mv /tmp/win32yank.exe /usr/local/bin/
    ```
- Setup *git* (This will have to be done both on *Windows* and *MSYS2*):
    - Set global git name and email using `git config --global user.name "<full name>"` and `git config --global user.email "<email id>"`.
    - Use the GitHub account's *personal access token* as password if prompted for it during cloning or pushing. Use GitHub user ID as the username.
    - In case an error occurs saying *"Support for password authentication was removed on August 13, 2021."* during authentication:
        - Go to *GitHub Profile > Settings > Developer Settings > Personal access tokens*.
        - Check the status of the existing token. Setup a new token under if it has expired and use that as the password for authentication.
- Setup workspace:
    - Sync *OneDrive* account which will bring in the *C:\Users\<username>\OneDrive\workspace* directory having the *setup* and other project directories.
    - Create *~/workspace* in *MSYS2*.
- Setup *Windows Terminal*:
    - Follow the steps listed here [https://www.msys2.org/docs/terminals/](https://www.msys2.org/docs/terminals/) to:
        - Create a *UCRT64 / MSYS2* profile.
        - Configure *zsh* as the shell.
        - Set the created profile as the default.
    - Map *CTRL+ALT+T* to launch the terminal.
    - Install *oh-my-zsh* [https://ohmyz.sh/#install](https://ohmyz.sh/#install).
    - Under *MSYS2*'s home directory (*C:\msys64\home\<username>*):
        - Delete the *.zshrc* file if it exists.
        - Run *Windows Command Prompt* with admin rights ("*Run as administrator*").
        - Create a symlink named *.zshrc* to the *unix/zshrc* file under the [setup](https://github.com/krankur/setup) repo by running `mklink C:\msys64\home\<username>\.zshrc C:\Users\<username>\OneDrive\workspace\setup\unix\zshrc`. **NOTE** that the symlink is being created from *Command Prompt* because in *MSYS2*, the shell script's `ln -s` command creates a copy and not a symlink. Also, *PowerShell* doesn’t recognize the `mklink` command.
- Setup *cscope*:
    - Run *Windows Command Prompt* with admin rights ("*Run as administrator*").
    - Create a symlink named *gentags* to the *gentags* directory under the [setup](https://github.com/krankur/setup) repo by running `mklink C:\msys64\usr\local\bin\gentags C:\Users\<username>\OneDrive\workspace\setup\tags\gentags`. Run this script in the PWD to generate the *cscope* db.
- Setup *ctags*:
    - Run *Windows Command Prompt* with admin rights ("*Run as administrator*").
    - Create a symlink named *.ctags* to the *ctags* file under the [setup](https://github.com/krankur/setup) repo by running `mklink C:\msys64\home\<username>\.ctags C:\Users\<username>\OneDrive\workspace\setup\tags\ctags`. Run `ctags -R .` in the PWD to generate the tags.
- Setup *vim* (**Not using**):
    - Go to *MSYS2*'s home directory.
    - Create a directory name *vimstate* having *swp*, *bkp* and *undo* sub directories.
    - Delete the *.vim* directory if it exists.
    - Run *Windows Command Prompt* with admin rights ("*Run as administrator*").
    - Create a symlink named *.vim* to the *vim* directory under the [setup](https://github.com/krankur/setup) repo by running `mklink /D C:\msys64\home\<username>\.vim C:\Users\<username>\OneDrive\workspace\setup\vim`.
- Setup *neovim* (**Currently using**):
    - Run *Windows Command Prompt* with admin rights ("*Run as administrator*").
    - Delete *C:\Users\<username>\AppData\Local\nvim* if it exists.
    - Create a symlink named *nvim* to the *nvim* directory under the [setup](https://github.com/krankur/setup) repo by running `mklink /D C:\Users\<username>\AppData\Local\nvim C:\Users\<username>\OneDrive\workspace\setup\nvim`.

