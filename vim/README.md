# Vim Purify
> Instruction to install purify for vim (neovim)

## Colors

## Installation

## Customize

**Note**: All customize option should be placed before you call `colorscheme
purify`. If not, it'll not have any effects.

### Font formats

By default, Purify will support for italic, bold, underline... You can disable
them if you want.

```
let g:purify_bold = 0        " default: 1
let g:purify_italic = 0      " default: 1
let g:purify_underline = 0   " default: 1
let g:purify_undercurl = 0   " default: 1
let g:purify_inverse = 0     " default: 1
```

**Note**: Those style formats only working if your terminal, your settings,
your fonts support em.

### Overrides colors

```
let g:purify_override_colors = {
    \ 'pink':  { 'gui': '#FF87FF', 'cterm': '213' },
    \ 'green': { 'gui': '#5FD700', 'cterm': '76' }
\ }
```

## Lisence
MIT © [Kyoz](mailto:banminkyoz@gmail.com)
