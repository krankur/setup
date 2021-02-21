# Terminal Setup
1. Install Windows Terminal.
2. Create a shortcut of [terminal.bat](https://github.com/krankur/setup/blob/master/windows/terminal.bat) and set the "Shotcut Key" property.
3. Add the following to the Terminal's `powershell.exe` and `cmd.exe` profiles in its `settings.json`:
```
"commandline": "powershell.exe cmd /k \"d:\\workspace\\setup\\windows\\startup.bat\"",
"colorScheme": "Campbell",
"startingDirectory": "W:\\"
```
