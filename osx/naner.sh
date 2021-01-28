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


# Terminal - Use Novel Theme
defaults write com.apple.Terminal "Startup Window Settings" -string "Novel"
defaults write com.apple.Terminal "Default Window Settings" -string "Novel"


# Applications - SublimeText 3 - Change Font Family, Size, Theme, Enable VIM mode and phase
SUBLIME_TEXT3=$(cat <<-EOF
    {
        "always_prompt_for_file_reload": true,
        "bold_folder_labels": true,
        "caret_style": "phase",
        "color_scheme": "Packages/Color Scheme - Default/Twilight.tmTheme",
        "font_face": "Monaco",
        "font_size": 17,
        "highlight_line": true,
        "ignored_packages": [],
        "vintage_start_in_command_mode": true
    }
    EOF
)

echo "${SUBLIME_TEXT3}" > ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
