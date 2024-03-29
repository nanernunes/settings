# Finder - Show File extensions
defaults write -g AppleShowAllExtensions -bool true

# Finder - Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder - Disable .DS_Store File Creation
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Finder - Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder - Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder - Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false


# Desktop - Menu bar - Add Battery, Bluetooth and Other icons
defaults write com.apple.systemuiserver menuExtras -array     \
    "/System/Library/CoreServices/Menu Extras/Battery.menu"   \
    "/System/Library/CoreServices/Menu Extras/Clock.menu"     \
    "/System/Library/CoreServices/Menu Extras/Volume.menu"    \
    "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
    "/System/Library/CoreServices/Menu Extras/Displays.menu"  \
    "/System/Library/CoreServices/Menu Extras/User.menu"

# Desktop - Menu bar - Show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -bool true


# Settings - Screen Saver - Require password after sleep/screen saver
defaults write com.apple.screensaver askForPassword -bool true

# Settings - Screen Saver - Require the password immediately



# Trackpad - Tap to Click
defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -bool false

# Trackpad - Disable Force Click Context Menu
defaults write NSGlobalDomain com.apple.trackpad.forceClick -bool false

# Trackpad: Enable right click with two fingers
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true


# Keyboard - Key Repeat (default 2 - 30ms)
defaults write -g KeyRepeat -int 2

# Keyboard - Initial Repeat (default 15 - 225ms)
defaults write -g InitialKeyRepeat -int 15

# Keyboard - Automatically switch to a document's input source
defaults write com.apple.HIToolbox AppleGlobalTextInputProperties TextInputGlobalPropertyPerContextInput -bool true

# Keyboard - Disables auto capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Keyboard - Disables "smart" dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Keyboard - Disables automatic period substitutions
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Keyboard - Disables smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Keyboard - Disable AutoCorrect
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Keyboard - Disable Hold Key and Suggestions
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Keyboard - Enable Dialog Controls with Tabs
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2


# Regional Settings - Account
defaults write NSGlobalDomain AppleLanguages -array "en-US" "pt"
defaults write NSGlobalDomain AppleLocale -string "en_US"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleTemperatureUnit -string "Celsius"
defaults write NSGlobalDomain AppleICUForce12HourTime -bool false
