# 1. list the emulator name:
emulator -list-avds
# expected output: Nexus_5X_API_28_x86

# 2. run the emulator
emulator -avd Nexus_5X_API_28_x86

# 3. one line command (assume you have only one emulator)
emulator -avd $(emulator -list-avds)

# possible improvement:
# 1. https://stackoverflow.com/questions/13624774/how-to-i-read-the-second-line-of-the-output-of-a-command-into-a-bash-variable
# 2. https://www.maketecheasier.com/run-bash-commands-background-linux/