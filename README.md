# My shell setup

![My shell setup](./images/wintermfinal.png)

I'm super excited to share with you my awesome shell setup that makes my coding life so much easier and fun! 😍

All you need to do is clone this repo and run appropriate script. It will install everything you need in a snap (excluding terminal and nerd font).

## Windows

Run windows.bat

## Linux

```bash
bash ./linux.sh
```

## Mac

Warning: This script isn't tested! I don't have a mac.

```bash
bash ./mac.sh
```

You need to use one of these terminals: [Supported Terminals](https://github.com/tonsky/FiraCode#terminal-compatibility-list) You also need to use a [nerd font](https://www.nerdfonts.com/font-downloads). Trust me, you will love the icons and glyphs. 😎 Remember to set the nerd font and powershell as your default shell in your terminal. I'm showing setup instruction for Windows Terminal, Hyper and Visual Studio Code Integrated Terminal below.

## Terminal Setup Instruction

I'm using Cascadia Code Nerd Font as example.

### Windows Terminal

Windows Terminal > Click on the arrow > Settings

![Settings in Windows Terminal](./images/wintermstepone.png)

Set PowerShell as default shell and Windows Terminal as default terminal like below.

![PowerShell and Windows Terminal default](./images/wintimesteptwo.png)

Go to Default > Appearance > Set your nerd font as default

Restart terminal

Final Result:

![Final Result of Windows Terminal](./images/wintermfinal.png)

### Hyper

Hyper>Edit>Preferences

![Settings in Hyper](./images/hyperstepone.png)

Add the following to your hyper.js file

```javascript
module.exports = {
  config: {
    // Uncomment below for Linux/Mac
    // shell: '/usr/bin/pwsh',
    // Uncomment below for Windows
    // shell: 'C:\\Program Files\\PowerShell\\7\\pwsh.exe'
    fontFamily: "CaskaydiaCove NF",
    disableLigatures: false,
  },
};
```

Final result:

![Final Result of Hyper](./images/hyperfinal.png)

### Visual Studio Code Integrated Terminal

Click on the gear icon> Settings
![Settings in Vscode](./images/vscodestepone.png)

Click Open settings.json icon.

![settings.json in vscode](./images/vscodesteptwo.png)

Add the following code in your settings.json file.

```json
{
  "terminal.integrated.defaultProfile.windows": "PowerShell",
  "terminal.integrated.defaultProfile.linux": "pwsh",
  "terminal.integrated.defaultProfile.osx": "pwsh",
  "terminal.integrated.shellIntegration.suggestEnabled": true,
  "editor.fontFamily": "CaskaydiaCove NF"
}
```
