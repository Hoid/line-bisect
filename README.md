# line-bisect

This project allows you to move your cursor in your terminal by bisecting the current command left or right with a single keybinding. Currently the keybinding is set to alt+left arrow and alt+right arrow, which are the ^[[1;3D and ^[[1;3C keystrokes, respectively.

## Installation

Clone this repository into your $ZSH/custom/plugins directory. Then go into your ~/.zshrc file and add the following:

```
plugins=(
    line-bisect  <--- this line, or add the plugins array if you don't have it already
)
```
