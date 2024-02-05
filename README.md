# line-bisect

This project allows you to move your cursor in your terminal by bisecting the current command left or right with a single keystroke. Currently the keybinding is set to alt+left arrow and alt+right arrow, which are the ^[[1;3D and ^[[1;3C keycodes, respectively. 

https://github.com/Hoid/line-bisect/assets/15349440/04cf231b-80ed-4202-8402-c0d22641eb9d

## Installation

Clone this repository into your $ZSH/custom/plugins directory. Then go into your ~/.zshrc file and add the following:

```
plugins=(
    line-bisect  <--- this line, or add the plugins array if you don't have it already
)
```

Also, make sure this line comes AFTER the loading of plugins in your .zshrc file, ideally at the very end:

```
source $ZSH/oh-my-zsh.sh
```

## Changing the keybinding

If you want to change that keybinding, you currently would have to change the plugin through the following process.

1. In your terminal, enter the `cat` command, then press the single keystroke you wish to use with the *left bisect*, such as CMD+[, or something similar. This will print out the keycode that gets sent when you press that keystroke. Copy that keycode.
2. Open the line-bisect.plugin.zsh file and change the keycode that comes after the first `bindkey` inside of the quotation marks.
3. Repeat step 1 for the *right bisect* keystroke.
4. In line-bisect.plugin.zsh, change the keycode that comes after the second `bindkey` inside the quotation marks.
5. Save line-bisect.plugin.zsh and restart ZSH. Make sure you have the line-bisect plugin included in your plugin array in the `.zshrc` file!



