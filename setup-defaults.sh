# Configures the environment to my liking
# Usually intended to run once on a new machine, but can be run multiple times if necessary

# Disable "Displays have separate Spaces"
# There is an observation that macOS works better and more stable if you disable Displays have separate Spaces. (It’s enabled by default) People report all sorts of weird issues related to focus and performance when this setting is enabled.
# Read more: https://nikitabobko.github.io/AeroSpace/guide#a-note-on-displays-have-separate-spaces
defaults write com.apple.spaces spans-displays -bool false && killall SystemUIServer

# Create ~/.zshenv file
echo "export XDG_CONFIG_HOME=\"\$HOME/.config\"" >> ~/.zshenv
echo "export XDG_DATA_HOME=\"\$XDG_CONFIG_HOME/.local/share\"" >> ~/.zshenv
echo "export XDG_CACHE_HOME=\"\$XDG_CONFIG_HOME/.cache\"" >> ~/.zshenv
echo "export XDG_STATE_HOME=\"\$HOME/.local/state\"" >> ~/.zshenv
echo "export EDITOR=\"nvim\"" >> ~/.zshenv
echo "export VISUAL=\"nvim\"" >> ~/.zshenv
echo "export ZDOTDIR=\"\$XDG_CONFIG_HOME/zsh\"" >> ~/.zshenv
echo "export HISTFILE=\"\$ZDOTDIR/.zhistory\"" >> ~/.zshenv
echo "export HISTSIZE=\"10000\"" >> ~/.zshenv
echo "export SAVEHIST=\"10000\"" >> ~/.zshenv
echo "" >> ~/.zshenv
