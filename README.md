### Windows (Using MSYS2)

Reasons to use *MSYS2*:

- Windows batch script is hard to use.
- *vim* cursor behaves strangely in *nushell* which leads to unreliable behaviour.
- Need to use *gdb* as it is natively supported by *vim*.
- *grep* is not natively supported by Windows.
- Unix terminals are more user friendly.
- Shell script is much easier.
- Can't use Windows Linux Subsystem to develop apps for Windows.

Setup steps:

- Initial setup:
    - Install *MSYS2* [https://www.msys2.org/](https://www.msys2.org/).
    - Clone the [Setup](https://github.com/krankur/setup) repo under *C:\Users\<username>\OneDrive\workspace*.
- Setup *Windows Terminal*:
    - Install *zsh* using *pacman*, *MSYS2*'s default package manager.
    - Follow the steps listed here [https://www.msys2.org/docs/terminals/](https://www.msys2.org/docs/terminals/) to:
        - Create a *UCRT64 / MSYS2* profile.
        - Configure *zsh* as the shell.
        - Set the created profile as the default.
    - Map *CTRL+ALT+T* to launch the terminal.
    - Install *oh-my-zsh* [https://ohmyz.sh/#install](https://ohmyz.sh/#install).
    - Under *MSYS2*'s home directory (*C:\msys64\home\<username>*):
        - Delete the *.zshrc* file if it exists.
        - Run *Windows Command Prompt* with admin rights ("*Run as administrator*").
        - Create a symlink named *.zshrc* to the *unix/zshrc* file under the [Setup](https://github.com/krankur/setup) repo by running `mklink C:\msys64\home\<username>\.zshrc C:\Users\<username>\OneDrive\workspace\setup\unix\zshrc`. **NOTE** that the symlink is being created from *Command Prompt* because in *MSYS2*, the shell script's `ln -s` command creates a copy and not a symlink. Also, PowerShell doesn’t recognize the `mklink` command.
- Setup dev env:
    - Install the following using *pacman*: *vim*, *ctags*, *gcc*, *gdb*, *ripgrep*, *git*. Install the *ucrt64* versions of the apps if available.
    - Under *MSYS2*'s home directory:
        - Create a directory name *vimstate* having *swp*, *bkp* and *undo* sub directories.
        - Delete the *.vim* directory if it exists.
        - Run *Windows Command Prompt* with admin rights ("*Run as administrator*").
        - Create a symlink named *.vim* to the *vim* directory under the [Setup](https://github.com/krankur/setup) repo by running `mklink /D C:\msys64\home\<username>\.vim C:\Users\<username>\OneDrive\workspace\setup\vim`.

