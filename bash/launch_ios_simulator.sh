# 1. from Spotlight (command + space)
# /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app

# 2. from terminal (default)
# open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app

# 3. from terminal (specific model with xcrun simctl list)
# reference: https://stackoverflow.com/questions/31179706/how-can-i-launch-the-ios-simulator-from-terminal
#            https://nshipster.com/simctl/
#            https://medium.com/xcblog/simctl-control-ios-simulators-from-command-line-78b9006a20dc
# /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator -CurrentDeviceUDID $(xcrun simctl list | grep "iPhone 6" | grep -E -o -i -m 1 "([0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12})")

# 4. script accept parameter (e.g. iPhone 6) and launch the simulator
# usage: sh launch_ios_simulator.sh "iPhone 6"
# remarks: this script cannot simultaneously open 2 different simulator at a time
/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator -CurrentDeviceUDID $(xcrun simctl list | grep "$1" | grep -E -o -i -m 1 "([0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12})")

