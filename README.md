# My shell setup

![My shell setup](./images/banner.png)

I'm super excited to share with you my awesome shell setup that makes my coding life so much easier and fun! 😍

All you need to do is clone this repo and run appropriate script. It will install everything you need in a snap (excluding terminal and nerd font).

Features:

- Command Completion with [PSReadLine](https://github.com/PowerShell/PSReadLine) and [PowerType](https://github.com/AnderssonPeter/PowerType)
- Few aliases
- Beautiful Prompt Using [starship](https://starship.rs)
- Icons for `Get-ChildItem` and it's aliases (`dir` or `ls`) using [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)

## Installation

### Windows

Enable `sudo` by going to Settings > System > Advanced

Run windows.bat

### Linux

#### Ubuntu/Linux Mint/Pop OS/KDE Neon

```bash
bash ./ubuntu.sh
```

Note: Only Ubuntu LTS and it's derivatives is supported.

#### Fedora/Alma Linux/RHEL/CentOS/Nobara

```bash
bash ./fedora.sh
```

### Mac

Warning: This script isn't tested! I don't have a mac.

```bash
bash ./mac.sh
```

## Updating

use `git pull` and re-run appropriate script.

## Terminal Setup Instruction

You need to use one of these terminals: [Supported Terminals](https://github.com/tonsky/FiraCode#terminal-compatibility-list) You also need to use a [nerd font](https://www.nerdfonts.com/font-downloads). Trust me, you will love the icons and glyphs. 😎 Remember to set the nerd font and powershell as your default shell in your terminal. I'm showing setup instruction for Windows Terminal, Hyper and Visual Studio Code Integrated Terminal below.
I'm using Cascadia Code Nerd Font as example.

### Windows Terminal

Windows Terminal > Click on the arrow > Settings

![Settings in Windows Terminal](./images/wintermstepone.png)

Set PowerShell as default shell and Windows Terminal as default terminal like below.

![PowerShell and Windows Terminal default](./images/wintimesteptwo.png)

Go to Default > Appearance > Set your nerd font as default

Restart terminal

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
    fontFamily: "CaskaydiaCove Nerd Font Mono",
    disableLigatures: false,
  },
};
```

### Visual Studio Code Integrated Terminal

Click on the gear icon> Settings
![Settings in Vscode](./images/vscodestepone.png)

Click Open settings.json icon.

![settings.json in vscode](./images/vscodesteptwo.png)

Add the following code in your settings.json file.

```jsonc
{
  "terminal.integrated.defaultProfile.windows": "PowerShell",
  "terminal.integrated.defaultProfile.linux": "pwsh",
  "terminal.integrated.defaultProfile.osx": "pwsh",
  "terminal.integrated.windowsUseConptyDll": true,
  "editor.fontFamily": "Cascadia Code, CaskaydiaCove NF, Fira Code, Noto Sans Bengali" // Change fonts if you need to
}
```
