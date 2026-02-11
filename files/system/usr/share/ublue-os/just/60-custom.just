# Regenerate GRUB config
regenerate-grub:
    #!/usr/bin/bash
    source /usr/libexec/boot-remount.sh
    remount_boot_rw
    if [ -d /sys/firmware/efi ]; then
      sudo grub2-mkconfig -o /etc/grub2-efi.cfg
    else
      sudo grub2-mkconfig -o /etc/grub2.cfg
    fi
    remount_boot_ro
