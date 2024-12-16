# Zsh Configuration

This repository contains configuration files for Zsh, a powerful shell for UNIX-based systems.

## Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/itou-rui/zsh.git ~/.config/zsh
   ```

2. Create a symlink to the main configuration file:

   ```sh
   echo "source $HOME/.config/zsh/config.zsh" > ~/zshrc
   ```

3. Source the configuration:

   ```sh
   source ~/.zshrc
   ```

## Structure

- `config.zsh`: Main configuration file.
- `config-osx.zsh`: macOS specific configurations.
- `config-linux.zsh`: Linux specific configurations.
- `config-windows.zsh`: Windows specific configurations.
- `conf.d/`: Directory for additional configuration files.
- `functions/`: Directory for custom Zsh functions.

## Customization

You can customize your Zsh configuration by editing the files in this repository. For example, to add a new alias, edit `config.zsh`:

```sh
alias ll='ls -la'
```

## Updating

To update your configuration, pull the latest changes from the repository:

```sh
cd ~/.zsh-config
git pull
```
