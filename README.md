# dyzsh theme

Based on astro theme.

## Screenshots

![example](https://raw.githubusercontent.com/daotoyi/picsbed/main//img/202205032138494.png)

## Instuctions

- 1. When an error is executed.
- 2. Prompt turns red.
- 3. Show <font color=#FF0000>✗</font> when working tree not clean.
- 4. Show <font color=#008000>●</font> when working tree clean(after commit).
- 5. Show different username.

## Install

### Clone
```bash
  git clone https://github.com/daotoyi/dyzsh-zsh-theme.git 
```

### Config
- Locate the position

```bash
  cp dyzsh-zsh-theme/dyzsh.zsh-theme ~/.oh-my-zsh/themes
```

- Set the theme variable

Change the variable `ZSH_THEME=dyzsh` in `~/.zshrc`.

- Reload configuration

```bash
  source ~/.zshrc
``` 

