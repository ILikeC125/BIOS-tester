#repository Yeah so this is just a simple lil "OS" bootloader to test if your computer has BIOS/CSM/Legacy boot capabilities. How to use: Step 1: Since this isnt like an MS bootloader, you will need to turn OFF secure boot. BE CAREFUL WITH THIS, if you have had malware on your computer at all, I dont recommend turning off secure boot because malware might boot itelf. Your choice, this ISNT malware.

Step 2: Flash tester.bin to your USB/extra bootable device. THIS WILL ERASE ANY CONTENTS ON THE USB!! On Windows, you can use Rufus to do this, idk what else from there, been a while since I used Windows. On Linux, or at least Arch Linux idk about the rest, can can run: sudo dd if=tester.bin of=/dev/sdX bs=512 status=progress oflag=sync . Replace sdX with your actual device, DO NOT flash to a partition, go to whole device. Once finished, sync disks(sync on Linux) and then unplug it from your computer. Do not plug in your USB again yet.

Step 3: Once you have secure boot off, find CSM, Legacy boot, etc and turn it ON. Save changes. DO NOT click save and quit, just click save. Once saved, turn off computer.

Step 4: While computer is OFF, plug in your USB, turn computer on, get into firmware, and its usually in the same place where you save, find your USB in boot ovverride, and boot it. If successful, it should print a W. If that doesnt happen, shut down using the power button, and boot back into firmware. If CSM is still on, well idk what to tell you. Maybe it didnt boot right, my code should be correct but its made by a human, we all make mistakes so yeah.

WARNING!!: Some UEFIs REQUIRE an admin password to turn off secure boot so you might be in and out of firmware a lot. Also, who else thinks firmware
vendors should bring back legacy boot?
