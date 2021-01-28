# Settings - User and Groups - Disable Guest login
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText GuestEnabled -bool false


# Reginal Settings - Global
sudo /usr/sbin/systemsetup -settimezone "America/Sao_Paulo" > /dev/null
sudo /usr/sbin/systemsetup -setusingnetworktime on > /dev/null
sudo /usr/sbin/systemsetup -setnetworktimeserver "time.apple.com" > /dev/null
