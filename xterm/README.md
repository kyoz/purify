# XTerm
> Purify theme for XTerm, UXTerm, urxvt terminals

<br>
<p align="center">
  <img src="https://i.imgur.com/dUAlLpP.png" width="700px">
</p>

## Installation

**Note:** This config file work with XTerm, UXTerm, urxvt

```sh
# If you have wget
$ wget https://raw.githubusercontent.com/kyoz/purify/master/xterm/.Xresources -O ~/.Xresources && xrdb -merge ~/.Xresources

# Or if you have curl
$ curl https://raw.githubusercontent.com/kyoz/purify/master/xterm/.Xresources --output ~/.Xresources && xrdb -merge ~/.Xresources
```

Or manually install:

```sh
# Assume you have downloaded `.Xresources` file to ~/
$ xrdb -merge ~/.Xresources
```

## References

If you are using zsh, please take a look at [purify/zsh](https://github.com/kyoz/purify/tree/master/zsh) to get zsh config for purify.

## Lisence
MIT © [Kyoz](mailto:banminkyoz@gmail.com)
