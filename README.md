# azhuzhu-zsh-theme

A customizable Zsh theme for enhanced terminal experience based on [Oh My Zsh](https://ohmyz.sh/).

> **Note**: This theme requires [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) to be installed first.

## Installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Roland0511/azhuzhu-zsh-theme/main/install.sh)"
```

## Usage

Set the theme in your `.zshrc`:

```zsh
ZSH_THEME="azhuzhu"
```

Then restart your terminal or run `source ~/.zshrc`.

## Uninstall

To uninstall the theme, you can use the uninstall script:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Roland0511/azhuzhu-zsh-theme/main/uninstall.sh)"
```

Or manually:

1. Change your theme in `.zshrc` to another theme:
   ```zsh
   ZSH_THEME="robbyrussell"  # or any other theme
   ```

2. Remove the theme file:
   ```bash
   rm ~/.oh-my-zsh/themes/azhuzhu.zsh-theme
   ```

3. Restart your terminal or run `source ~/.zshrc`.

## License

MIT License