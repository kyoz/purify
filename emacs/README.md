# Emacs
> Purify theme for emacs

<p align="center">
  <img src="https://i.imgur.com/8Mzlkrr.png" width="800px">
</p>

## Installation

- Add the emacs theme files to `~/.emacs.d/themes/` (Create if directory doesn't exist)

- To load a theme add the following to your `init.el`

```
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'purify t)
```

- If you dont want bold text, add this to `init.el`:

```
(set-face-bold-p 'bold nil)
```

## Need help

- I'm not using emacs, this is just a template from [dracula emacs theme](https://github.com/dracula/emacs)

- I'v modified all the color to match purify colors, but syntax is not

- If you are using emacs, please help me to improve this

- Thank you in advance :heart:

## Lisence
MIT © [Kyoz](mailto:banminkyoz@gmail.com)
