# Alacritty
> Instruction to apply purify colors for alacritty

## Demo

<p align="center">
  <img src="../demo/alacritty.png" width="900px">
</p>

## Installation

To get colors that match with purify colors, edit your `.alacritty.yml` file with these settings:

```
# Normal colors
primary:
  background: '0x313440'
  foreground: '0xFAFAFA'
normal:
  black:   '0x282C34'
  red:     '0xFF6059'
  green:   '0x5FFF87'
  yellow:  '0xFFFF87'
  blue:    '0x5FAFFF'
  magenta: '0xAF87FF'
  cyan:    '0x5FAFFF'
  white:   '0xFFFFFF'

# Bright colors
bright:
  black:   '0x282C34'
  red:     '0xFF6059'
  green:   '0x5FFF87'
  yellow:  '0xFFFF87'
  blue:    '0x5FAFFF'
  magenta: '0xAF87FF'
  cyan:    '0x5FAFFF'
  white:   '0xFFFFFF'
```

After edited, save `.alacritty.yml` file and restart for Alacritty to take effect.

## References

If you are using zsh, please take a look at [purify/zsh](https://github.com/kyoz/purify/tree/master/zsh) to get zsh config for purify.

