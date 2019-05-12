sed 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers > /etc/sudoers
useradd -m -g users -G wheel,storage,power -s /bin/bash urenev
passwd urenev

su urenev

pacman --noconfirm -S xf86-video-fbdev xorg-server xorg-xinit 
