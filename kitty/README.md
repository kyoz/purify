# Kitty
> Purify theme for Kitty

<p align="center">
  <img src="https://i.imgur.com/9644OVJ.png" width="800px">
</p>

## Installation

Download and copy `purify.conf` to `~/.config/kitty/` folder.

```sh
# If you have wget
$ wget -O ~/.config/kitty/purify.conf https://raw.githubusercontent.com/kyoz/purify/master/kitty/purify.conf

# Or curl
$ curl https://raw.githubusercontent.com/kyoz/purify/master/kitty/purify.conf -o ~/.config/kitty/purify.conf 
```

Then open file `~/.config/kitty/kitty.conf` and include this line to the end of file

```
include purify.conf
```

Restart kitty to apply new colors.

Or if you don't want to use a seperate file to config. Just edit colors in your `~/.config/kitty/kitty.conf` to match colors in [purify.conf](./purify.conf)

## References

If you are using zsh, please take a look at [purify/zsh](https://github.com/kyoz/purify/tree/master/zsh) to get zsh config for purify.

## Lisence
MIT © [Kyoz](mailto:banminkyoz@gmail.com)
