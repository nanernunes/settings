# Mouse - Change the Mouse to Unnatural Move
defaults write -g com.apple.swipescrolldirection -bool false


# Keyboard - Shortcuts - Input Source - Next Language to "⌘ + Space"
/usr/libexec/PlistBuddy -c "Set :AppleSymbolicHotKeys:60:value:parameters:2 1048576" ~/Library/Preferences/com.apple.symbolichotkeys.plist

# Keyboard - Shortcuts - Spotlight - Show Spotlight to "^ + Space"
/usr/libexec/PlistBuddy -c "Set :AppleSymbolicHotKeys:64:value:parameters:2 262144" ~/Library/Preferences/com.apple.symbolichotkeys.plist


# Desktop - Change Dock Orientation
defaults write com.apple.dock orientation -string left

# Desktop - Auto-hide the Dock
defaults write com.apple.dock autohide -bool true

# Desktop - Minimize Windows Using Scale Effect
#

# Terminal - Use Novel Theme
defaults write com.apple.Terminal "Startup Window Settings" -string "Novel"
defaults write com.apple.Terminal "Default Window Settings" -string "Novel"


# Applications - Safari - Enable Backspace key as Previous Page
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Applications - SublimeText 3 - Change Font Family, Size, Theme, Enable VIM mode and phase
cp -rf apps/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# Applications - Spectacle - Set the Window Shortcuts
cp -rf apps/Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json

# Applications - Google Chrome - Set as the default Browser
#

# Applications - Spotify - High Bitrate Quality
#

# Applications - Telegram - Change the Chat Wallpaper
#
