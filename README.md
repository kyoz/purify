# purify

> oh-my-zsh theme

<p align="center">
  <img src="demo.png" width="800px">
</p>

[Ubuntu demo](demo_ubuntu.png)

## Install

```
$ git clone https://github.com/banminkyoz/purify.git
$ cd purify
$ cp purify.zsh-theme ~/.oh-my-zsh/themes/
```

## Usage

In your `.zshrc`, set `ZSH_THEME="purify"`.

Restart terminal and enjoy.

## Tips

### In the demo screenshot, i do use:

* Iterm2 with oh-my-zsh
* PragmataPro font

You can get bash, git & oh-my-zsh configs, aliases... in [my dotfiles](https://github.com/banminkyoz/dotfiles)

### To have padding in gnome terminal (ubuntu)

Create `gtk.css` file at `~/.config/gtk-3.0`

```
touch ~/.config/gtk-3.0/gtk.css
```

Open `gtk.css` and add these styles:
```
VteTerminal,
TerminalScreen,
vte-terminal {
  padding: 0px 0px 0px 16px;
  -VteTerminal-inner-border: 0px 0px 0px 16px;
}
```

## References
* [Bash colors & formating](https://misc.flogisoft.com/bash/tip_colors_and_formatting)
* [ASCII Art](https://textart4u.blogspot.com/2013/03/one-line-ascii-text-art.html)

## Lisence
MIT © [Kyoz](mailto:banminkyoz@gmail.com)