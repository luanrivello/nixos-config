 nexus  dareggon  nixos-config  main [ 󱈎 ]
陰⫸ systemd-analyze
Startup finished in 7.553s (firmware) + 496ms (loader) + 551ms (kernel) + 5.996s (initrd) + 4.876s (userspace) = 19.474s
graphical.target reached after 4.876s in userspace.

 nexus  dareggon  nixos-config  main [ 󱈎 ]
陰⫸ systemd-analyze critical-chain
The time when unit became active or started is printed after the "@" character.
The time the unit took to start is printed after the "+" character.

graphical.target @4.876s
└─greetd.service @4.876s
  └─systemd-user-sessions.service @4.854s +19ms
    └─home-manager-dareggon.service @4.347s +506ms
      └─basic.target @4.329s
        └─dbus-broker.service @4.270s +58ms
          └─dbus.socket @4.263s +101us
            └─sysinit.target @4.247s
              └─systemd-update-utmp.service @4.180s +18ms
                └─systemd-tmpfiles-setup.service @4.156s +21ms
                  └─local-fs.target @4.150s
                    └─boot.mount @4.121s +27ms
                      └─systemd-fsck@dev-disk-by\x2duuid-C44A\x2d31FD.service @1.325s +51ms
                        └─dev-disk-by\x2duuid-C44A\x2d31FD.device

 nexus  dareggon  nixos-config  main [⇡ 󱈎 󰱽 ]
陰⫸ systemd-analyze critical-chain boot.mount
The time when unit became active or started is printed after the "@" character.
The time the unit took to start is printed after the "+" character.

boot.mount +27ms
└─systemd-fsck@dev-disk-by\x2duuid-C44A\x2d31FD.service @1.325s +51ms
  └─dev-disk-by\x2duuid-C44A\x2d31FD.device

 nexus  dareggon  nixos-config  main [ 󱈎 ]
陰⫸ systemd-analyze blame
6.588s sys-devices-virtual-dmi-id.device
6.555s dev-tpm0.device
6.555s sys-devices-platform-MSFT0101:00-tpm-tpm0.device
6.465s sys-devices-platform-MSFT0101:00-tpmrm-tpmrm0.device
6.465s dev-tpmrm0.device
2.202s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart2.device
2.202s dev-disk-by\x2duuid-fdcf9abe\x2df568\x2d453a\x2dac2e\x2d9201fddd61b9.device
2.202s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1\x2dpart2.device
2.202s dev-disk-by\x2dlabel-root.device
2.202s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2duuid-fdcf9abe\x2df568\x2d453a\x2dac2e\x2d9201fddd61b9.d>
2.202s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dlabel-root.device
2.202s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartnum-2.device
2.202s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartuuid-acfc1a2d\x2d9b82\x2d47c7\x2d8f4c\x2d77740c64d8>
2.202s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartlabel-root.device
2.202s dev-disk-by\x2did-ata\x2dSamsung_SSD_860_EVO_250GB_S3YHNX0KC21878B\x2dpart2.device
2.202s dev-disk-by\x2dpartuuid-acfc1a2d\x2d9b82\x2d47c7\x2d8f4c\x2d77740c64d81f.device
2.202s dev-sda2.device
2.202s dev-disk-by\x2dpartlabel-root.device
2.202s dev-disk-by\x2did-wwn\x2d0x5002538e40b6f3ef\x2dpart2.device
2.202s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata1-host0-target0:0:0-0:0:0:0-block-sda-sda2.device
2.202s dev-disk-by\x2ddiskseq-1\x2dpart2.device
2.184s dev-disk-by\x2duuid-C44A\x2d31FD.device
2.184s dev-disk-by\x2did-ata\x2dSamsung_SSD_860_EVO_250GB_S3YHNX0KC21878B\x2dpart1.device
2.184s dev-disk-by\x2ddiskseq-1\x2dpart1.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1\x2dpart1.device
2.184s dev-disk-by\x2dpartlabel-EFI.device
2.184s dev-disk-by\x2ddesignator-esp.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart1.device
2.184s dev-sda1.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2duuid-C44A\x2d31FD.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartnum-1.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartlabel-EFI.device
2.184s dev-disk-by\x2dpartuuid-9969340d\x2d64d8\x2d416f\x2dbdc6\x2db0d369a8131b.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartuuid-9969340d\x2d64d8\x2d416f\x2dbdc6\x2db0d369a813>
2.184s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata1-host0-target0:0:0-0:0:0:0-block-sda-sda1.device
2.184s dev-disk-by\x2did-wwn\x2d0x5002538e40b6f3ef\x2dpart1.device
2.184s dev-disk-by\x2did-ata\x2dSamsung_SSD_860_EVO_250GB_S3YHNX0KC21878B\x2dpart3.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartnum-3.device
2.184s dev-disk-by\x2dpartuuid-4626cc61\x2def88\x2d4b46\x2dba3f\x2d1d64d7194ec8.device
2.184s dev-disk-by\x2duuid-fb1d1561\x2d8173\x2d4196\x2d869b\x2d0994cd75b489.device
2.184s dev-sda3.device
2.184s dev-disk-by\x2did-wwn\x2d0x5002538e40b6f3ef\x2dpart3.device
2.184s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata1-host0-target0:0:0-0:0:0:0-block-sda-sda3.device
2.184s dev-disk-by\x2dlabel-swap.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2duuid-fb1d1561\x2d8173\x2d4196\x2d869b\x2d0994cd75b489.d>
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dlabel-swap.device
2.184s dev-disk-by\x2ddesignator-swap.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1\x2dpart3.device
2.184s dev-disk-by\x2ddiskseq-1\x2dpart3.device
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartuuid-4626cc61\x2def88\x2d4b46\x2dba3f\x2d1d64d7194e>
2.184s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart3.device
2.176s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2\x2dpart3.device
2.176s dev-sdb3.device
2.176s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartuuid-02235f9f\x2d03.device
2.176s dev-disk-by\x2did-wwn\x2d0x5001b448bb90a253\x2dpart3.device
2.176s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart3.device
2.176s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2duuid-8C5C79945C7979B2.device
2.176s dev-disk-by\x2did-ata\x2dSanDisk_SSD_PLUS_120GB_2032A1804973\x2dpart3.device
2.176s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartnum-3.device
2.176s dev-disk-by\x2ddiskseq-2\x2dpart3.device
2.176s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata2-host1-target1:0:0-1:0:0:0-block-sdb-sdb3.device
2.176s dev-disk-by\x2duuid-8C5C79945C7979B2.device
2.176s dev-disk-by\x2dpartuuid-02235f9f\x2d03.device
2.169s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartnum-2.device
2.169s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2duuid-509CFC1B9CFBF974.device
2.169s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart2.device
2.169s dev-disk-by\x2duuid-509CFC1B9CFBF974.device
2.169s dev-disk-by\x2did-ata\x2dSanDisk_SSD_PLUS_120GB_2032A1804973\x2dpart2.device
2.169s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2\x2dpart2.device
2.169s dev-disk-by\x2dlabel-Windows.device
2.169s dev-disk-by\x2did-wwn\x2d0x5001b448bb90a253\x2dpart2.device
2.169s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata2-host1-target1:0:0-1:0:0:0-block-sdb-sdb2.device
2.169s dev-disk-by\x2dpartuuid-02235f9f\x2d02.device
2.169s dev-disk-by\x2ddiskseq-2\x2dpart2.device
2.169s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dlabel-Windows.device
2.169s dev-sdb2.device
2.169s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartuuid-02235f9f\x2d02.device
2.167s dev-disk-by\x2dpartuuid-02235f9f\x2d01.device
2.167s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartuuid-02235f9f\x2d01.device
2.167s dev-disk-by\x2did-wwn\x2d0x5001b448bb90a253\x2dpart1.device
2.167s dev-disk-by\x2ddiskseq-2\x2dpart1.device
2.167s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartnum-1.device
2.167s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dlabel-System\x5cx20Reserved.device
2.167s dev-disk-by\x2duuid-A8EEEF3AEEEF0004.device
2.167s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2duuid-A8EEEF3AEEEF0004.device
2.167s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata2-host1-target1:0:0-1:0:0:0-block-sdb-sdb1.device
2.167s dev-disk-by\x2did-ata\x2dSanDisk_SSD_PLUS_120GB_2032A1804973\x2dpart1.device
2.167s dev-sdb1.device
2.167s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart1.device
2.167s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2\x2dpart1.device
2.167s dev-disk-by\x2dlabel-System\x5cx20Reserved.device
2.139s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.device
2.139s dev-disk-by\x2ddiskseq-1.device
2.139s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata1-host0-target0:0:0-0:0:0:0-block-sda.device
2.139s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0.device
2.139s dev-disk-by\x2did-ata\x2dSamsung_SSD_860_EVO_250GB_S3YHNX0KC21878B.device
2.139s dev-sda.device
2.139s dev-disk-by\x2did-wwn\x2d0x5002538e40b6f3ef.device
2.115s dev-disk-by\x2ddiskseq-2.device
2.115s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0.device
2.115s dev-disk-by\x2did-wwn\x2d0x5001b448bb90a253.device
2.115s dev-disk-by\x2did-ata\x2dSanDisk_SSD_PLUS_120GB_2032A1804973.device
2.115s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.device
2.115s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata2-host1-target1:0:0-1:0:0:0-block-sdb.device
2.115s dev-sdb.device
2.093s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0.device
2.093s dev-disk-by\x2ddiskseq-4.device
2.093s dev-disk-by\x2did-wwn\x2d0x50014ee20f161876.device
2.093s dev-disk-by\x2did-ata\x2dWDC_WD10EZEX\x2d22MFCA0_WD\x2dWCC6Y2PN34ZF.device
2.093s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.device
2.093s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata4-host3-target3:0:0-3:0:0:0-block-sdd.device
2.093s dev-sdd.device
2.023s dev-disk-by\x2did-wwn\x2d0x5000c500e487a661.device
2.023s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0.device
2.023s dev-disk-by\x2ddiskseq-3.device
2.023s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.device
2.023s dev-sdc.device
2.023s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata3-host2-target2:0:0-2:0:0:0-block-sdc.device
2.023s dev-disk-by\x2did-ata\x2dST4000DM004\x2d2U9104_ZTT4RAHN.device
2.003s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata3-host2-target2:0:0-2:0:0:0-block-sdc-sdc1.device
2.003s dev-sdc1.device
2.003s dev-disk-by\x2ddiskseq-3\x2dpart1.device
2.003s dev-disk-by\x2duuid-73384e72\x2deade\x2d4dfa\x2d8360\x2d783faf87a509.device
2.003s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2dlabel-Stronghold.device
2.003s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart1.device
2.003s dev-disk-by\x2dlabel-Stronghold.device
2.003s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2dpartuuid-a506ab30\x2db895\x2d4a52\x2db610\x2dbf3905cdf5>
2.003s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2dpartlabel-Stronghold.device
2.003s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2dpartnum-1.device
2.003s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2duuid-73384e72\x2deade\x2d4dfa\x2d8360\x2d783faf87a509.d>
2.003s dev-disk-by\x2dpartuuid-a506ab30\x2db895\x2d4a52\x2db610\x2dbf3905cdf5dc.device
2.003s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3\x2dpart1.device
2.003s dev-disk-by\x2did-ata\x2dST4000DM004\x2d2U9104_ZTT4RAHN\x2dpart1.device
2.003s dev-disk-by\x2dpartlabel-Stronghold.device
2.003s dev-disk-by\x2did-wwn\x2d0x5000c500e487a661\x2dpart1.device
1.961s dev-disk-by\x2dpartuuid-a43441b8\x2d050f\x2d4c86\x2dbe74\x2d79ac93d06c92.device
1.961s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart-by\x2duuid-0ECBAD6322F9820B.device
1.961s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4\x2dpart1.device
1.961s dev-disk-by\x2did-wwn\x2d0x50014ee20f161876\x2dpart1.device
1.961s dev-sdd1.device
1.961s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata4-host3-target3:0:0-3:0:0:0-block-sdd-sdd1.device
1.961s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart1.device
1.961s dev-disk-by\x2duuid-0ECBAD6322F9820B.device
1.961s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart-by\x2dpartuuid-a43441b8\x2d050f\x2d4c86\x2dbe74\x2d79ac93d06c>
1.961s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart-by\x2dpartnum-1.device
1.961s dev-disk-by\x2ddiskseq-4\x2dpart1.device
1.961s dev-disk-by\x2dlabel-Storage.device
1.961s dev-disk-by\x2did-ata\x2dWDC_WD10EZEX\x2d22MFCA0_WD\x2dWCC6Y2PN34ZF\x2dpart1.device
1.961s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart-by\x2dlabel-Storage.device
 875ms initrd-switch-root.service
 506ms home-manager-dareggon.service
 369ms NetworkManager.service
 242ms systemd-udev-trigger.service
 202ms firewall.service
 186ms user@1000.service
 162ms mnt-Storage.mount
 117ms mnt-Stronghold.mount
 112ms systemd-journal-flush.service
 104ms suid-sgid-wrappers.service
  85ms wpa_supplicant.service
  84ms systemd-udevd.service
  71ms polkit.service
  68ms systemd-journald.service
  58ms dbus-broker.service
  55ms rtkit-daemon.service
  52ms systemd-resolved.service
  51ms systemd-fsck@dev-disk-by\x2duuid-C44A\x2d31FD.service
  51ms bluetooth.service
  48ms systemd-hostnamed.service
  47ms systemd-oomd.service
  47ms systemd-timesyncd.service
  45ms systemd-logind.service
  40ms systemd-vconsole-setup.service
  39ms systemd-journalctl.socket
  31ms nscd.service
  31ms systemd-rfkill.service
  27ms dev-disk-by\x2duuid-fb1d1561\x2d8173\x2d4196\x2d869b\x2d0994cd75b489.swap
  27ms boot.mount
  23ms dev-hugepages.mount
  23ms systemd-modules-load.service
  22ms systemd-remount-fs.service
  21ms systemd-tmpfiles-setup.service
  21ms dev-mqueue.mount
  21ms modprobe@fuse.service
  21ms NetworkManager-dispatcher.service
  20ms user-runtime-dir@1000.service
  20ms sys-kernel-debug.mount
  19ms sys-kernel-tracing.mount
  19ms systemd-sysctl.service
  19ms systemd-user-sessions.service
  18ms systemd-update-utmp.service
  17ms kmod-static-nodes.service
  16ms modprobe@configfs.service
  16ms systemd-random-seed.service
  15ms cups.socket
  14ms systemd-tmpfiles-setup-dev-early.service
  13ms post-boot.service
  13ms usr-bin.mount
  13ms systemd-boot-random-seed.service
  12ms logrotate-checkconf.service
  10ms systemd-tmpfiles-setup-dev.service
   9ms linger-users.service
   7ms sys-kernel-config.mount
   6ms run-wrappers.mount
   6ms sys-fs-fuse-connections.mount
   6ms podman.socket
   2ms polkit-agent-helper.socket
   1ms systemd-repart.socket
 731us systemd-coredump.socket
 635us systemd-ask-password.socket
 625us systemd-mute-console.socket
 618us systemd-bootctl.socket
 504us systemd-factory-reset.socket
 447us systemd-creds.socket
 207us nix-daemon.socket
 101us dbus.socket
  87us systemd-machined.socket
  71us systemd-resolved-monitor.socket
  64us systemd-udevd-varlink.socket
  55us systemd-importd.socket
  54us systemd-resolved-varlink.socket
  52us systemd-oomd.socket
  47us systemd-journald-dev-log.socket
  43us systemd-journald.socket
  41us systemd-hostnamed.socket
  23us systemd-rfkill.socket
  20us systemd-journald-audit.socket
  13us systemd-udevd-kernel.socket

 nexus  dareggon  nixos-config  main [ 󱈎 ]                                                                                 3s
陰⫸ journalctl -b -k -o short-monotonic
[    1.040596] nexus kernel: Linux version 7.3.0 (nixbld@localhost) (gcc (GCC) 16.2.0, GNU ld (GNU Binutils) 2.46) #1-NixOS SMP PR>
[    1.040613] nexus kernel: Command line: initrd=\EFI\nixos\4wqk7yd2mb81fv799x6m56k0wyjyhlpi-initrd-linux-7.3-initrd.efi init=/ni>
[    1.040619] nexus kernel: BIOS-provided physical RAM map:
[    1.040624] nexus kernel: BIOS-e820: [mem 0x0000000000000000-0x000000000009ffff]  System RAM
[    1.040630] nexus kernel: BIOS-e820: [mem 0x00000000000a0000-0x00000000000fffff]  device reserved
[    1.040634] nexus kernel: BIOS-e820: [mem 0x0000000000100000-0x0000000009ccefff]  System RAM
[    1.040639] nexus kernel: BIOS-e820: [mem 0x0000000009ccf000-0x0000000009ffffff]  device reserved
[    1.040643] nexus kernel: BIOS-e820: [mem 0x000000000a000000-0x000000000a1fffff]  System RAM
[    1.040647] nexus kernel: BIOS-e820: [mem 0x000000000a200000-0x000000000a20efff]  ACPI NVS
[    1.040651] nexus kernel: BIOS-e820: [mem 0x000000000a20f000-0x000000000affffff]  System RAM
[    1.040655] nexus kernel: BIOS-e820: [mem 0x000000000b000000-0x000000000b01ffff]  device reserved
[    1.040658] nexus kernel: BIOS-e820: [mem 0x000000000b020000-0x00000000b8937fff]  System RAM
[    1.040662] nexus kernel: BIOS-e820: [mem 0x00000000b8938000-0x00000000ba07bfff]  device reserved
[    1.040666] nexus kernel: BIOS-e820: [mem 0x00000000ba07c000-0x00000000ba1effff]  ACPI data
[    1.040673] nexus kernel: BIOS-e820: [mem 0x00000000ba1f0000-0x00000000bbca9fff]  ACPI NVS
[    1.040677] nexus kernel: BIOS-e820: [mem 0x00000000bbcaa000-0x00000000bcbfefff]  device reserved
[    1.040680] nexus kernel: BIOS-e820: [mem 0x00000000bcbff000-0x00000000bdffffff]  System RAM
[    1.040684] nexus kernel: BIOS-e820: [mem 0x00000000be000000-0x00000000bfffffff]  device reserved
[    1.040688] nexus kernel: BIOS-e820: [gap 0x00000000c0000000-0x00000000efffffff]
[    1.040692] nexus kernel: BIOS-e820: [mem 0x00000000f0000000-0x00000000f7ffffff]  device reserved
[    1.040696] nexus kernel: BIOS-e820: [gap 0x00000000f8000000-0x00000000fd1fffff]
[    1.040700] nexus kernel: BIOS-e820: [mem 0x00000000fd200000-0x00000000fd2fffff]  device reserved
[    1.040704] nexus kernel: BIOS-e820: [gap 0x00000000fd300000-0x00000000fd5fffff]
[    1.040708] nexus kernel: BIOS-e820: [mem 0x00000000fd600000-0x00000000fd6fffff]  device reserved
[    1.040711] nexus kernel: BIOS-e820: [gap 0x00000000fd700000-0x00000000fe9fffff]
[    1.040716] nexus kernel: BIOS-e820: [mem 0x00000000fea00000-0x00000000fea0ffff]  device reserved
[    1.040722] nexus kernel: BIOS-e820: [gap 0x00000000fea10000-0x00000000feb7ffff]
[    1.040728] nexus kernel: BIOS-e820: [mem 0x00000000feb80000-0x00000000fec01fff]  device reserved
[    1.040732] nexus kernel: BIOS-e820: [gap 0x00000000fec02000-0x00000000fec0ffff]
[    1.040736] nexus kernel: BIOS-e820: [mem 0x00000000fec10000-0x00000000fec10fff]  device reserved
[    1.040740] nexus kernel: BIOS-e820: [gap 0x00000000fec11000-0x00000000fec2ffff]
[    1.040743] nexus kernel: BIOS-e820: [mem 0x00000000fec30000-0x00000000fec30fff]  device reserved
[    1.040747] nexus kernel: BIOS-e820: [gap 0x00000000fec31000-0x00000000fecfffff]
[    1.040751] nexus kernel: BIOS-e820: [mem 0x00000000fed00000-0x00000000fed00fff]  device reserved
[    1.040755] nexus kernel: BIOS-e820: [gap 0x00000000fed01000-0x00000000fed3ffff]
[    1.040759] nexus kernel: BIOS-e820: [mem 0x00000000fed40000-0x00000000fed44fff]  device reserved
[    1.040763] nexus kernel: BIOS-e820: [gap 0x00000000fed45000-0x00000000fed7ffff]
[    1.040767] nexus kernel: BIOS-e820: [mem 0x00000000fed80000-0x00000000fed8ffff]  device reserved
[    1.040770] nexus kernel: BIOS-e820: [gap 0x00000000fed90000-0x00000000fedc1fff]
[    1.040774] nexus kernel: BIOS-e820: [mem 0x00000000fedc2000-0x00000000fedcffff]  device reserved
[    1.040781] nexus kernel: BIOS-e820: [gap 0x00000000fedd0000-0x00000000fedd3fff]
[    1.040785] nexus kernel: BIOS-e820: [mem 0x00000000fedd4000-0x00000000fedd5fff]  device reserved
[    1.040788] nexus kernel: BIOS-e820: [gap 0x00000000fedd6000-0x00000000feffffff]
[    1.040792] nexus kernel: BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff]  device reserved
[    1.040796] nexus kernel: BIOS-e820: [mem 0x0000000100000000-0x000000083e2fffff]  System RAM
[    1.040802] nexus kernel: BIOS-e820: [mem 0x000000083e300000-0x000000083fffffff]  device reserved
[    1.040805] nexus kernel: NX (Execute Disable) protection: active
[    1.040809] nexus kernel: APIC: Static calls initialized
[    1.040813] nexus kernel: efi: EFI v2.7 by American Megatrends
[    1.040817] nexus kernel: efi: ACPI=0xbbc93000 ACPI 2.0=0xbbc93014 TPMFinalLog=0xbac5d000 SMBIOS=0xbca25000 SMBIOS 3.0=0xbca240>
[    1.040821] nexus kernel: random: crng init done
[    1.040826] nexus kernel: efi: Remove mem314: MMIO range=[0xf0000000-0xf7ffffff] (128MB) from e820 map
[    1.040830] nexus kernel: e820: remove [mem 0xf0000000-0xf7ffffff] device reserved
[    1.040834] nexus kernel: efi: Remove mem315: MMIO range=[0xfd200000-0xfd2fffff] (1MB) from e820 map
[    1.040837] nexus kernel: e820: remove [mem 0xfd200000-0xfd2fffff] device reserved
[    1.040841] nexus kernel: efi: Remove mem316: MMIO range=[0xfd600000-0xfd6fffff] (1MB) from e820 map
[    1.040845] nexus kernel: e820: remove [mem 0xfd600000-0xfd6fffff] device reserved
[    1.040849] nexus kernel: efi: Not removing mem317: MMIO range=[0xfea00000-0xfea0ffff] (64KB) from e820 map
[    1.040853] nexus kernel: efi: Remove mem318: MMIO range=[0xfeb80000-0xfec01fff] (0MB) from e820 map
[    1.040857] nexus kernel: e820: remove [mem 0xfeb80000-0xfec01fff] device reserved
[    1.040863] nexus kernel: efi: Not removing mem319: MMIO range=[0xfec10000-0xfec10fff] (4KB) from e820 map
[    1.040866] nexus kernel: efi: Not removing mem320: MMIO range=[0xfec30000-0xfec30fff] (4KB) from e820 map
[    1.040870] nexus kernel: efi: Not removing mem321: MMIO range=[0xfed00000-0xfed00fff] (4KB) from e820 map
[    1.040874] nexus kernel: efi: Not removing mem322: MMIO range=[0xfed40000-0xfed44fff] (20KB) from e820 map
[    1.040878] nexus kernel: efi: Not removing mem323: MMIO range=[0xfed80000-0xfed8ffff] (64KB) from e820 map
[    1.040882] nexus kernel: efi: Not removing mem324: MMIO range=[0xfedc2000-0xfedcffff] (56KB) from e820 map
[    1.040886] nexus kernel: efi: Not removing mem325: MMIO range=[0xfedd4000-0xfedd5fff] (8KB) from e820 map
[    1.040890] nexus kernel: efi: Remove mem326: MMIO range=[0xff000000-0xffffffff] (16MB) from e820 map
[    1.040894] nexus kernel: e820: remove [mem 0xff000000-0xffffffff] device reserved
[    1.040898] nexus kernel: DMI: SMBIOS 3.3.0 present.
[    1.040902] nexus kernel: DMI: Gigabyte Technology Co., Ltd. B550M AORUS ELITE/B550M AORUS ELITE, BIOS FE 03/22/2024
[    1.040905] nexus kernel: DMI: Memory slots populated: 2/4
[    1.040909] nexus kernel: tsc: Fast TSC calibration using PIT
[    1.040913] nexus kernel: tsc: Detected 3593.115 MHz processor
[    1.040917] nexus kernel: e820: update [mem 0x00000000-0x00000fff] System RAM ==> device reserved
[    1.040923] nexus kernel: e820: remove [mem 0x000a0000-0x000fffff] System RAM
[    1.040928] nexus kernel: last_pfn = 0x83e300 max_arch_pfn = 0x400000000
[    1.040932] nexus kernel: MTRR map: 5 entries (3 fixed + 2 variable; max 20), built from 9 variable MTRRs
[    1.040936] nexus kernel: x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT
[    1.040940] nexus kernel: e820: update [mem 0xc0000000-0xffffffff] System RAM ==> device reserved
[    1.040965] nexus kernel: last_pfn = 0xbe000 max_arch_pfn = 0x400000000
[    1.040969] nexus kernel: esrt: Reserving ESRT space from 0x00000000b70a7118 to 0x00000000b70a7150.
[    1.040974] nexus kernel: e820: update [mem 0xb70a7000-0xb70a7fff] System RAM ==> device reserved
[    1.040978] nexus kernel: Using GB pages for direct mapping
[    1.040984] nexus kernel: Secure boot disabled
[    1.040988] nexus kernel: RAMDISK: [mem 0xaf181000-0xb0ce1fff]
[    1.040992] nexus kernel: ACPI: Early table checksum verification disabled
[    1.040996] nexus kernel: ACPI: RSDP 0x00000000BBC93014 000024 (v02 ALASKA)
[    1.041000] nexus kernel: ACPI: XSDT 0x00000000BBC92728 0000F4 (v01 ALASKA A M I    01072009 AMI  01000013)
[    1.041005] nexus kernel: ACPI: FACP 0x00000000BA1D5000 000114 (v06 ALASKA A M I    01072009 AMI  00010013)
[    1.041009] nexus kernel: ACPI: DSDT 0x00000000BA0C4000 00626B (v02 ALASKA A M I    01072009 INTL 20190509)
[    1.041013] nexus kernel: ACPI: FACS 0x00000000BAC8D000 000040
[    1.041017] nexus kernel: ACPI: SSDT 0x00000000BA1E4000 00B7D3 (v02 GBT    GSWApp   00000001 INTL 20190509)
[    1.041023] nexus kernel: ACPI: IVRS 0x00000000BA1E3000 0000D0 (v02 AMD    AmdTable 00000001 AMD  00000001)
[    1.041027] nexus kernel: ACPI: SSDT 0x00000000BA1DB000 0072B0 (v02 AMD    Artic    00000002 MSFT 04000000)
[    1.041031] nexus kernel: ACPI: SSDT 0x00000000BA1D7000 003D7C (v02 AMD    AMD AOD  00000001 INTL 20190509)
[    1.041035] nexus kernel: ACPI: SSDT 0x00000000BA1D6000 0001AD (v02 ALASKA CPUSSDT  01072009 AMI  01072009)
[    1.041039] nexus kernel: ACPI: FIDT 0x00000000BA1CE000 00009C (v01 ALASKA A M I    01072009 AMI  00010013)
[    1.041044] nexus kernel: ACPI: MCFG 0x00000000BA1CD000 00003C (v01 ALASKA A M I    01072009 MSFT 00010013)
[    1.041048] nexus kernel: ACPI: HPET 0x00000000BA1CC000 000038 (v01 ALASKA A M I    01072009 AMI  00000005)
[    1.041052] nexus kernel: ACPI: FPDT 0x00000000BA1CB000 000044 (v01 ALASKA A M I    01072009 AMI  01000013)
[    1.041058] nexus kernel: ACPI: VFCT 0x00000000BA1BC000 00E284 (v01 ALASKA A M I    00000001 AMD  31504F47)
[    1.041062] nexus kernel: ACPI: BGRT 0x00000000BA1BB000 000038 (v01 ALASKA A M I    01072009 AMI  00010013)
[    1.041066] nexus kernel: ACPI: TPM2 0x00000000BA1BA000 00004C (v04 ALASKA A M I    00000001 AMI  00000000)
[    1.041070] nexus kernel: ACPI: SSDT 0x00000000BA1B6000 003E88 (v02 AMD    AmdTable 00000001 AMD  00000001)
[    1.041074] nexus kernel: ACPI: CRAT 0x00000000BA1B5000 000B68 (v01 AMD    AmdTable 00000001 AMD  00000001)
[    1.041078] nexus kernel: ACPI: CDIT 0x00000000BA1B4000 000029 (v01 AMD    AmdTable 00000001 AMD  00000001)
[    1.041082] nexus kernel: ACPI: WPBT 0x00000000BA0D5000 000038 (v01 ALASKA A M I    00000001 GBT  20181220)
[    1.041087] nexus kernel: ACPI: SSDT 0x00000000BA0D4000 00068E (v02 AMD    ArticDGP 00000001 INTL 20190509)
[    1.041091] nexus kernel: ACPI: SSDT 0x00000000BA0D2000 001522 (v02 AMD    ArticTPX 00000001 INTL 20190509)
[    1.041096] nexus kernel: ACPI: SSDT 0x00000000BA0D1000 000788 (v02 AMD    ArticNOI 00000001 INTL 20190509)
[    1.041101] nexus kernel: ACPI: SSDT 0x00000000BA0CD000 003A23 (v02 AMD    ArticN   00000001 INTL 20190509)
[    1.041105] nexus kernel: ACPI: WSMT 0x00000000BA0CC000 000028 (v01 ALASKA A M I    01072009 AMI  00010013)
[    1.041109] nexus kernel: ACPI: APIC 0x00000000BA0CB000 00015E (v04 ALASKA A M I    01072009 AMI  00010013)
[    1.041113] nexus kernel: ACPI: SSDT 0x00000000BA1D4000 0008AC (v02 AMD    ArticPRN 00000001 INTL 20190509)
[    1.041117] nexus kernel: ACPI: SSDT 0x00000000BA1D2000 00147F (v02 AMD    ArticC   00000001 INTL 20190509)
[    1.041121] nexus kernel: ACPI: SSDT 0x00000000BA1D1000 0000BF (v01 AMD    AmdTable 00001000 INTL 20190509)
[    1.041126] nexus kernel: ACPI: Reserving FACP table memory at [mem 0xba1d5000-0xba1d5113]
[    1.041133] nexus kernel: ACPI: Reserving DSDT table memory at [mem 0xba0c4000-0xba0ca26a]
[    1.041139] nexus kernel: ACPI: Reserving FACS table memory at [mem 0xbac8d000-0xbac8d03f]
[    1.041143] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1e4000-0xba1ef7d2]
[    1.041147] nexus kernel: ACPI: Reserving IVRS table memory at [mem 0xba1e3000-0xba1e30cf]
[    1.041151] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1db000-0xba1e22af]
[    1.041155] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d7000-0xba1dad7b]
[    1.041159] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d6000-0xba1d61ac]
[    1.041163] nexus kernel: ACPI: Reserving FIDT table memory at [mem 0xba1ce000-0xba1ce09b]
[    1.041167] nexus kernel: ACPI: Reserving MCFG table memory at [mem 0xba1cd000-0xba1cd03b]
[    1.041171] nexus kernel: ACPI: Reserving HPET table memory at [mem 0xba1cc000-0xba1cc037]
[    1.041175] nexus kernel: ACPI: Reserving FPDT table memory at [mem 0xba1cb000-0xba1cb043]
[    1.041179] nexus kernel: ACPI: Reserving VFCT table memory at [mem 0xba1bc000-0xba1ca283]
[    1.041185] nexus kernel: ACPI: Reserving BGRT table memory at [mem 0xba1bb000-0xba1bb037]
[    1.041189] nexus kernel: ACPI: Reserving TPM2 table memory at [mem 0xba1ba000-0xba1ba04b]
[    1.041193] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1b6000-0xba1b9e87]
[    1.041197] nexus kernel: ACPI: Reserving CRAT table memory at [mem 0xba1b5000-0xba1b5b67]
[    1.041201] nexus kernel: ACPI: Reserving CDIT table memory at [mem 0xba1b4000-0xba1b4028]
[    1.041208] nexus kernel: ACPI: Reserving WPBT table memory at [mem 0xba0d5000-0xba0d5037]
[    1.041215] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba0d4000-0xba0d468d]
[    1.041219] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba0d2000-0xba0d3521]
[    1.041223] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba0d1000-0xba0d1787]
[    1.041229] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba0cd000-0xba0d0a22]
[    1.041233] nexus kernel: ACPI: Reserving WSMT table memory at [mem 0xba0cc000-0xba0cc027]
[    1.041237] nexus kernel: ACPI: Reserving APIC table memory at [mem 0xba0cb000-0xba0cb15d]
[    1.041243] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d4000-0xba1d48ab]
[    1.041250] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d2000-0xba1d347e]
[    1.041257] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d1000-0xba1d10be]
[    1.041261] nexus kernel: No NUMA configuration found
[    1.041266] nexus kernel: Faking a node at [mem 0x0000000000000000-0x000000083e2fffff]
[    1.041270] nexus kernel: NODE_DATA(0) allocated [mem 0x83e2fa480-0x83e2ffcff]
[    1.041274] nexus kernel: ACPI: PM-Timer IO Port: 0x808
[    1.041280] nexus kernel: ACPI: LAPIC_NMI (acpi_id[0xff] high edge lint[0x1])
[    1.041284] nexus kernel: IOAPIC[0]: apic_id 13, version 33, address 0xfec00000, GSI 0-23
[    1.041288] nexus kernel: IOAPIC[1]: apic_id 14, version 33, address 0xfec01000, GSI 24-55
[    1.041292] nexus kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    1.041296] nexus kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 low level)
[    1.041301] nexus kernel: ACPI: Using ACPI (MADT) for SMP configuration information
[    1.041305] nexus kernel: ACPI: HPET id: 0x10228201 base: 0xfed00000
[    1.041309] nexus kernel: e820: update [mem 0xb4ec5000-0xb4f1bfff] System RAM ==> device reserved
[    1.041313] nexus kernel: CPU topo: Max. logical packages:   1
[    1.041319] nexus kernel: CPU topo: Max. logical nodes:      1
[    1.041323] nexus kernel: CPU topo: Num. nodes per package:  1
[    1.041327] nexus kernel: CPU topo: Max. logical dies:       1
[    1.041331] nexus kernel: CPU topo: Max. dies per package:   1
[    1.041335] nexus kernel: CPU topo: Max. threads per core:   2
[    1.041339] nexus kernel: CPU topo: Num. cores per package:     6
[    1.041343] nexus kernel: CPU topo: Num. threads per package:  12
[    1.041347] nexus kernel: CPU topo: Allowing 12 present CPUs plus 0 hotplug CPUs
[    1.041351] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    1.041356] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x000a0000-0x000fffff]
[    1.041361] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x09ccf000-0x09ffffff]
[    1.041365] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x0a200000-0x0a20efff]
[    1.041370] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x0b000000-0x0b01ffff]
[    1.041374] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0xb4ec5000-0xb4f1bfff]
[    1.041378] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0xb70a7000-0xb70a7fff]
[    1.041382] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0xb8938000-0xbcbfefff]
[    1.041386] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0xbe000000-0xffffffff]
[    1.041390] nexus kernel: [gap 0xc0000000-0xfe9fffff] available for PCI devices
[    1.041394] nexus kernel: Booting paravirtualized kernel on bare hardware
[    1.041400] nexus kernel: clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 >
[    1.041404] nexus kernel: Zone ranges:
[    1.041408] nexus kernel:   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    1.041412] nexus kernel:   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    1.041417] nexus kernel:   Normal   [mem 0x0000000100000000-0x000000083e2fffff]
[    1.041421] nexus kernel:   Device   empty
[    1.041425] nexus kernel: Movable zone start for each node
[    1.041429] nexus kernel: Early memory node ranges
[    1.041434] nexus kernel:   node   0: [mem 0x0000000000001000-0x000000000009ffff]
[    1.041438] nexus kernel:   node   0: [mem 0x0000000000100000-0x0000000009ccefff]
[    1.041443] nexus kernel:   node   0: [mem 0x000000000a000000-0x000000000a1fffff]
[    1.041447] nexus kernel:   node   0: [mem 0x000000000a20f000-0x000000000affffff]
[    1.041451] nexus kernel:   node   0: [mem 0x000000000b020000-0x00000000b8937fff]
[    1.041455] nexus kernel:   node   0: [mem 0x00000000bcbff000-0x00000000bdffffff]
[    1.041459] nexus kernel:   node   0: [mem 0x0000000100000000-0x000000083e2fffff]
[    1.041463] nexus kernel: Initmem setup node 0 [mem 0x0000000000001000-0x000000083e2fffff]
[    1.041468] nexus kernel: On node 0, zone DMA: 1 pages in unavailable ranges
[    1.041472] nexus kernel: On node 0, zone DMA: 96 pages in unavailable ranges
[    1.041476] nexus kernel: On node 0, zone DMA32: 817 pages in unavailable ranges
[    1.041480] nexus kernel: On node 0, zone DMA32: 15 pages in unavailable ranges
[    1.041486] nexus kernel: On node 0, zone DMA32: 32 pages in unavailable ranges
[    1.041490] nexus kernel: On node 0, zone DMA32: 17095 pages in unavailable ranges
[    1.041494] nexus kernel: On node 0, zone Normal: 8192 pages in unavailable ranges
[    1.041499] nexus kernel: On node 0, zone Normal: 7424 pages in unavailable ranges
[    1.041503] nexus kernel: setup_percpu: NR_CPUS:512 nr_cpumask_bits:12 nr_cpu_ids:12 nr_node_ids:1
[    1.041507] nexus kernel: percpu: Embedded 100 pages/cpu s286720 r8192 d114688 u524288
[    1.041511] nexus kernel: pcpu-alloc: s286720 r8192 d114688 u524288 alloc=1*2097152
[    1.041515] nexus kernel: pcpu-alloc: [0] 00 01 02 03 [0] 04 05 06 07
[    1.041519] nexus kernel: pcpu-alloc: [0] 08 09 10 11
[    1.041526] nexus kernel: Kernel command line: initrd=\EFI\nixos\4wqk7yd2mb81fv799x6m56k0wyjyhlpi-initrd-linux-7.3-initrd.efi i>
[    1.041530] nexus kernel: printk: log buffer data + meta data: 1048576 + 4456448 = 5505024 bytes
[    1.041535] nexus kernel: Dentry cache hash table entries: 4194304 (order: 13, 33554432 bytes, linear)
[    1.041539] nexus kernel: Inode-cache hash table entries: 2097152 (order: 12, 16777216 bytes, linear)
[    1.041543] nexus kernel: software IO TLB: area num 16.
[    1.041547] nexus kernel: Fallback order for Node 0: 0
[    1.041551] nexus kernel: Built 1 zonelists, mobility grouping on.  Total pages: 8354936
[    1.041556] nexus kernel: Policy zone: Normal
[    1.041561] nexus kernel: mem auto-init: stack:all(zero), heap alloc:on, heap free:off
[    1.041565] nexus kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=12, Nodes=1
[    1.041570] nexus kernel: allocated 67108864 bytes of page_ext
[    1.041574] nexus kernel: ftrace: allocating 50587 entries in 200 pages
[    1.041578] nexus kernel: ftrace: allocated 200 pages with 3 groups
[    1.041582] nexus kernel: Dynamic Preempt: lazy
[    1.041586] nexus kernel: rcu: Preemptible hierarchical RCU implementation.
[    1.041590] nexus kernel: rcu:         RCU event tracing is enabled.
[    1.041595] nexus kernel: rcu:         RCU restricting CPUs from NR_CPUS=512 to nr_cpu_ids=12.
[    1.041600] nexus kernel:         Trampoline variant of Tasks RCU enabled.
[    1.041605] nexus kernel:         Rude variant of Tasks RCU enabled.
[    1.041609] nexus kernel:         Tracing variant of Tasks RCU enabled.
[    1.041613] nexus kernel: rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
[    1.041617] nexus kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=12
[    1.041621] nexus kernel: RCU Tasks: Setting shift to 4 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=12.
[    1.041625] nexus kernel: RCU Tasks Rude: Setting shift to 4 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=12.
[    1.041629] nexus kernel: NR_IRQS: 33024, nr_irqs: 1064, preallocated irqs: 16
[    1.041634] nexus kernel: rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    1.041638] nexus kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
[    1.041644] nexus kernel: kfence: initialized - using 2097152 bytes for 255 objects at 0x(____ptrval____)-0x(____ptrval____)
[    1.041648] nexus kernel: Console: colour dummy device 80x25
[    1.041652] nexus kernel: printk: legacy console [tty0] enabled
[    1.041656] nexus kernel: ACPI: Core revision 20260408
[    1.041660] nexus kernel: clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 133484873504 ns
[    1.041664] nexus kernel: APIC: Switch to symmetric I/O mode setup
[    1.041668] nexus kernel: AMD-Vi: Using global IVHD EFR:0x206d73ef22254ade, EFR2:0x0
[    1.041672] nexus kernel: x2apic enabled
[    1.041678] nexus kernel: APIC: Switched APIC routing to: cluster x2apic
[    1.041682] nexus kernel: ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    1.041686] nexus kernel: clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x33caeb27fa8, max_idle_ns: 440795293863>
[    1.041691] nexus kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 7186.23 BogoMIPS (lpj=3593>
[    1.041695] nexus kernel: SVM disabled (by BIOS) in MSR_VM_CR
[    1.041699] nexus kernel: x86/cpu: User Mode Instruction Prevention (UMIP) activated
[    1.041703] nexus kernel: LVT offset 1 assigned for vector 0xf9
[    1.041707] nexus kernel: LVT offset 2 assigned for vector 0xf4
[    1.041711] nexus kernel: Last level iTLB entries: 4KB 512, 2MB 512, 4MB 256
[    1.041718] nexus kernel: Last level dTLB entries: 4KB 2048, 2MB 2048, 4MB 1024, 1GB 0
[    1.041723] nexus kernel: process: using mwait in idle threads
[    1.041727] nexus kernel: mitigations: Enabled attack vectors: user_kernel, user_user, guest_host, guest_guest, SMT mitigations>
[    1.041732] nexus kernel: Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl
[    1.041736] nexus kernel: Transient Scheduler Attacks: Mitigation: Clear CPU buffers
[    1.041740] nexus kernel: Spectre V2 : Mitigation: Retpolines
[    1.041744] nexus kernel: Spectre V2 : User space: Mitigation: STIBP always-on protection
[    1.041748] nexus kernel: Speculative Return Stack Overflow: Mitigation: Safe RET
[    1.041754] nexus kernel: VMSCAPE: Mitigation: IBPB before exit to userspace
[    1.041758] nexus kernel: Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    1.041762] nexus kernel: Spectre V2 : Spectre v2 / SpectreRSB: Filling RSB on context switch and VMEXIT
[    1.041767] nexus kernel: Spectre V2 : Enabling Restricted Speculation for firmware calls
[    1.041771] nexus kernel: Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    1.041775] nexus kernel: active return thunk: srso_alias_return_thunk
[    1.041779] nexus kernel: x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    1.041783] nexus kernel: x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    1.041787] nexus kernel: x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    1.041792] nexus kernel: x86/fpu: Supporting XSAVE feature 0x200: 'Protection Keys User registers'
[    1.041797] nexus kernel: x86/fpu: Supporting XSAVE feature 0x800: 'Control-flow User registers'
[    1.041801] nexus kernel: x86/fpu: Supporting XSAVE feature 0x1000: 'Control-flow Kernel registers (KVM only)'
[    1.041805] nexus kernel: x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    1.041810] nexus kernel: x86/fpu: xstate_offset[9]:  832, xstate_sizes[9]:    8
[    1.041814] nexus kernel: x86/fpu: xstate_offset[11]:  840, xstate_sizes[11]:   16
[    1.041818] nexus kernel: x86/fpu: xstate_offset[12]:  856, xstate_sizes[12]:   24
[    1.041822] nexus kernel: x86/fpu: Enabled xstate features 0x1a07, context size is 880 bytes, using 'compacted' format.
[    1.041826] nexus kernel: pid_max: default: 32768 minimum: 301
[    1.041830] nexus kernel: landlock: Up and running.
[    1.041836] nexus kernel: Yama: becoming mindful.
[    1.041840] nexus kernel: LSM support for eBPF active
[    1.041844] nexus kernel: Mount-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    1.041848] nexus kernel: Mountpoint-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    1.041852] nexus kernel: VFS: Finished mounting rootfs on nullfs
[    1.041856] nexus kernel: smpboot: CPU0: AMD Ryzen 5 5500 (family: 0x19, model: 0x50, stepping: 0x0)
[    1.041860] nexus kernel: Performance Events: Fam17h+ core perfctr, AMD PMU driver.
[    1.041865] nexus kernel: ... version:                   0
[    1.041870] nexus kernel: ... bit width:                 48
[    1.041874] nexus kernel: ... generic counters:          6
[    1.041878] nexus kernel: ... generic bitmap:            000000000000003f
[    1.041882] nexus kernel: ... fixed-purpose counters:    0
[    1.041886] nexus kernel: ... fixed-purpose bitmap:      0000000000000000
[    1.041891] nexus kernel: ... value mask:                0000ffffffffffff
[    1.041895] nexus kernel: ... max period:                00007fffffffffff
[    1.041899] nexus kernel: ... global_ctrl mask:          000000000000003f
[    1.041903] nexus kernel: signal: max sigframe size: 3376
[    1.041908] nexus kernel: rcu: Hierarchical SRCU implementation.
[    1.041913] nexus kernel: rcu:         Max phase no-delay instances is 400.
[    1.041917] nexus kernel: Timer migration: 2 hierarchy levels; 8 children per group; 2 crossnode level
[    1.041921] nexus kernel: NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    1.041925] nexus kernel: smp: Bringing up secondary CPUs ...
[    1.041929] nexus kernel: smpboot: x86: Booting SMP configuration:
[    1.041933] nexus kernel: .... node  #0, CPUs:        #1  #2  #3  #4  #5  #6  #7  #8  #9 #10 #11
[    1.041937] nexus kernel: Spectre V2 : Update user space SMT mitigation: STIBP always-on
[    1.041941] nexus kernel: smp: Brought up 1 node, 12 CPUs
[    1.041950] nexus kernel: smpboot: Total of 12 processors activated (86234.76 BogoMIPS)
[    1.041954] nexus kernel: Memory: 32509356K/33419744K available (19033K kernel code, 6218K rwdata, 14872K rodata, 6864K init, 4>
[    1.041958] nexus kernel: devtmpfs: initialized
[    1.041963] nexus kernel: x86/mm: Memory block size: 128MB
[    1.041967] nexus kernel: ACPI: PM: Registering ACPI NVS region [mem 0x0a200000-0x0a20efff] (61440 bytes)
[    1.041971] nexus kernel: ACPI: PM: Registering ACPI NVS region [mem 0xba1f0000-0xbbca9fff] (28024832 bytes)
[    1.041975] nexus kernel: posixtimers hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    1.041979] nexus kernel: futex hash table entries: 4096 (262144 bytes on 1 NUMA nodes, total 256 KiB, linear).
[    1.041983] nexus kernel: PM: RTC time: 14:27:47, date: 2026-11-21
[    1.041987] nexus kernel: NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    1.041993] nexus kernel: DMA: preallocated 4096 KiB GFP_KERNEL pool for atomic allocations
[    1.041997] nexus kernel: DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    1.042001] nexus kernel: DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    1.042005] nexus kernel: audit: initializing netlink subsys (disabled)
[    1.042009] nexus kernel: audit: type=2000 audit(1795271267.159:1): state=initialized audit_enabled=0 res=1
[    1.042013] nexus kernel: thermal_sys: Registered thermal governor 'fair_share'
[    1.042018] nexus kernel: thermal_sys: Registered thermal governor 'bang_bang'
[    1.042022] nexus kernel: thermal_sys: Registered thermal governor 'step_wise'
[    1.042028] nexus kernel: thermal_sys: Registered thermal governor 'user_space'
[    1.042032] nexus kernel: thermal_sys: Registered thermal governor 'power_allocator'
[    1.042036] nexus kernel: cpuidle: using governor menu
[    1.042040] nexus kernel: efi: Freeing EFI boot services memory: 83392K
[    1.042044] nexus kernel: acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    1.042048] nexus kernel: PCI: ECAM [mem 0xf0000000-0xf7ffffff] (base 0xf0000000) for domain 0000 [bus 00-7f]
[    1.042052] nexus kernel: PCI: Using configuration type 1 for base access
[    1.042057] nexus kernel: kprobes: kprobe jump-optimization is enabled. All kprobes are optimized if possible.
[    1.042061] nexus kernel: HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pages
[    1.042067] nexus kernel: HugeTLB: 16380 KiB vmemmap can be freed for a 1.00 GiB page
[    1.042071] nexus kernel: HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
[    1.042074] nexus kernel: HugeTLB: 28 KiB vmemmap can be freed for a 2.00 MiB page
[    1.042078] nexus kernel: ACPI: Added _OSI(Module Device)
[    1.042082] nexus kernel: ACPI: Added _OSI(Processor Device)
[    1.042086] nexus kernel: ACPI: Added _OSI(Processor Aggregator Device)
[    1.042091] nexus kernel: ACPI: 13 ACPI AML tables successfully acquired and loaded
[    1.042095] nexus kernel: ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    1.042099] nexus kernel: ACPI: \_SB_: platform _OSC: OS support mask [002e7eff]
[    1.042103] nexus kernel: ACPI: Interpreter enabled
[    1.042109] nexus kernel: ACPI: PM: (supports S0 S3 S4 S5)
[    1.042113] nexus kernel: ACPI: Using IOAPIC for interrupt routing
[    1.042117] nexus kernel: PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    1.042121] nexus kernel: PCI: Ignoring E820 reservations for host bridge windows
[    1.042125] nexus kernel: ACPI: Enabled 7 GPEs in block 00 to 1F
[    1.042130] nexus kernel: ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    1.042415] nexus kernel: acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI HPX-Type3]
[    1.042578] nexus kernel: acpi PNP0A08:00: _OSC: platform does not support [LTR]
[    1.042732] nexus kernel: acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug PME AER PCIeCapability]
[    1.042891] nexus kernel: acpi PNP0A08:00: [Firmware Info]: ECAM [mem 0xf0000000-0xf7ffffff] for domain 0000 [bus 00-7f] only p>
[    1.042899] nexus kernel: PCI host bridge to bus 0000:00
[    1.043049] nexus kernel: pci_bus 0000:00: root bus resource [io  0x0000-0x03af window]
[    1.043185] nexus kernel: pci_bus 0000:00: root bus resource [io  0x03e0-0x0cf7 window]
[    1.043310] nexus kernel: pci_bus 0000:00: root bus resource [io  0x03b0-0x03df window]
[    1.043431] nexus kernel: pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    1.043553] nexus kernel: pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000dffff window]
[    1.043675] nexus kernel: pci_bus 0000:00: root bus resource [mem 0xc0000000-0xfec2ffff window]
[    1.043812] nexus kernel: pci_bus 0000:00: root bus resource [mem 0xfee00000-0xffffffff window]
[    1.043941] nexus kernel: pci_bus 0000:00: root bus resource [bus 00-ff]
[    1.044100] nexus kernel: pci 0000:00:00.0: [1022:1630] type 00 class 0x060000 conventional PCI endpoint
[    1.044233] nexus kernel: pci 0000:00:00.2: [1022:1631] type 00 class 0x080600 conventional PCI endpoint
[    1.044364] nexus kernel: pci 0000:00:01.0: [1022:1632] type 00 class 0x060000 conventional PCI endpoint
[    1.044496] nexus kernel: pci 0000:00:01.1: [1022:1633] type 01 class 0x060400 PCIe Root Port
[    1.044625] nexus kernel: pci 0000:00:01.1: PCI bridge to [bus 01-03]
[    1.044763] nexus kernel: pci 0000:00:01.1:   bridge window [io  0xf000-0xffff]
[    1.044893] nexus kernel: pci 0000:00:01.1:   bridge window [mem 0xfce00000-0xfcffffff]
[    1.045027] nexus kernel: pci 0000:00:01.1:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.045155] nexus kernel: pci 0000:00:01.1: PME# supported from D0 D3hot D3cold
[    1.045288] nexus kernel: pci 0000:00:02.0: [1022:1632] type 00 class 0x060000 conventional PCI endpoint
[    1.045418] nexus kernel: pci 0000:00:02.1: [1022:1634] type 01 class 0x060400 PCIe Root Port
[    1.045547] nexus kernel: pci 0000:00:02.1: PCI bridge to [bus 04-06]
[    1.045680] nexus kernel: pci 0000:00:02.1:   bridge window [io  0xe000-0xefff]
[    1.045818] nexus kernel: pci 0000:00:02.1:   bridge window [mem 0xfcc00000-0xfcdfffff]
[    1.045951] nexus kernel: pci 0000:00:02.1: enabling Extended Tags
[    1.046084] nexus kernel: pci 0000:00:02.1: PME# supported from D0 D3hot D3cold
[    1.046214] nexus kernel: pci 0000:00:08.0: [1022:1632] type 00 class 0x060000 conventional PCI endpoint
[    1.046344] nexus kernel: pci 0000:00:08.1: [1022:1635] type 01 class 0x060400 PCIe Root Port
[    1.046472] nexus kernel: pci 0000:00:08.1: PCI bridge to [bus 07]
[    1.046600] nexus kernel: pci 0000:00:08.1:   bridge window [mem 0xfc800000-0xfcbfffff]
[    1.046736] nexus kernel: pci 0000:00:08.1: enabling Extended Tags
[    1.046867] nexus kernel: pci 0000:00:08.1: PME# supported from D0 D3hot D3cold
[    1.047005] nexus kernel: pci 0000:00:14.0: [1022:790b] type 00 class 0x0c0500 conventional PCI endpoint
[    1.047135] nexus kernel: pci 0000:00:14.3: [1022:790e] type 00 class 0x060100 conventional PCI endpoint
[    1.047265] nexus kernel: pci 0000:00:18.0: [1022:166a] type 00 class 0x060000 conventional PCI endpoint
[    1.047396] nexus kernel: pci 0000:00:18.1: [1022:166b] type 00 class 0x060000 conventional PCI endpoint
[    1.047526] nexus kernel: pci 0000:00:18.2: [1022:166c] type 00 class 0x060000 conventional PCI endpoint
[    1.047656] nexus kernel: pci 0000:00:18.3: [1022:166d] type 00 class 0x060000 conventional PCI endpoint
[    1.047795] nexus kernel: pci 0000:00:18.4: [1022:166e] type 00 class 0x060000 conventional PCI endpoint
[    1.047924] nexus kernel: pci 0000:00:18.5: [1022:166f] type 00 class 0x060000 conventional PCI endpoint
[    1.048079] nexus kernel: pci 0000:00:18.6: [1022:1670] type 00 class 0x060000 conventional PCI endpoint
[    1.048213] nexus kernel: pci 0000:00:18.7: [1022:1671] type 00 class 0x060000 conventional PCI endpoint
[    1.048354] nexus kernel: pci 0000:01:00.0: [1002:1478] type 01 class 0x060400 PCIe Switch Upstream Port
[    1.048500] nexus kernel: pci 0000:01:00.0: BAR 0 [mem 0xfcf00000-0xfcf03fff]
[    1.048645] nexus kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
[    1.048786] nexus kernel: pci 0000:01:00.0:   bridge window [io  0xf000-0xffff]
[    1.048923] nexus kernel: pci 0000:01:00.0:   bridge window [mem 0xfce00000-0xfcefffff]
[    1.049067] nexus kernel: pci 0000:01:00.0:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.049204] nexus kernel: pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
[    1.049340] nexus kernel: pci 0000:01:00.0: 126.016 Gb/s available PCIe bandwidth, limited by 8.0 GT/s PCIe x16 link at 0000:00>
[    1.049469] nexus kernel: pci 0000:00:01.1: PCI bridge to [bus 01-03]
[    1.049619] nexus kernel: pci 0000:02:00.0: [1002:1479] type 01 class 0x060400 PCIe Switch Downstream Port
[    1.049772] nexus kernel: pci 0000:02:00.0: PCI bridge to [bus 03]
[    1.049919] nexus kernel: pci 0000:02:00.0:   bridge window [io  0xf000-0xffff]
[    1.050070] nexus kernel: pci 0000:02:00.0:   bridge window [mem 0xfce00000-0xfcefffff]
[    1.050223] nexus kernel: pci 0000:02:00.0:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.050368] nexus kernel: pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
[    1.050505] nexus kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
[    1.050659] nexus kernel: pci 0000:03:00.0: [1002:731f] type 00 class 0x030000 PCIe Legacy Endpoint
[    1.050821] nexus kernel: pci 0000:03:00.0: BAR 0 [mem 0xd0000000-0xdfffffff 64bit pref]
[    1.050977] nexus kernel: pci 0000:03:00.0: BAR 2 [mem 0xe0000000-0xe01fffff 64bit pref]
[    1.051151] nexus kernel: pci 0000:03:00.0: BAR 4 [io  0xf000-0xf0ff]
[    1.051309] nexus kernel: pci 0000:03:00.0: BAR 5 [mem 0xfce00000-0xfce7ffff]
[    1.051471] nexus kernel: pci 0000:03:00.0: ROM [mem 0xfce80000-0xfce9ffff pref]
[    1.051623] nexus kernel: pci 0000:03:00.0: PME# supported from D1 D2 D3hot D3cold
[    1.051780] nexus kernel: pci 0000:03:00.0: 126.016 Gb/s available PCIe bandwidth, limited by 8.0 GT/s PCIe x16 link at 0000:00>
[    1.051939] nexus kernel: pci 0000:03:00.1: [1002:ab38] type 00 class 0x040300 PCIe Legacy Endpoint
[    1.052132] nexus kernel: pci 0000:03:00.1: BAR 0 [mem 0xfcea0000-0xfcea3fff]
[    1.052284] nexus kernel: pci 0000:03:00.1: PME# supported from D1 D2 D3hot D3cold
[    1.052428] nexus kernel: pci 0000:02:00.0: PCI bridge to [bus 03]
[    1.052567] nexus kernel: pci 0000:04:00.0: [1022:43ee] type 00 class 0x0c0330 PCIe Legacy Endpoint
[    1.052703] nexus kernel: pci 0000:04:00.0: BAR 0 [mem 0xfcda0000-0xfcda7fff 64bit]
[    1.052843] nexus kernel: pci 0000:04:00.0: enabling Extended Tags
[    1.052988] nexus kernel: pci 0000:04:00.0: PME# supported from D3hot D3cold
[    1.053131] nexus kernel: pci 0000:04:00.1: [1022:43eb] type 00 class 0x010601 PCIe Legacy Endpoint
[    1.053268] nexus kernel: pci 0000:04:00.1: BAR 5 [mem 0xfcd80000-0xfcd9ffff]
[    1.053403] nexus kernel: pci 0000:04:00.1: ROM [mem 0xfcd00000-0xfcd7ffff pref]
[    1.053536] nexus kernel: pci 0000:04:00.1: enabling Extended Tags
[    1.053671] nexus kernel: pci 0000:04:00.1: PME# supported from D3hot D3cold
[    1.053816] nexus kernel: pci 0000:04:00.2: [1022:43e9] type 01 class 0x060400 PCIe Switch Upstream Port
[    1.053958] nexus kernel: pci 0000:04:00.2: PCI bridge to [bus 05-06]
[    1.054101] nexus kernel: pci 0000:04:00.2:   bridge window [io  0xe000-0xefff]
[    1.054237] nexus kernel: pci 0000:04:00.2:   bridge window [mem 0xfcc00000-0xfccfffff]
[    1.054373] nexus kernel: pci 0000:04:00.2: enabling Extended Tags
[    1.054508] nexus kernel: pci 0000:04:00.2: PME# supported from D3hot D3cold
[    1.054636] nexus kernel: pci 0000:00:02.1: PCI bridge to [bus 04-06]
[    1.054786] nexus kernel: pci 0000:05:09.0: [1022:43ea] type 01 class 0x060400 PCIe Switch Downstream Port
[    1.054931] nexus kernel: pci 0000:05:09.0: PCI bridge to [bus 06]
[    1.055079] nexus kernel: pci 0000:05:09.0:   bridge window [io  0xe000-0xefff]
[    1.055228] nexus kernel: pci 0000:05:09.0:   bridge window [mem 0xfcc00000-0xfccfffff]
[    1.055371] nexus kernel: pci 0000:05:09.0: enabling Extended Tags
[    1.055514] nexus kernel: pci 0000:05:09.0: PME# supported from D3hot D3cold
[    1.055649] nexus kernel: pci 0000:04:00.2: PCI bridge to [bus 05-06]
[    1.055816] nexus kernel: pci 0000:06:00.0: [10ec:8168] type 00 class 0x020000 PCIe Endpoint
[    1.055973] nexus kernel: pci 0000:06:00.0: BAR 0 [io  0xe000-0xe0ff]
[    1.056126] nexus kernel: pci 0000:06:00.0: BAR 2 [mem 0xfcc04000-0xfcc04fff 64bit]
[    1.056281] nexus kernel: pci 0000:06:00.0: BAR 4 [mem 0xfcc00000-0xfcc03fff 64bit]
[    1.056436] nexus kernel: pci 0000:06:00.0: supports D1 D2
[    1.056589] nexus kernel: pci 0000:06:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    1.056736] nexus kernel: pci 0000:05:09.0: PCI bridge to [bus 06]
[    1.056876] nexus kernel: pci 0000:07:00.0: [1022:145a] type 00 class 0x130000 PCIe Legacy Endpoint
[    1.057016] nexus kernel: pci 0000:07:00.0: enabling Extended Tags
[    1.057153] nexus kernel: pci 0000:07:00.1: [1002:1637] type 00 class 0x040300 PCIe Legacy Endpoint
[    1.057289] nexus kernel: pci 0000:07:00.1: BAR 0 [mem 0xfcb08000-0xfcb0bfff]
[    1.057429] nexus kernel: pci 0000:07:00.1: enabling Extended Tags
[    1.057563] nexus kernel: pci 0000:07:00.1: PME# supported from D1 D2 D3hot D3cold
[    1.057699] nexus kernel: pci 0000:07:00.2: [1022:15df] type 00 class 0x108000 PCIe Endpoint
[    1.057838] nexus kernel: pci 0000:07:00.2: BAR 2 [mem 0xfca00000-0xfcafffff]
[    1.057977] nexus kernel: pci 0000:07:00.2: BAR 5 [mem 0xfcb0c000-0xfcb0dfff]
[    1.058114] nexus kernel: pci 0000:07:00.2: enabling Extended Tags
[    1.058251] nexus kernel: pci 0000:07:00.3: [1022:1639] type 00 class 0x0c0330 PCIe Endpoint
[    1.058386] nexus kernel: pci 0000:07:00.3: BAR 0 [mem 0xfc900000-0xfc9fffff 64bit]
[    1.058525] nexus kernel: pci 0000:07:00.3: enabling Extended Tags
[    1.058660] nexus kernel: pci 0000:07:00.3: PME# supported from D0 D3hot D3cold
[    1.058808] nexus kernel: pci 0000:07:00.4: [1022:1639] type 00 class 0x0c0330 PCIe Endpoint
[    1.058949] nexus kernel: pci 0000:07:00.4: BAR 0 [mem 0xfc800000-0xfc8fffff 64bit]
[    1.059087] nexus kernel: pci 0000:07:00.4: enabling Extended Tags
[    1.059222] nexus kernel: pci 0000:07:00.4: PME# supported from D0 D3hot D3cold
[    1.059359] nexus kernel: pci 0000:07:00.6: [1022:15e3] type 00 class 0x040300 PCIe Endpoint
[    1.059499] nexus kernel: pci 0000:07:00.6: BAR 0 [mem 0xfcb00000-0xfcb07fff]
[    1.059634] nexus kernel: pci 0000:07:00.6: enabling Extended Tags
[    1.059774] nexus kernel: pci 0000:07:00.6: PME# supported from D0 D3hot D3cold
[    1.059902] nexus kernel: pci 0000:00:08.1: PCI bridge to [bus 07]
[    1.059909] nexus kernel: ACPI: PCI: Interrupt link LNKA configured for IRQ 0
[    1.059914] nexus kernel: ACPI: PCI: Interrupt link LNKB configured for IRQ 0
[    1.059919] nexus kernel: ACPI: PCI: Interrupt link LNKC configured for IRQ 0
[    1.059924] nexus kernel: ACPI: PCI: Interrupt link LNKD configured for IRQ 0
[    1.059931] nexus kernel: ACPI: PCI: Interrupt link LNKE configured for IRQ 0
[    1.059935] nexus kernel: ACPI: PCI: Interrupt link LNKF configured for IRQ 0
[    1.059940] nexus kernel: ACPI: PCI: Interrupt link LNKG configured for IRQ 0
[    1.059947] nexus kernel: ACPI: PCI: Interrupt link LNKH configured for IRQ 0
[    1.059951] nexus kernel: iommu: Default domain type: Translated
[    1.059956] nexus kernel: iommu: DMA domain TLB invalidation policy: lazy mode
[    1.059960] nexus kernel: ACPI: bus type USB registered
[    1.059964] nexus kernel: usbcore: registered new interface driver usbfs
[    1.059968] nexus kernel: usbcore: registered new interface driver hub
[    1.059972] nexus kernel: usbcore: registered new device driver usb
[    1.059977] nexus kernel: efivars: Registered efivars operations
[    1.059981] nexus kernel: NetLabel: Initializing
[    1.059987] nexus kernel: NetLabel:  domain hash size = 128
[    1.059991] nexus kernel: NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
[    1.059996] nexus kernel: NetLabel:  unlabeled traffic allowed by default
[    1.060000] nexus kernel: PCI: Using ACPI for IRQ routing
[    1.060004] nexus kernel: PCI: pci_cache_line_size set to 64 bytes
[    1.060009] nexus kernel: e820: register RAM buffer resource [mem 0x09ccf000-0x0bffffff]
[    1.060014] nexus kernel: e820: register RAM buffer resource [mem 0x0a200000-0x0bffffff]
[    1.060018] nexus kernel: e820: register RAM buffer resource [mem 0x0b000000-0x0bffffff]
[    1.060024] nexus kernel: e820: register RAM buffer resource [mem 0xb4ec5000-0xb7ffffff]
[    1.060029] nexus kernel: e820: register RAM buffer resource [mem 0xb70a7000-0xb7ffffff]
[    1.060033] nexus kernel: e820: register RAM buffer resource [mem 0xb8938000-0xbbffffff]
[    1.060037] nexus kernel: e820: register RAM buffer resource [mem 0xbe000000-0xbfffffff]
[    1.060042] nexus kernel: e820: register RAM buffer resource [mem 0x83e300000-0x83fffffff]
[    1.060196] nexus kernel: pci 0000:03:00.0: vgaarb: setting as boot VGA device
[    1.060347] nexus kernel: pci 0000:03:00.0: vgaarb: bridge control possible
[    1.060498] nexus kernel: pci 0000:03:00.0: vgaarb: VGA device added: decodes=io+mem,owns=none,locks=none
[    1.060504] nexus kernel: vgaarb: loaded
[    1.060508] nexus kernel: hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    1.060514] nexus kernel: hpet0: 3 comparators, 32-bit 14.318180 MHz counter
[    1.060519] nexus kernel: clocksource: Switched to clocksource tsc-early
[    1.060523] nexus kernel: VFS: Disk quotas dquot_6.6.0
[    1.060528] nexus kernel: VFS: Dquot-cache hash table entries: 512 (4096 bytes)
[    1.060683] nexus kernel: acpi PNP0C01:00: Reserved [mem 0xf0000000-0xf7ffffff]
[    1.060843] nexus kernel: acpi PNP0C02:00: Reserved [mem 0xfeb80000-0xfebfffff]
[    1.061024] nexus kernel: acpi PNP0C02:01: Could not reserve [mem 0x1000000000000 window]
[    1.061186] nexus kernel: acpi PNP0C02:02: Reserved [mem 0xfd200000-0xfd2fffff]
[    1.061352] nexus kernel: acpi PNP0C02:03: Reserved [io  0x0a00-0x0a2f]
[    1.061503] nexus kernel: acpi PNP0C02:03: Reserved [io  0x0a30-0x0a3f]
[    1.061654] nexus kernel: acpi PNP0C02:03: Reserved [io  0x0a40-0x0a4f]
[    1.061808] nexus kernel: acpi PNP0C02:03: Reserved [mem 0xfe000000-0xfe00ffff]
[    1.061965] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0010-0x001f]
[    1.062110] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0022-0x003f]
[    1.062253] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0063]
[    1.062399] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0065]
[    1.062541] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0067-0x006f]
[    1.062683] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0072-0x007f]
[    1.062829] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0080]
[    1.062975] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0084-0x0086]
[    1.063118] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0088]
[    1.063266] nexus kernel: acpi PNP0C02:04: Skipped [io  0x008c-0x008e]
[    1.063409] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0090-0x009f]
[    1.063555] nexus kernel: acpi PNP0C02:04: Skipped [io  0x00a2-0x00bf]
[    1.063696] nexus kernel: acpi PNP0C02:04: Skipped [io  0x00b1]
[    1.063843] nexus kernel: acpi PNP0C02:04: Skipped [io  0x00e0-0x00ef]
[    1.063989] nexus kernel: acpi PNP0C02:04: Reserved [io  0x04d0-0x04d1]
[    1.064132] nexus kernel: acpi PNP0C02:04: Reserved [io  0x040b]
[    1.064274] nexus kernel: acpi PNP0C02:04: Reserved [io  0x04d6]
[    1.064415] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c00-0x0c01]
[    1.064557] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c14]
[    1.064703] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c50-0x0c51]
[    1.064848] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c52]
[    1.065000] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c6c]
[    1.065144] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c6f]
[    1.065286] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0cd8-0x0cdf]
[    1.065428] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0800-0x089f]
[    1.065569] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0b00-0x0b0f]
[    1.065711] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0b20-0x0b3f]
[    1.065857] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0900-0x090f]
[    1.066008] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0910-0x091f]
[    1.066150] nexus kernel: acpi PNP0C02:04: Could not reserve [mem 0xfec00000-0xfec00fff]
[    1.066291] nexus kernel: acpi PNP0C02:04: Could not reserve [mem 0xfec01000-0xfec01fff]
[    1.066432] nexus kernel: acpi PNP0C02:04: Reserved [mem 0xfedc0000-0xfedc0fff]
[    1.066573] nexus kernel: acpi PNP0C02:04: Reserved [mem 0xfee00000-0xfee00fff]
[    1.066715] nexus kernel: acpi PNP0C02:04: Could not reserve [mem 0xfed80000-0xfed8ffff]
[    1.066860] nexus kernel: acpi PNP0C02:04: Reserved [mem 0xfec10000-0xfec10fff]
[    1.067006] nexus kernel: acpi PNP0C02:04: Reserved [mem 0xff000000-0xffffffff]
[    1.067015] nexus kernel: pnp: PnP ACPI init
[    1.067145] nexus kernel: pnp 00:00: [dma 0 disabled]
[    1.067152] nexus kernel: pnp: PnP ACPI: found 1 devices
[    1.067157] nexus kernel: clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    1.067161] nexus kernel: NET: Registered PF_INET protocol family
[    1.067166] nexus kernel: IP idents hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    1.067171] nexus kernel: tcp_listen_portaddr_hash hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    1.067176] nexus kernel: Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    1.067183] nexus kernel: TCP established hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    1.067187] nexus kernel: TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    1.067191] nexus kernel: TCP: Hash tables configured (established 262144 bind 65536)
[    1.067196] nexus kernel: MPTCP token hash table entries: 32768 (order: 8, 786432 bytes, linear)
[    1.067200] nexus kernel: UDP hash table entries: 16384 (order: 8, 1048576 bytes, linear)
[    1.067205] nexus kernel: NET: Registered PF_UNIX/PF_LOCAL protocol family
[    1.067209] nexus kernel: NET: Registered PF_XDP protocol family
[    1.067355] nexus kernel: pci 0000:02:00.0: PCI bridge to [bus 03]
[    1.067499] nexus kernel: pci 0000:02:00.0:   bridge window [io  0xf000-0xffff]
[    1.067647] nexus kernel: pci 0000:02:00.0:   bridge window [mem 0xfce00000-0xfcefffff]
[    1.067796] nexus kernel: pci 0000:02:00.0:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.067934] nexus kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
[    1.068076] nexus kernel: pci 0000:01:00.0:   bridge window [io  0xf000-0xffff]
[    1.068212] nexus kernel: pci 0000:01:00.0:   bridge window [mem 0xfce00000-0xfcefffff]
[    1.068347] nexus kernel: pci 0000:01:00.0:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.068475] nexus kernel: pci 0000:00:01.1: PCI bridge to [bus 01-03]
[    1.068603] nexus kernel: pci 0000:00:01.1:   bridge window [io  0xf000-0xffff]
[    1.068738] nexus kernel: pci 0000:00:01.1:   bridge window [mem 0xfce00000-0xfcffffff]
[    1.068868] nexus kernel: pci 0000:00:01.1:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.069021] nexus kernel: pci 0000:05:09.0: PCI bridge to [bus 06]
[    1.069165] nexus kernel: pci 0000:05:09.0:   bridge window [io  0xe000-0xefff]
[    1.069309] nexus kernel: pci 0000:05:09.0:   bridge window [mem 0xfcc00000-0xfccfffff]
[    1.069445] nexus kernel: pci 0000:04:00.2: PCI bridge to [bus 05-06]
[    1.069581] nexus kernel: pci 0000:04:00.2:   bridge window [io  0xe000-0xefff]
[    1.069716] nexus kernel: pci 0000:04:00.2:   bridge window [mem 0xfcc00000-0xfccfffff]
[    1.069848] nexus kernel: pci 0000:00:02.1: PCI bridge to [bus 04-06]
[    1.069981] nexus kernel: pci 0000:00:02.1:   bridge window [io  0xe000-0xefff]
[    1.070110] nexus kernel: pci 0000:00:02.1:   bridge window [mem 0xfcc00000-0xfcdfffff]
[    1.070243] nexus kernel: pci 0000:00:08.1: PCI bridge to [bus 07]
[    1.070371] nexus kernel: pci 0000:00:08.1:   bridge window [mem 0xfc800000-0xfcbfffff]
[    1.070496] nexus kernel: pci_bus 0000:00: resource 4 [io  0x0000-0x03af window]
[    1.070619] nexus kernel: pci_bus 0000:00: resource 5 [io  0x03e0-0x0cf7 window]
[    1.070743] nexus kernel: pci_bus 0000:00: resource 6 [io  0x03b0-0x03df window]
[    1.070865] nexus kernel: pci_bus 0000:00: resource 7 [io  0x0d00-0xffff window]
[    1.070991] nexus kernel: pci_bus 0000:00: resource 8 [mem 0x000a0000-0x000dffff window]
[    1.071113] nexus kernel: pci_bus 0000:00: resource 9 [mem 0xc0000000-0xfec2ffff window]
[    1.071235] nexus kernel: pci_bus 0000:00: resource 10 [mem 0xfee00000-0xffffffff window]
[    1.071378] nexus kernel: pci_bus 0000:01: resource 0 [io  0xf000-0xffff]
[    1.071509] nexus kernel: pci_bus 0000:01: resource 1 [mem 0xfce00000-0xfcffffff]
[    1.071646] nexus kernel: pci_bus 0000:01: resource 2 [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.071800] nexus kernel: pci_bus 0000:02: resource 0 [io  0xf000-0xffff]
[    1.071941] nexus kernel: pci_bus 0000:02: resource 1 [mem 0xfce00000-0xfcefffff]
[    1.072084] nexus kernel: pci_bus 0000:02: resource 2 [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.072245] nexus kernel: pci_bus 0000:03: resource 0 [io  0xf000-0xffff]
[    1.072395] nexus kernel: pci_bus 0000:03: resource 1 [mem 0xfce00000-0xfcefffff]
[    1.072540] nexus kernel: pci_bus 0000:03: resource 2 [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.072681] nexus kernel: pci_bus 0000:04: resource 0 [io  0xe000-0xefff]
[    1.072815] nexus kernel: pci_bus 0000:04: resource 1 [mem 0xfcc00000-0xfcdfffff]
[    1.072972] nexus kernel: pci_bus 0000:05: resource 0 [io  0xe000-0xefff]
[    1.073112] nexus kernel: pci_bus 0000:05: resource 1 [mem 0xfcc00000-0xfccfffff]
[    1.073267] nexus kernel: pci_bus 0000:06: resource 0 [io  0xe000-0xefff]
[    1.073417] nexus kernel: pci_bus 0000:06: resource 1 [mem 0xfcc00000-0xfccfffff]
[    1.073556] nexus kernel: pci_bus 0000:07: resource 1 [mem 0xfc800000-0xfcbfffff]
[    1.073709] nexus kernel: pci 0000:03:00.0: disabling ATS
[    1.073867] nexus kernel: pci 0000:03:00.1: D0 power state depends on 0000:03:00.0
[    1.074008] nexus kernel: pci 0000:07:00.3: extending delay after power-on from D3hot to 20 msec
[    1.074144] nexus kernel: pci 0000:07:00.4: extending delay after power-on from D3hot to 20 msec
[    1.074150] nexus kernel: PCI: CLS 64 bytes, default 64
[    1.074282] nexus kernel: pci 0000:00:00.2: AMD-Vi: IOMMU performance counters supported
[    1.074288] nexus kernel: Trying to unpack rootfs image as initramfs...
[    1.074414] nexus kernel: pci 0000:00:01.0: Adding to iommu group 0
[    1.074543] nexus kernel: pci 0000:00:01.1: Adding to iommu group 1
[    1.074671] nexus kernel: pci 0000:00:02.0: Adding to iommu group 2
[    1.074804] nexus kernel: pci 0000:00:02.1: Adding to iommu group 3
[    1.074934] nexus kernel: pci 0000:00:08.0: Adding to iommu group 4
[    1.075067] nexus kernel: pci 0000:00:08.1: Adding to iommu group 5
[    1.075201] nexus kernel: pci 0000:00:14.0: Adding to iommu group 6
[    1.075330] nexus kernel: pci 0000:00:14.3: Adding to iommu group 6
[    1.075464] nexus kernel: pci 0000:00:18.0: Adding to iommu group 7
[    1.075593] nexus kernel: pci 0000:00:18.1: Adding to iommu group 7
[    1.075723] nexus kernel: pci 0000:00:18.2: Adding to iommu group 7
[    1.075855] nexus kernel: pci 0000:00:18.3: Adding to iommu group 7
[    1.075988] nexus kernel: pci 0000:00:18.4: Adding to iommu group 7
[    1.076117] nexus kernel: pci 0000:00:18.5: Adding to iommu group 7
[    1.076249] nexus kernel: pci 0000:00:18.6: Adding to iommu group 7
[    1.076378] nexus kernel: pci 0000:00:18.7: Adding to iommu group 7
[    1.076514] nexus kernel: pci 0000:01:00.0: Adding to iommu group 8
[    1.076658] nexus kernel: pci 0000:02:00.0: Adding to iommu group 9
[    1.076814] nexus kernel: pci 0000:03:00.0: Adding to iommu group 10
[    1.076973] nexus kernel: pci 0000:03:00.1: Adding to iommu group 11
[    1.077112] nexus kernel: pci 0000:04:00.0: Adding to iommu group 12
[    1.077252] nexus kernel: pci 0000:04:00.1: Adding to iommu group 12
[    1.077389] nexus kernel: pci 0000:04:00.2: Adding to iommu group 12
[    1.077533] nexus kernel: pci 0000:05:09.0: Adding to iommu group 12
[    1.077684] nexus kernel: pci 0000:06:00.0: Adding to iommu group 12
[    1.077822] nexus kernel: pci 0000:07:00.0: Adding to iommu group 13
[    1.077962] nexus kernel: pci 0000:07:00.1: Adding to iommu group 14
[    1.078099] nexus kernel: pci 0000:07:00.2: Adding to iommu group 15
[    1.078234] nexus kernel: pci 0000:07:00.3: Adding to iommu group 16
[    1.078370] nexus kernel: pci 0000:07:00.4: Adding to iommu group 17
[    1.078509] nexus kernel: pci 0000:07:00.6: Adding to iommu group 18
[    1.078516] nexus kernel: AMD-Vi: Extended features (0x206d73ef22254ade, 0x0): PPR X2APIC NX GT IA GA PC GA_vAPIC
[    1.078521] nexus kernel: AMD-Vi: Interrupt remapping enabled
[    1.078525] nexus kernel: AMD-Vi: X2APIC enabled
[    1.078530] nexus kernel: AMD-Vi: Virtual APIC enabled
[    1.078535] nexus kernel: PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    1.078539] nexus kernel: software IO TLB: mapped [mem 0x00000000ab181000-0x00000000af181000] (64MB)
[    1.078543] nexus kernel: LVT offset 0 assigned for vector 0x400
[    1.078550] nexus kernel: perf: AMD IBS detected (0x000003ff)
[    1.078555] nexus kernel: perf/amd_iommu: Detected AMD IOMMU #0 (2 banks, 4 counters/bank).
[    1.078559] nexus kernel: Initialise system trusted keyrings
[    1.078564] nexus kernel: Key type blacklist registered
[    1.078568] nexus kernel: workingset: timestamp_bits=40 (anon: 35) max_order=23 bucket_order=0 (anon: 0)
[    1.078573] nexus kernel: integrity: Platform Keyring initialized
[    1.078577] nexus kernel: integrity: Machine keyring initialized
[    1.078581] nexus kernel: Key type asymmetric registered
[    1.078586] nexus kernel: Asymmetric key parser 'x509' registered
[    1.078592] nexus kernel: Block layer SCSI generic (bsg) driver version 0.4 loaded (major 248)
[    1.078596] nexus kernel: io scheduler mq-deadline registered
[    1.078600] nexus kernel: io scheduler kyber registered
[    1.078732] nexus kernel: pcieport 0000:00:01.1: PME: Signaling with IRQ 28
[    1.078861] nexus kernel: pcieport 0000:00:02.1: PME: Signaling with IRQ 29
[    1.078994] nexus kernel: pcieport 0000:00:08.1: PME: Signaling with IRQ 30
[    1.079001] nexus kernel: Monitor-Mwait will be used to enter C-1 state
[    1.079005] nexus kernel: Estimated ratio of average max frequency by base frequency (times 1024): 1119
[    1.079136] nexus kernel: tpm_crb_acpi MSFT0101:00: Disabling hwrng
[    1.079147] nexus kernel: ACPI: bus type drm_connector registered
[    1.079152] nexus kernel: usbcore: registered new interface driver usbserial_generic
[    1.079156] nexus kernel: usbserial: USB Serial support registered for generic
[    1.079316] nexus kernel: simple-framebuffer simple-framebuffer.0: [drm] Registered 1 planes with drm panic
[    1.079324] nexus kernel: [drm] Initialized simpledrm 1.0.0 for simple-framebuffer.0 on minor 0
[    1.079329] nexus kernel: fbcon: Deferring console take-over
[    1.079484] nexus kernel: simple-framebuffer simple-framebuffer.0: [drm] fb0: simpledrmdrmfb frame buffer device
[    1.079494] nexus kernel: pstore: Using crash dump compression: deflate
[    1.079498] nexus kernel: pstore: Registered efi_pstore as persistent store backend
[    1.079503] nexus kernel: drop_monitor: Initializing network drop monitor service
[    1.079507] nexus kernel: NET: Registered PF_INET6 protocol family
[    1.079512] nexus kernel: Segment Routing with IPv6
[    1.079516] nexus kernel: In-situ OAM (IOAM) with IPv6
[    1.079521] nexus kernel: x86/amd: Previous system reset reason [0x00080800]: software wrote 0x6 to reset control register 0xCF9
[    1.079525] nexus kernel: microcode: Current revision: 0x0a500012
[    1.079531] nexus kernel: microcode: Updated early from: 0x0a50000f
[    1.079536] nexus kernel: resctrl: L3 allocation detected
[    1.079540] nexus kernel: resctrl: MB allocation detected
[    1.079544] nexus kernel: resctrl: L3 monitoring detected
[    1.079548] nexus kernel: IPI shorthand broadcast: enabled
[    1.079553] nexus kernel: sched_clock: Marking stable (453405832, 318444)->(466641752, -12917476)
[    1.079557] nexus kernel: registered taskstats version 1
[    1.079562] nexus kernel: Loading compiled-in X.509 certificates
[    1.079566] nexus kernel: Demotion targets for Node 0: null
[    1.079572] nexus kernel: Key type .fscrypt registered
[    1.079577] nexus kernel: Key type fscrypt-provisioning registered
[    1.079581] nexus kernel: ima: Allocated hash algorithm: sha1
[    1.079586] nexus kernel: ima: No architecture policies found
[    1.079590] nexus kernel: PM:   Magic number: 2:22:486
[    1.079594] nexus kernel: RAS: Correctable Errors collector initialized.
[    1.079599] nexus kernel: clk: Disabling unused clocks
[    1.079603] nexus kernel: PM: genpd: Disabling unused power domains
[    1.079607] nexus kernel: Freeing initrd memory: 28036K
[    1.079613] nexus kernel: Freeing unused decrypted memory: 2028K
[    1.079617] nexus kernel: Freeing unused kernel image (initmem) memory: 6864K
[    1.079622] nexus kernel: Write protecting the kernel read-only data: 36864k
[    1.079626] nexus kernel: Freeing unused kernel image (text/rodata gap) memory: 1444K
[    1.079631] nexus kernel: Freeing unused kernel image (rodata/data gap) memory: 1512K
[    1.079635] nexus kernel: x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    1.079639] nexus kernel: Run /init as init process
[    1.079644] nexus kernel:   with arguments:
[    1.079648] nexus kernel:     /init
[    1.079654] nexus kernel:   with environment:
[    1.079658] nexus kernel:     HOME=/
[    1.079663] nexus kernel:     TERM=linux
[    1.079667] nexus kernel: autofs4: module verification failed: signature and/or required key missing - tainting kernel
[    1.079673] nexus systemd[1]: Inserted module 'autofs4'
[    1.079679] nexus systemd[1]: Successfully made /usr/ read-only.
[    1.079685] nexus systemd[1]: systemd 262 running in system mode (+PAM +AUDIT -SELINUX +APPARMOR +IMA +IPE +SMACK +SECCOMP -GNU>
[    1.079691] nexus systemd[1]: Detected architecture x86-64.
[    1.079696] nexus systemd[1]: Running in initrd.
[    1.079701] nexus kernel: fbcon: Taking over console
[    1.079706] nexus kernel: Console: switching to colour frame buffer device 240x67
[    1.079710] nexus systemd[1]: Initializing machine ID from random generator.
[    1.079715] nexus systemd[1]: Hostname set to <nexus>.
[    1.079721] nexus systemd[1]: bpf-restrict-fs: LSM BPF program attached
[    1.079729] nexus systemd[1]: Queued start job for default target Initrd Default Target.
[    1.079734] nexus systemd[1]: Created slice Slice /system/modprobe.
[    1.079740] nexus systemd[1]: Started Dispatch Password Requests to Console Directory Watch.
[    1.079745] nexus systemd[1]: Expecting device /dev/disk/by-uuid/fdcf9abe-f568-453a-ac2e-9201fddd61b9...
[    1.079750] nexus systemd[1]: Reached target Path Units.
[    1.079755] nexus systemd[1]: Reached target Slice Units.
[    1.079760] nexus systemd[1]: Reached target Swaps.
[    1.079765] nexus systemd[1]: Reached target Timer Units.
[    1.079769] nexus systemd[1]: Listening on D-Bus System Message Bus Socket.
[    1.079774] nexus systemd[1]: Listening on Journal Socket (/dev/log).
[    1.079780] nexus systemd[1]: Listening on Journal Sockets.
[    1.079785] nexus systemd[1]: Listening on udev Kernel Socket.
[    1.079790] nexus systemd[1]: Listening on udev Varlink Socket.
[    1.079794] nexus systemd[1]: Reached target Socket Units.
[    1.079799] nexus systemd[1]: Starting Create List of Static Device Nodes...
[    1.079804] nexus systemd[1]: Starting Load Kernel Module configfs...
[    1.079809] nexus systemd[1]: Starting Journal Service...
[    1.079813] nexus systemd[1]: Starting Load Kernel Modules...
[    1.079819] nexus systemd[1]: Early TPM SRK Setup skipped, unmet condition check ConditionSecurity=measured-os
[    1.079825] nexus systemd[1]: Starting Coldplug All udev Devices...
[    1.079830] nexus systemd[1]: Finished Create List of Static Device Nodes.
[    1.079834] nexus systemd[1]: Starting Create Static Device Nodes in /dev gracefully...
[    1.079839] nexus systemd[1]: modprobe@configfs.service: Deactivated successfully.
[    1.079844] nexus systemd[1]: Finished Load Kernel Module configfs.
[    1.079849] nexus systemd[1]: Kernel Configuration File System skipped, unmet condition check ConditionPathExists=/sys/kernel/c>
[    1.079854] nexus systemd[1]: Finished Create Static Device Nodes in /dev gracefully.
[    1.079858] nexus systemd[1]: Starting Create Static Device Nodes in /dev...
[    1.079882] nexus systemd-journald[139]: Collecting audit messages is disabled.
[    1.079897] nexus kernel: device-mapper: core: CONFIG_IMA_DISABLE_HTABLE is disabled. Duplicate IMA measurements will not be re>
[    1.079902] nexus kernel: device-mapper: ioctl: 4.50.0-ioctl (2025-04-28) initialised: dm-devel@lists.linux.dev
[    1.079907] nexus systemd[1]: Finished Load Kernel Modules.
[    1.079912] nexus systemd[1]: Finished Create Static Device Nodes in /dev.
[    1.079919] nexus systemd[1]: Reached target Preparation for Local File Systems.
[    1.079924] nexus systemd[1]: Reached target Local File Systems.
[    1.079928] nexus systemd[1]: Starting Apply Kernel Variables...
[    1.079933] nexus systemd[1]: Starting Rule-based Manager for Device Events and Files...
[    1.079938] nexus systemd[1]: Finished Apply Kernel Variables.
[    1.079943] nexus systemd[1]: Started Rule-based Manager for Device Events and Files.
[    1.080326] nexus systemd[1]: Started Journal Service.
[    1.255063] nexus kernel: SCSI subsystem initialized
[    1.269013] nexus kernel: xhci_hcd 0000:04:00.0: xHCI Host Controller
[    1.269307] nexus kernel: xhci_hcd 0000:04:00.0: new USB bus registered, assigned bus number 1
[    1.278048] nexus kernel: libata version 3.00 loaded.
[    1.284011] nexus kernel: ahci 0000:04:00.1: SSS flag set, parallel bus scan disabled
[    1.284269] nexus kernel: ahci 0000:04:00.1: AHCI vers 0001.0301, 32 command slots, 6 Gbps, SATA mode
[    1.284486] nexus kernel: ahci 0000:04:00.1: 6/6 ports implemented (port mask 0x3f)
[    1.284690] nexus kernel: ahci 0000:04:00.1: flags: 64bit ncq sntf stag pm led clo only pmp pio slum part sxs deso sadm sds aps>
[    1.284919] nexus kernel: scsi host0: ahci
[    1.285110] nexus kernel: scsi host1: ahci
[    1.285276] nexus kernel: scsi host2: ahci
[    1.285442] nexus kernel: scsi host3: ahci
[    1.285611] nexus kernel: scsi host4: ahci
[    1.285772] nexus kernel: scsi host5: ahci
[    1.285932] nexus kernel: ata1: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80100 irq 37 lpm-pol 1 ext
[    1.285939] nexus kernel: ata2: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80180 irq 37 lpm-pol 1 ext
[    1.285945] nexus kernel: ata3: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80200 irq 37 lpm-pol 1 ext
[    1.285951] nexus kernel: ata4: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80280 irq 37 lpm-pol 1 ext
[    1.285957] nexus kernel: ata5: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80300 irq 37 lpm-pol 1 ext
[    1.285966] nexus kernel: ata6: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80380 irq 37 lpm-pol 1 ext
[    1.325010] nexus kernel: xhci_hcd 0000:04:00.0: hcc params 0x0200ef81 hci version 0x110 quirks 0x0000000000000010
[    1.325287] nexus kernel: xhci_hcd 0000:04:00.0: xHCI Host Controller
[    1.325523] nexus kernel: xhci_hcd 0000:04:00.0: new USB bus registered, assigned bus number 2
[    1.325790] nexus kernel: xhci_hcd 0000:04:00.0: Host supports USB 3.1 Enhanced SuperSpeed
[    1.326016] nexus kernel: usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 7.03
[    1.326234] nexus kernel: usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.326397] nexus kernel: usb usb1: Product: xHCI Host Controller
[    1.326570] nexus kernel: usb usb1: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.326734] nexus kernel: usb usb1: SerialNumber: 0000:04:00.0
[    1.326900] nexus kernel: hub 1-0:1.0: USB hub found
[    1.327183] nexus kernel: hub 1-0:1.0: 10 ports detected
[    1.327387] nexus kernel: usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.327555] nexus kernel: usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 7.03
[    1.327721] nexus kernel: usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.327846] nexus kernel: usb usb2: Product: xHCI Host Controller
[    1.327973] nexus kernel: usb usb2: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.328124] nexus kernel: usb usb2: SerialNumber: 0000:04:00.0
[    1.328245] nexus kernel: hub 2-0:1.0: USB hub found
[    1.328421] nexus kernel: hub 2-0:1.0: 4 ports detected
[    1.328591] nexus kernel: xhci_hcd 0000:07:00.3: xHCI Host Controller
[    1.328753] nexus kernel: xhci_hcd 0000:07:00.3: new USB bus registered, assigned bus number 3
[    1.328903] nexus kernel: xhci_hcd 0000:07:00.3: hcc params 0x0268ffe5 hci version 0x110 quirks 0x0000020000000010
[    1.329064] nexus kernel: xhci_hcd 0000:07:00.3: xHCI Host Controller
[    1.329214] nexus kernel: xhci_hcd 0000:07:00.3: new USB bus registered, assigned bus number 4
[    1.329366] nexus kernel: xhci_hcd 0000:07:00.3: Host supports USB 3.1 Enhanced SuperSpeed
[    1.329514] nexus kernel: usb usb3: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 7.03
[    1.329671] nexus kernel: usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.329799] nexus kernel: usb usb3: Product: xHCI Host Controller
[    1.329915] nexus kernel: usb usb3: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.330042] nexus kernel: usb usb3: SerialNumber: 0000:07:00.3
[    1.330163] nexus kernel: hub 3-0:1.0: USB hub found
[    1.330326] nexus kernel: hub 3-0:1.0: 4 ports detected
[    1.330480] nexus kernel: usb usb4: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.330633] nexus kernel: usb usb4: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 7.03
[    1.330783] nexus kernel: usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.330907] nexus kernel: usb usb4: Product: xHCI Host Controller
[    1.331035] nexus kernel: usb usb4: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.331153] nexus kernel: usb usb4: SerialNumber: 0000:07:00.3
[    1.331272] nexus kernel: hub 4-0:1.0: USB hub found
[    1.331431] nexus kernel: hub 4-0:1.0: 2 ports detected
[    1.331590] nexus kernel: xhci_hcd 0000:07:00.4: xHCI Host Controller
[    1.331742] nexus kernel: xhci_hcd 0000:07:00.4: new USB bus registered, assigned bus number 5
[    1.331890] nexus kernel: xhci_hcd 0000:07:00.4: hcc params 0x0268ffe5 hci version 0x110 quirks 0x0000020000000010
[    1.332045] nexus kernel: xhci_hcd 0000:07:00.4: xHCI Host Controller
[    1.332195] nexus kernel: xhci_hcd 0000:07:00.4: new USB bus registered, assigned bus number 6
[    1.332341] nexus kernel: xhci_hcd 0000:07:00.4: Host supports USB 3.1 Enhanced SuperSpeed
[    1.332490] nexus kernel: usb usb5: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 7.03
[    1.332647] nexus kernel: usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.332768] nexus kernel: usb usb5: Product: xHCI Host Controller
[    1.332884] nexus kernel: usb usb5: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.332998] nexus kernel: usb usb5: SerialNumber: 0000:07:00.4
[    1.333126] nexus kernel: hub 5-0:1.0: USB hub found
[    1.333291] nexus kernel: hub 5-0:1.0: 4 ports detected
[    1.333447] nexus kernel: usb usb6: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.333602] nexus kernel: usb usb6: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 7.03
[    1.333752] nexus kernel: usb usb6: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.333875] nexus kernel: usb usb6: Product: xHCI Host Controller
[    1.333993] nexus kernel: usb usb6: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.334122] nexus kernel: usb usb6: SerialNumber: 0000:07:00.4
[    1.334242] nexus kernel: hub 6-0:1.0: USB hub found
[    1.334402] nexus kernel: hub 6-0:1.0: 2 ports detected
[    1.439036] nexus kernel: tsc: Refined TSC clocksource calibration: 3593.263 MHz
[    1.439096] nexus kernel: clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x33cb774f9cc, max_idle_ns: 440795249908 ns
[    1.439108] nexus kernel: clocksource: Switched to clocksource tsc
[    1.567081] nexus kernel: usb 3-1: new full-speed USB device number 2 using xhci_hcd
[    1.567245] nexus kernel: usb 5-1: new full-speed USB device number 2 using xhci_hcd
[    1.628049] nexus kernel: usb 1-2: new low-speed USB device number 2 using xhci_hcd
[    1.693050] nexus kernel: usb 5-1: New USB device found, idVendor=8087, idProduct=1024, bcdDevice= 1.00
[    1.698040] nexus kernel: usb 3-1: New USB device found, idVendor=10d7, idProduct=b012, bcdDevice=88.91
[    1.711046] nexus kernel: usb 5-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    1.711361] nexus kernel: usb 5-1: Product: Philips SPA 20/93
[    1.711565] nexus kernel: usb 5-1: Manufacturer: Generic
[    1.711743] nexus kernel: usb 5-1: SerialNumber: 20170726905923
[    1.716042] nexus kernel: usb 3-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    1.716394] nexus kernel: usb 3-1: Product: general adapter
[    1.716592] nexus kernel: usb 3-1: Manufacturer: Actions
[    1.716758] nexus kernel: usb 3-1: SerialNumber: ACTIONS1234
[    1.759048] nexus kernel: ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    1.759112] nexus kernel: ata1.00: Model 'Samsung SSD 860 EVO 250GB', rev 'RVT02B6Q', applying quirks: noncqtrim zeroaftertrim >
[    1.759125] nexus kernel: ata1.00: supports DRM functions and may not be fully accessible
[    1.759135] nexus kernel: ata1.00: ATA-11: Samsung SSD 860 EVO 250GB, RVT02B6Q, max UDMA/133
[    1.760041] nexus kernel: ata1.00: 488397168 sectors, multi 1: LBA48 NCQ (depth 32), AA
[    1.764262] nexus kernel: ata1.00: Features: Trust Dev-Sleep DIPM NCQ-sndrcv
[    1.764285] nexus kernel: ata1.00: supports DRM functions and may not be fully accessible
[    1.769262] nexus kernel: ata1.00: configured for UDMA/133
[    1.779032] nexus kernel: ahci 0000:04:00.1: port does not support device sleep
[    1.779389] nexus kernel: scsi 0:0:0:0: Direct-Access     ATA      Samsung SSD 860  2B6Q PQ: 0 ANSI: 5
[    1.830079] nexus kernel: usb 5-2: new full-speed USB device number 3 using xhci_hcd
[    1.902051] nexus kernel: usb 1-2: New USB device found, idVendor=1bcf, idProduct=0005, bcdDevice= 0.14
[    1.923035] nexus kernel: usb 1-2: New USB device strings: Mfr=0, Product=2, SerialNumber=0
[    1.923346] nexus kernel: usb 1-2: Product: USB Optical Mouse
[    1.964052] nexus kernel: usb 5-2: New USB device found, idVendor=0c45, idProduct=8006, bcdDevice= 1.03
[    1.979048] nexus kernel: usb 5-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    1.979357] nexus kernel: usb 5-2: Product: USB DEVICE
[    1.979567] nexus kernel: usb 5-2: Manufacturer: SONIX
[    2.104081] nexus kernel: usb 1-6: new low-speed USB device number 3 using xhci_hcd
[    2.255050] nexus kernel: ata2: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    2.255121] nexus kernel: ata2.00: ATA-9: SanDisk SSD PLUS 120GB, UE5100RL, max UDMA/133
[    2.255136] nexus kernel: ata2.00: 234455040 sectors, multi 1: LBA48 NCQ (depth 32)
[    2.256050] nexus kernel: ata2.00: Features: Dev-Sleep DIPM
[    2.262053] nexus kernel: ata2.00: configured for UDMA/133
[    2.273033] nexus kernel: ahci 0000:04:00.1: port does not support device sleep
[    2.273400] nexus kernel: scsi 1:0:0:0: Direct-Access     ATA      SanDisk SSD PLUS 00RL PQ: 0 ANSI: 5
[    2.376081] nexus kernel: usb 1-6: New USB device found, idVendor=093a, idProduct=2510, bcdDevice= 1.00
[    2.401046] nexus kernel: usb 1-6: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    2.401352] nexus kernel: usb 1-6: Product: USB Optical Mouse
[    2.401552] nexus kernel: usb 1-6: Manufacturer: PixArt
[    2.581050] nexus kernel: usb 1-10: new full-speed USB device number 4 using xhci_hcd
[    2.743081] nexus kernel: ata3: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    2.771051] nexus kernel: ata3.00: ATA-10: ST4000DM004-2U9104, 0001, max UDMA/133
[    2.915232] nexus kernel: usb 1-10: New USB device found, idVendor=048d, idProduct=5702, bcdDevice= 0.01
[    2.960046] nexus kernel: usb 1-10: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    2.960356] nexus kernel: usb 1-10: Product: ITE Device
[    2.960555] nexus kernel: usb 1-10: Manufacturer: ITE Tech. Inc.
[    2.971049] nexus kernel: ata3.00: 7814037168 sectors, multi 16: LBA48 NCQ (depth 32), AA
[    2.971120] nexus kernel: ata3.00: Features: HIPM DIPM
[    3.021081] nexus kernel: ata3.00: configured for UDMA/133
[    3.042051] nexus kernel: scsi 2:0:0:0: Direct-Access     ATA      ST4000DM004-2U91 0001 PQ: 0 ANSI: 5
[    3.519085] nexus kernel: ata4: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    3.519134] nexus kernel: ata4.00: ATA-10: WDC WD10EZEX-22MFCA0, 01.01A01, max UDMA/133
[    3.521054] nexus kernel: ata4.00: 1953525168 sectors, multi 16: LBA48 NCQ (depth 32), AA
[    3.521118] nexus kernel: ata4.00: Features: HIPM NCQ-prio
[    3.523053] nexus kernel: ata4.00: configured for UDMA/133
[    3.534036] nexus kernel: scsi 3:0:0:0: Direct-Access     ATA      WDC WD10EZEX-22M 1A01 PQ: 0 ANSI: 5
[    4.575051] nexus kernel: ata5: failed to resume link (SControl 0)
[    4.575122] nexus kernel: ata5: SATA link down (SStatus 0 SControl 0)
[    4.896076] nexus kernel: ata6: SATA link down (SStatus 0 SControl 300)
[    4.946017] nexus kernel: ata1.00: Enabling discard_zeroes_data
[    4.946064] nexus kernel: sd 1:0:0:0: [sdb] 234455040 512-byte logical blocks: (120 GB/112 GiB)
[    4.946345] nexus kernel: sd 0:0:0:0: [sda] 488397168 512-byte logical blocks: (250 GB/233 GiB)
[    4.946609] nexus kernel: sd 1:0:0:0: [sdb] Write Protect is off
[    4.946860] nexus kernel: sd 1:0:0:0: [sdb] Mode Sense: 00 3a 00 00
[    4.947118] nexus kernel: sd 0:0:0:0: [sda] Write Protect is off
[    4.947379] nexus kernel: sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    4.947639] nexus kernel: sd 3:0:0:0: [sdd] 1953525168 512-byte logical blocks: (1.00 TB/932 GiB)
[    4.947881] nexus kernel: sd 2:0:0:0: [sdc] 7814037168 512-byte logical blocks: (4.00 TB/3.64 TiB)
[    4.948131] nexus kernel: sd 3:0:0:0: [sdd] 4096-byte physical blocks
[    4.948366] nexus kernel: sd 1:0:0:0: [sdb] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    4.948600] nexus kernel: sd 2:0:0:0: [sdc] 4096-byte physical blocks
[    4.948835] nexus kernel: sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    4.949094] nexus kernel: sd 2:0:0:0: [sdc] Write Protect is off
[    4.949330] nexus kernel: sd 3:0:0:0: [sdd] Write Protect is off
[    4.949565] nexus kernel: sd 2:0:0:0: [sdc] Mode Sense: 00 3a 00 00
[    4.949800] nexus kernel: sd 3:0:0:0: [sdd] Mode Sense: 00 3a 00 00
[    4.950049] nexus kernel: sd 1:0:0:0: [sdb] Preferred minimum I/O size 512 bytes
[    4.950286] nexus kernel: sd 2:0:0:0: [sdc] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    4.950518] nexus kernel: sd 3:0:0:0: [sdd] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    4.950751] nexus kernel: sd 2:0:0:0: [sdc] Preferred minimum I/O size 4096 bytes
[    4.950984] nexus kernel: sd 0:0:0:0: [sda] Preferred minimum I/O size 512 bytes
[    4.951210] nexus kernel: sd 3:0:0:0: [sdd] Preferred minimum I/O size 4096 bytes
[    4.956018] nexus kernel: ata1.00: Enabling discard_zeroes_data
[    4.957010] nexus kernel: hid: raw HID events driver (C) Jiri Kosina
[    4.971010] nexus kernel:  sdb: sdb1 sdb2 sdb3
[    4.971026] nexus kernel: sd 1:0:0:0: [sdb] Attached SCSI disk
[    4.973012] nexus kernel:  sda: sda1 sda2 sda3
[    4.974022] nexus kernel: sd 0:0:0:0: [sda] supports TCG Opal
[    4.974265] nexus kernel: sd 0:0:0:0: [sda] Attached SCSI disk
[    5.006035] nexus kernel:  sdc: sdc1
[    5.006088] nexus kernel: sd 2:0:0:0: [sdc] Attached SCSI disk
[    5.609039] nexus kernel:  sdd: sdd1
[    5.609115] nexus kernel: sd 3:0:0:0: [sdd] Attached SCSI disk
[    5.663020] nexus kernel: usbcore: registered new interface driver usbhid
[    5.663048] nexus kernel: usbhid: USB HID core driver
[    5.666009] nexus kernel: input: Generic Philips SPA 20/93 as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-1/5-1:1.3/00>
[    5.717013] nexus kernel: hid-generic 0003:8087:1024.0001: input,hidraw0: USB HID v2.01 Device [Generic Philips SPA 20/93] on u>
[    5.717338] nexus kernel: input: USB Optical Mouse as /devices/pci0000:00/0000:00:02.1/0000:04:00.0/usb1/1-2/1-2:1.0/0003:1BCF:>
[    5.717349] nexus kernel: hid-generic 0003:1BCF:0005.0002: input,hidraw1: USB HID v1.10 Mouse [USB Optical Mouse] on usb-0000:0>
[    5.717598] nexus kernel: input: SONIX USB DEVICE as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:1.0/0003:0C45:8>
[    5.751012] nexus kernel: EXT4-fs (sda2): mounted filesystem fdcf9abe-f568-453a-ac2e-9201fddd61b9 r/w with ordered data mode. Q>
[    5.768011] nexus kernel: hid-generic 0003:0C45:8006.0003: input,hidraw2: USB HID v1.11 Keyboard [SONIX USB DEVICE] on usb-0000>
[    5.768357] nexus kernel: input: SONIX USB DEVICE Consumer Control as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5->
[    5.819021] nexus kernel: input: SONIX USB DEVICE System Control as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:>
[    5.819065] nexus kernel: input: SONIX USB DEVICE Keyboard as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:1.1/00>
[    5.819077] nexus kernel: input: SONIX USB DEVICE Mouse as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:1.1/0003:>
[    5.819087] nexus kernel: input: SONIX USB DEVICE as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:1.1/0003:0C45:8>
[    5.819098] nexus kernel: hid-generic 0003:0C45:8006.0004: input,hiddev96,hidraw3: USB HID v1.11 Keyboard [SONIX USB DEVICE] on>
[    5.819421] nexus kernel: hid-generic 0003:0C45:8006.0005: hiddev97,hidraw4: USB HID v1.11 Device [SONIX USB DEVICE] on usb-000>
[    5.819692] nexus kernel: input: PixArt USB Optical Mouse as /devices/pci0000:00/0000:00:02.1/0000:04:00.0/usb1/1-6/1-6:1.0/000>
[    5.819703] nexus kernel: hid-generic 0003:093A:2510.0006: input,hidraw5: USB HID v1.11 Mouse [PixArt USB Optical Mouse] on usb>
[    5.819962] nexus kernel: hid-generic 0003:048D:5702.0007: hiddev98,hidraw6: USB HID v1.12 Device [ITE Tech. Inc. ITE Device] o>
[    7.417754] nexus systemd-journald[139]: Received SIGTERM from PID 1 (systemd).
[    7.417782] nexus systemd[1]: systemd 262 running in system mode (+PAM +AUDIT -SELINUX +APPARMOR +IMA +IPE +SMACK +SECCOMP -GNU>
[    7.417794] nexus systemd[1]: Detected architecture x86-64.
[    7.417802] nexus systemd[1]: bpf-restrict-fs: LSM BPF program attached
[    7.417810] nexus systemd[1]: /etc/systemd/system/cups.socket:5: ListenStream= references a path below legacy directory /var/ru>
[    7.417818] nexus systemd[1]: initrd-switch-root.service: Deactivated successfully.
[    7.417825] nexus systemd[1]: Stopped initrd-switch-root.service.
[    7.417832] nexus systemd[1]: systemd-journald.service: Scheduled restart job, restart counter is at 1.
[    7.417839] nexus systemd[1]: Created slice Slice /system/systemd-fsck.
[    7.417847] nexus systemd[1]: Created slice User and Session Slice.
[    7.417854] nexus systemd[1]: Started Dispatch Password Requests to Console Directory Watch.
[    7.417860] nexus systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    7.417867] nexus systemd[1]: Expecting device /dev/disk/by-uuid/C44A-31FD...
[    7.417873] nexus systemd[1]: Expecting device /dev/disk/by-uuid/fb1d1561-8173-4196-869b-0994cd75b489...
[    7.417880] nexus systemd[1]: Reached target Local Encrypted Volumes.
[    7.417889] nexus systemd[1]: Reached target Login Prompts.
[    7.417896] nexus systemd[1]: Stopped target initrd-fs.target.
[    7.417902] nexus systemd[1]: Stopped target initrd-root-fs.target.
[    7.417909] nexus systemd[1]: Stopped target initrd-switch-root.target.
[    7.417915] nexus systemd[1]: Reached target Virtual Machines and Containers.
[    7.417922] nexus systemd[1]: Reached target Path Units.
[    7.417928] nexus systemd[1]: Reached target Remote File Systems.
[    7.417935] nexus systemd[1]: Reached target Slice Units.
[    7.417941] nexus systemd[1]: Listening on Query the User Interactively for a Password.
[    7.417950] nexus systemd[1]: Listening on Process Core Dump Socket.
[    7.417956] nexus systemd[1]: Listening on Credential Encryption/Decryption.
[    7.417963] nexus systemd[1]: Listening on Factory Reset Management.
[    7.417969] nexus systemd[1]: Listening on Hostname Service Socket.
[    7.417976] nexus systemd[1]: Starting Journal Log Access Socket...
[    7.417983] nexus systemd[1]: Listening on Journal Audit Socket.
[    7.417990] nexus systemd[1]: Listening on Console Output Muting Service Socket.
[    7.417996] nexus systemd[1]: Listening on Userspace Out-Of-Memory (OOM) Killer Socket.
[    7.418012] nexus systemd[1]: TPM PCR Measurements skipped, unmet condition check ConditionSecurity=measured-os
[    7.418021] nexus systemd[1]: Make TPM PCR Policy skipped, unmet condition check ConditionSecurity=measured-uki
[    7.418028] nexus systemd[1]: Listening on Disk Repartitioning Service Socket.
[    7.418034] nexus systemd[1]: Listening on Resolve Monitor Varlink Socket.
[    7.418041] nexus systemd[1]: Listening on Resolve Service Varlink Socket.
[    7.418047] nexus systemd[1]: Listening on udev Varlink Socket.
[    7.418053] nexus systemd[1]: Mounting Huge Pages File System...
[    7.418060] nexus systemd[1]: Mounting POSIX Message Queue File System...
[    7.418069] nexus systemd[1]: Mounting Kernel Debug File System...
[    7.418076] nexus systemd[1]: Mounting Kernel Trace File System...
[    7.418083] nexus systemd[1]: Starting Create List of Static Device Nodes...
[    7.418091] nexus systemd[1]: Starting Load Kernel Module configfs...
[    7.418098] nexus systemd[1]: Load Kernel Module drm skipped, unmet condition check ConditionKernelModuleLoaded=!drm
[    7.418104] nexus systemd[1]: Load Kernel Module efi_pstore skipped, unmet condition check ConditionKernelModuleLoaded=!efi_pst>
[    7.418111] nexus systemd[1]: Starting Load Kernel Module fuse...
[    7.418118] nexus systemd[1]: Clear Stale Hibernate Storage Info skipped, unmet condition check ConditionPathExists=/sys/firmwa>
[    7.418124] nexus systemd[1]: Starting Journal Service...
[    7.418131] nexus systemd[1]: Starting Load Kernel Modules...
[    7.418137] nexus systemd[1]: Starting Remount Root and Kernel File Systems...
[    7.418146] nexus systemd[1]: Early TPM SRK Setup skipped, unmet condition check ConditionSecurity=measured-os
[    7.418152] nexus systemd[1]: Starting Coldplug All udev Devices...
[    7.418159] nexus systemd[1]: Listening on Journal Log Access Socket.
[    7.418166] nexus systemd[1]: Mounted Huge Pages File System.
[    7.418172] nexus systemd[1]: Mounted POSIX Message Queue File System.
[    7.418179] nexus systemd[1]: Mounted Kernel Debug File System.
[    7.418185] nexus systemd[1]: Mounted Kernel Trace File System.
[    7.418192] nexus systemd[1]: Finished Create List of Static Device Nodes.
[    7.418198] nexus systemd[1]: modprobe@configfs.service: Deactivated successfully.
[    7.418206] nexus systemd[1]: Finished Load Kernel Module configfs.
[    7.418213] nexus systemd[1]: Mounting Kernel Configuration File System...
[    7.418220] nexus kernel: fuse: init (API version 7.46)
[    7.418227] nexus systemd[1]: Starting Create Static Device Nodes in /dev gracefully...
[    7.418254] nexus systemd-journald[435]: Collecting audit messages is enabled.
[    7.418271] nexus systemd[1]: modprobe@fuse.service: Deactivated successfully.
[    7.418279] nexus systemd[1]: Finished Load Kernel Module fuse.
[    7.418285] nexus kernel: loop: module loaded
[    7.418292] nexus systemd[1]: Mounting FUSE Control File System...
[    7.418298] nexus systemd[1]: Mounted Kernel Configuration File System.
[    7.418305] nexus kernel: EXT4-fs (sda2): re-mounted fdcf9abe-f568-453a-ac2e-9201fddd61b9.
[    7.420012] nexus systemd[1]: Finished Load Kernel Modules.
[    7.420035] nexus systemd[1]: Started Journal Service.
[    7.541884] nexus systemd-journald[435]: Received client request to flush runtime journal.
[    7.695015] nexus kernel: input: Power Button as /devices/platform/PNP0C0C:00/input/input9
[    7.696025] nexus kernel: ACPI: button: Power Button [PWRB]
[    7.699056] nexus kernel: input: Power Button as /devices/platform/LNXPWRBN:00/input/input10
[    7.699091] nexus kernel: ACPI: button: Power Button [PWRF]
[    7.726020] nexus kernel: rtc_cmos PNP0B00:00: RTC can wake from S4
[    7.747405] nexus kernel: rtc_cmos PNP0B00:00: registered as rtc0
[    7.749335] nexus kernel: rtc_cmos PNP0B00:00: setting system clock to 2026-11-21T14:27:54 UTC (1795271274)
[    7.752629] nexus systemd-journald[435]: Time jumped backwards, rotating.
[    7.752872] nexus kernel: rtc_cmos PNP0B00:00: alarms up to one month, y3k, 114 bytes nvram
[    7.754935] nexus kernel: ACPI: video: Video Device [VGA] (multi-head: yes  rom: no  post: no)
[    7.754954] nexus kernel: input: Video Bus as /devices/pci0000:00/0000:00:08.1/acpi.video_bus.0/input/input11
[    7.754965] nexus kernel: mousedev: PS/2 mouse device common for all mice
[    7.769015] nexus kernel: ccp 0000:07:00.2: enabling device (0000 -> 0002)
[    7.773010] nexus kernel: ccp 0000:07:00.2: ccp: unable to access the device: you might be running a broken BIOS.
[    7.774746] nexus kernel: ccp 0000:07:00.2: tee enabled
[    7.776984] nexus kernel: ccp 0000:07:00.2: psp enabled
[    7.782178] nexus kernel: mc: Linux media interface: v0.10
[    7.786024] nexus kernel: ACPI Warning: SystemIO range 0x0000000000000B00-0x0000000000000B08 conflicts with OpRegion 0x00000000>
[    7.786056] nexus kernel: ACPI: OSL: Resource conflict; ACPI support missing from driver?
[    7.796018] nexus kernel: sp5100_tco: SP5100/SB800 TCO WatchDog Timer Driver
[    7.797013] nexus kernel: sp5100-tco sp5100-tco: Using 0xfeb00000 for watchdog MMIO address
[    7.800012] nexus kernel: sp5100-tco sp5100-tco: initialized. heartbeat=60 sec (nowayout=0)
[    7.809032] nexus kernel: RAPL PMU: API unit is 2^-32 Joules, 2 fixed counters, 163840 ms ovfl timer
[    7.809054] nexus kernel: RAPL PMU: hw unit of domain package 2^-16 Joules
[    7.809066] nexus kernel: RAPL PMU: hw unit of domain core 2^-16 Joules
[    7.834016] nexus kernel: snd_hda_intel 0000:03:00.1: enabling device (0000 -> 0002)
[    7.834380] nexus kernel: snd_hda_intel 0000:03:00.1: Handle vga_switcheroo audio client
[    7.834668] nexus kernel: snd_hda_intel 0000:03:00.1: Force to non-snoop mode
[    7.834985] nexus kernel: snd_hda_intel 0000:07:00.1: enabling device (0000 -> 0002)
[    7.835446] nexus kernel: snd_hda_intel 0000:07:00.6: enabling device (0000 -> 0002)
[    7.837070] nexus kernel: intel_rapl_common: Found RAPL domain package
[    7.837096] nexus kernel: intel_rapl_common: Found RAPL domain core
[    7.841024] nexus kernel: r8169 0000:06:00.0 eth0: RTL8168h/8111h, 10:ff:e0:a3:dc:31, XID 541, IRQ 68
[    7.841310] nexus kernel: r8169 0000:06:00.0 eth0: jumbo features [frames: 9194 bytes, tx checksumming: ko]
[    7.848018] nexus kernel: amd_atl: AMD Address Translation Library initialized
[    7.873012] nexus kernel: Bluetooth: Core ver 2.22
[    7.873048] nexus kernel: NET: Registered PF_BLUETOOTH protocol family
[    7.873057] nexus kernel: Bluetooth: HCI device and connection manager initialized
[    7.873066] nexus kernel: Bluetooth: HCI socket layer initialized
[    7.873074] nexus kernel: Bluetooth: L2CAP socket layer initialized
[    7.873082] nexus kernel: Bluetooth: SCO socket layer initialized
[    7.878016] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000:>
[    7.878051] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=7 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000:>
[    7.878061] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=8 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000:>
[    7.878069] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=9 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000:>
[    7.878077] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/in>
[    7.878085] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=10 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000>
[    7.878092] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=11 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000>
[    7.878100] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=7 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/in>
[    7.878107] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=8 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/in>
[    7.878115] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=9 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/in>
[    7.878122] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=10 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/i>
[    7.878130] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=11 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/i>
[    7.879009] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0: autoconfig for ALC897: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:line
[    7.879272] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[    7.879464] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:    hp_outs=1 (0x1b/0x0/0x0/0x0/0x0)
[    7.879653] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:    mono: mono_out=0x0
[    7.879839] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:    inputs:
[    7.880045] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:      Rear Mic=0x18
[    7.880310] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:      Front Mic=0x19
[    7.880476] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:      Line=0x1a
[    7.883012] nexus kernel: usb 5-1: 2:0: bogus dB values (-12800/-12700), disabling dB reporting
[    7.887076] nexus kernel: usbcore: registered new interface driver btusb
[    7.888010] nexus kernel: Bluetooth: hci0: HCI Read Default Erroneous Data Reporting command is advertised, but not supported.
[    7.888031] nexus kernel: Bluetooth: hci0: HCI Read Transmit Power Level command is advertised, but not supported.
[    7.888045] nexus kernel: Bluetooth: hci0: HCI LE Set Random Private Address Timeout command is advertised, but not supported.
[    7.888058] nexus kernel: Bluetooth: hci0: HCI LE Extended Create Connection command is advertised, but not supported.
[    7.888072] nexus kernel: Bluetooth: hci0: HCI WRITE AUTH PAYLOAD TIMEOUT command leads to unexpected SMP errors when pairing a>
[    7.893028] nexus kernel: Adding 9227464k swap on /dev/sda3.  Priority:-1 extents:1 across:9227464k SS
[    7.899012] nexus kernel: input: HD-Audio Generic Rear Mic as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/input24
[    7.899043] nexus kernel: input: HD-Audio Generic Front Mic as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/input25
[    7.899053] nexus kernel: input: HD-Audio Generic Line as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/input26
[    7.899061] nexus kernel: input: HD-Audio Generic Line Out as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/input27
[    7.899069] nexus kernel: input: HD-Audio Generic Front Headphone as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/>
[    7.909015] nexus kernel: usb 5-1: 5:0: bogus dB values (-12800/-12700), disabling dB reporting
[    7.909337] nexus kernel: usbcore: registered new interface driver snd-usb-audio
[    7.922181] nexus kernel: r8169 0000:06:00.0 enp6s0: renamed from eth0
[    9.729016] nexus kernel: ACPI: \_TZ_.TZ10: _PSL evaluation failure
[    9.729070] nexus kernel: acpi LNXTHERM:00: registered as thermal_zone0
[    9.729329] nexus kernel: ACPI: thermal: Thermal Zone [TZ10] (17 C)
[    9.729340] nexus kernel: ACPI: \_TZ_.UAD0: _PSL evaluation failure
[    9.729351] nexus kernel: acpi LNXTHERM:01: registered as thermal_zone1
[    9.729544] nexus kernel: ACPI: thermal: Thermal Zone [UAD0] (17 C)
[   10.675009] nexus kernel: EDAC MC: Ver: 3.0.0
[   10.677010] nexus kernel: MCE: In-kernel MCE decoding enabled.
[   10.683013] nexus kernel: amdgpu: unknown parameter 'gfxoff' ignored
[   10.701351] nexus kernel: amdgpu: Virtual CRAT table created for CPU
[   10.701380] nexus kernel: amdgpu: Topology: Add CPU node
[   10.701397] nexus kernel: amdgpu 0000:03:00.0: enabling device (0006 -> 0007)
[   10.701748] nexus kernel: amdgpu 0000:03:00.0: initializing kernel modesetting (NAVI10 0x1002:0x731F 0x1458:0x231D 0xCA).
[   10.702077] nexus kernel: amdgpu 0000:03:00.0: register mmio base: 0xFCE00000
[   10.702276] nexus kernel: amdgpu 0000:03:00.0: register mmio size: 524288
[   10.702469] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 0 <common_v1_0_0> (nv_common)
[   10.702668] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 1 <gmc_v10_0_0> (gmc_v10_0)
[   10.702899] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 2 <ih_v5_0_0> (navi10_ih)
[   10.703201] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 3 <psp_v11_0_0> (psp)
[   10.703465] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 4 <smu_v11_0_0> (smu)
[   10.703671] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 5 <dce_v1_0_0> (dm)
[   10.703872] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 6 <gfx_v10_0_0> (gfx_v10_0)
[   10.704077] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 7 <sdma_v5_0_0> (sdma_v5_0)
[   10.704275] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 8 <vcn_v2_0_0> (vcn_v2_0)
[   10.704481] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 9 <jpeg_v2_0_0> (jpeg_v2_0)
[   10.704670] nexus kernel: amdgpu 0000:03:00.0: Fetched VBIOS from VFCT
[   10.704870] nexus kernel: amdgpu 0000:03:00.0: [drm] ATOM BIOS: xxx-xxx-xxx, build: 510615  , ver: 017.001.000.068.000000, 2020>
[   10.740010] nexus kernel: Console: switching to colour dummy device 80x25
[   10.740111] nexus kernel: amdgpu 0000:03:00.0: vgaarb: deactivate vga console
[   10.740393] nexus kernel: amdgpu 0000:03:00.0: Trusted Memory Zone (TMZ) feature disabled as experimental (default)
[   10.740619] nexus kernel: amdgpu 0000:03:00.0: vm size is 262144 GB, 4 levels, block size is 9-bit, fragment size is 9-bit
[   10.740816] nexus kernel: amdgpu 0000:03:00.0: VRAM: 6128M 0x0000008000000000 - 0x000000817EFFFFFF (6128M used)
[   10.741024] nexus kernel: amdgpu 0000:03:00.0: GART: 512M 0x0000000000000000 - 0x000000001FFFFFFF
[   10.741212] nexus kernel: amdgpu 0000:03:00.0: [drm] Detected VRAM RAM=6128M, BAR=256M
[   10.741400] nexus kernel: amdgpu 0000:03:00.0: [drm] RAM width 192bits GDDR6
[   10.741583] nexus kernel: amdgpu 0000:03:00.0:  6128M of VRAM memory ready
[   10.741760] nexus kernel: amdgpu 0000:03:00.0:  15978M of GTT memory ready.
[   10.741956] nexus kernel: amdgpu 0000:03:00.0: [drm] GART: num cpu pages 131072, num gpu pages 131072
[   10.742142] nexus kernel: amdgpu 0000:03:00.0: [drm] PCIE GART of 512M enabled (table at 0x0000008000800000).
[   10.742325] nexus kernel: amdgpu 0000:03:00.0: [VCN instance 0] Found VCN firmware Version ENC: 1.24 DEC: 8 VEP: 0 Revision: 18
[   10.794027] nexus kernel: amdgpu 0000:03:00.0: reserve 0x900000 from 0x817d000000 for PSP TMR
[   10.838028] nexus kernel: amdgpu 0000:03:00.0: RAS: optional ras ta ucode is not available
[   10.844025] nexus kernel: amdgpu 0000:03:00.0: RAP: optional rap ta ucode is not available
[   10.844314] nexus kernel: amdgpu 0000:03:00.0: SECUREDISPLAY: optional securedisplay ta ucode is not available
[   10.844653] nexus kernel: amdgpu 0000:03:00.0: smu driver if version = 0x00000037, smu fw if version = 0x00000037, smu fw progr>
[   10.844898] nexus kernel: amdgpu 0000:03:00.0: use vbios provided pptable
[   10.845129] nexus kernel: amdgpu 0000:03:00.0: smc_dpm_info table revision(format.content): 4.5
[   10.880008] nexus kernel: amdgpu 0000:03:00.0: SMU is initialized successfully!
[   10.880270] nexus kernel: amdgpu 0000:03:00.0: [drm] Display Core v3.2.392 initialized on DCN 2.0
[   10.880496] nexus kernel: amdgpu 0000:03:00.0: [drm] DP-HDMI FRL PCON supported
[   10.903015] nexus kernel: snd_hda_intel 0000:03:00.1: bound 0000:03:00.0 (ops amdgpu_dm_audio_component_bind_ops [amdgpu])
[   10.955015] nexus kernel: Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   10.955048] nexus kernel: Bluetooth: BNEP socket layer initialized
[   10.957008] nexus kernel: Bluetooth: MGMT ver 1.23
[   10.960016] nexus kernel: NET: Registered PF_ALG protocol family
[   11.053016] nexus kernel: amdgpu 0000:03:00.0: kiq ring mec 2 pipe 1 q 0
[   11.080025] nexus kernel: Generic FE-GE Realtek PHY r8169-0-600:00: attached PHY driver (mii_bus:phy_addr=r8169-0-600:00, irq=M>
[   11.249013] nexus kernel: r8169 0000:06:00.0 enp6s0: Link is Down
[   11.259011] nexus kernel: NET: Registered PF_PACKET protocol family
[   11.559015] nexus kernel: amdgpu 0000:03:00.0: Fence fallback timer expired on ring sdma0
[   11.559386] nexus kernel: kfd kfd: Allocated 3969056 bytes on gart
[   11.559581] nexus kernel: kfd kfd: Total number of KFD nodes to be created: 1
[   12.063032] nexus kernel: amdgpu 0000:03:00.0: Fence fallback timer expired on ring sdma0
[   12.063430] nexus kernel: amdgpu: Virtual CRAT table created for GPU
[   12.063442] nexus kernel: amdgpu: Topology: Add GPU node [0x1002:0x731f]
[   12.063450] nexus kernel: kfd kfd: added device 1002:731f
[   12.063596] nexus kernel: amdgpu 0000:03:00.0: SE 2, SH per SE 2, CU per SH 10, active_cu_number 36
[   12.063787] nexus kernel: amdgpu 0000:03:00.0: ring gfx_0.0.0 uses VM inv eng 0 on hub 0
[   12.063970] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.0.0 uses VM inv eng 1 on hub 0
[   12.064162] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.1.0 uses VM inv eng 4 on hub 0
[   12.064341] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.2.0 uses VM inv eng 5 on hub 0
[   12.064519] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.3.0 uses VM inv eng 6 on hub 0
[   12.064696] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.0.1 uses VM inv eng 7 on hub 0
[   12.064873] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.1.1 uses VM inv eng 8 on hub 0
[   12.065057] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.2.1 uses VM inv eng 9 on hub 0
[   12.065234] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.3.1 uses VM inv eng 10 on hub 0
[   12.065411] nexus kernel: amdgpu 0000:03:00.0: ring kiq_0.2.1.0 uses VM inv eng 11 on hub 0
[   12.065587] nexus kernel: amdgpu 0000:03:00.0: ring sdma0 uses VM inv eng 12 on hub 0
[   12.065765] nexus kernel: amdgpu 0000:03:00.0: ring sdma1 uses VM inv eng 13 on hub 0
[   12.065952] nexus kernel: amdgpu 0000:03:00.0: ring vcn_dec uses VM inv eng 0 on hub 8
[   12.066138] nexus kernel: amdgpu 0000:03:00.0: ring vcn_enc0 uses VM inv eng 1 on hub 8
[   12.066317] nexus kernel: amdgpu 0000:03:00.0: ring vcn_enc1 uses VM inv eng 4 on hub 8
[   12.066494] nexus kernel: amdgpu 0000:03:00.0: ring jpeg_dec uses VM inv eng 5 on hub 8
[   12.091038] nexus kernel: amdgpu: HMM registered 6128MB device memory
[   12.093024] nexus kernel: amdgpu 0000:03:00.0: Using BACO for runtime pm
[   12.093345] nexus kernel: amdgpu 0000:03:00.0: [drm] Registered 6 planes with drm panic
[   12.098017] nexus kernel: [drm] Initialized amdgpu 3.64.0 for 0000:03:00.0 on minor 1
[   12.106011] nexus kernel: fbcon: amdgpudrmfb (fb0) is primary device
[   12.106032] nexus kernel: [drm] pre_validate_dsc:1797 MST_DSC dsc precompute is not needed
[   12.134282] nexus kernel: clocksource: Watchdog remote CPU 10 read timed out
[   12.215014] nexus kernel: Console: switching to colour frame buffer device 240x67
[   12.233027] nexus kernel: amdgpu 0000:03:00.0: [drm] fb0: amdgpudrmfb frame buffer device
[   14.339021] nexus kernel: r8169 0000:06:00.0 enp6s0: Link is Up - 1Gbps/Full - flow control rx/tx
[   16.190563] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   16.805282] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   17.994016] nexus kernel: .Hyprland-wrapp[1099]: segfault at 0 ip 00007ea21e7257b1 sp 00007ffc05a1a370 error 4 in libaquamarine>
[   17.994074] nexus kernel: Code: ff 48 8b 45 c0 48 85 c0 74 0f 83 28 01 74 5a 66 2e 0f 1f 84 00 00 00 00 00 48 83 c3 10 49 39 dd>
[   18.852326] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   20.576024] nexus kernel: EXT4-fs (sdc1): mounted filesystem 73384e72-eade-4dfa-8360-783faf87a509 r/w with ordered data mode. Q>
[   20.872024] nexus kernel: Bluetooth: RFCOMM TTY layer initialized
[   20.872110] nexus kernel: Bluetooth: RFCOMM socket layer initialized
[   20.872144] nexus kernel: Bluetooth: RFCOMM ver 1.11
[   30.987023] nexus kernel: ntfs: volume version 3.1, dev sdd1, cluster size 4096
[   44.362309] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   46.749094] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   77.424017] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
