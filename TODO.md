陰⫸ systemd-analyze
Startup finished in 7.437s (firmware) + 475ms (loader) + 767ms (kernel) + 6.509s (initrd) + 5.902s (userspace) = 21.092s
graphical.target reached after 5.901s in userspace.

 nexus  dareggon  nixos-config  main [ 󱈎 ]
陰⫸ systemd-analyze critical-chain
The time when unit became active or started is printed after the "@" character.
The time the unit took to start is printed after the "+" character.

graphical.target @5.901s
└─greetd.service @5.901s
  └─systemd-user-sessions.service @5.878s +20ms
    └─home-manager-dareggon.service @5.332s +544ms
      └─basic.target @5.314s
        └─dbus-broker.service @5.255s +58ms
          └─dbus.socket @5.249s +73us
            └─sysinit.target @5.237s
              └─systemd-boot-random-seed.service @4.215s +1.022s
                └─systemd-random-seed.service @872ms +18ms
                  └─systemd-remount-fs.service @835ms +26ms
                    └─systemd-fsck-root.service
                      └─systemd-journald.socket
                        └─system.slice
                          └─-.slice

 nexus  dareggon  nixos-config  main [ 󱈎 ]
陰⫸ systemd-analyze blame
7.068s sys-devices-virtual-dmi-id.device
7.012s dev-tpm0.device
7.012s sys-devices-platform-MSFT0101:00-tpm-tpm0.device
6.962s sys-devices-platform-MSFT0101:00-tpmrm-tpmrm0.device
6.962s dev-tpmrm0.device
3.418s dev-disk-by\x2dpartlabel-EFI.device
3.418s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2duuid-C44A\x2d31FD.device
3.418s dev-disk-by\x2dpartuuid-9969340d\x2d64d8\x2d416f\x2dbdc6\x2db0d369a8131b.device
3.418s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartlabel-EFI.device
3.418s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartuuid-9969340d\x2d64d8\x2d416f\x2dbdc6\x2db0d369a813>
3.418s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1\x2dpart1.device
3.418s dev-disk-by\x2ddiskseq-1\x2dpart1.device
3.418s dev-sda1.device
3.418s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata1-host0-target0:0:0-0:0:0:0-block-sda-sda1.device
3.418s dev-disk-by\x2duuid-C44A\x2d31FD.device
3.418s dev-disk-by\x2ddesignator-esp.device
3.418s dev-disk-by\x2did-ata\x2dSamsung_SSD_860_EVO_250GB_S3YHNX0KC21878B\x2dpart1.device
3.418s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartnum-1.device
3.418s dev-disk-by\x2did-wwn\x2d0x5002538e40b6f3ef\x2dpart1.device
3.418s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart1.device
3.403s dev-sda3.device
3.403s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1\x2dpart3.device
3.403s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartuuid-4626cc61\x2def88\x2d4b46\x2dba3f\x2d1d64d7194e>
3.403s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartnum-3.device
3.403s dev-disk-by\x2dlabel-swap.device
3.403s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2duuid-fb1d1561\x2d8173\x2d4196\x2d869b\x2d0994cd75b489.d>
3.403s dev-disk-by\x2did-wwn\x2d0x5002538e40b6f3ef\x2dpart3.device
3.403s dev-disk-by\x2did-ata\x2dSamsung_SSD_860_EVO_250GB_S3YHNX0KC21878B\x2dpart3.device
3.403s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart3.device
3.403s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata1-host0-target0:0:0-0:0:0:0-block-sda-sda3.device
3.403s dev-disk-by\x2duuid-fb1d1561\x2d8173\x2d4196\x2d869b\x2d0994cd75b489.device
3.403s dev-disk-by\x2ddesignator-swap.device
3.403s dev-disk-by\x2dpartuuid-4626cc61\x2def88\x2d4b46\x2dba3f\x2d1d64d7194ec8.device
3.403s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dlabel-swap.device
3.403s dev-disk-by\x2ddiskseq-1\x2dpart3.device
3.399s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartnum-2.device
3.399s dev-disk-by\x2did-ata\x2dSamsung_SSD_860_EVO_250GB_S3YHNX0KC21878B\x2dpart2.device
3.399s dev-disk-by\x2dlabel-root.device
3.399s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2duuid-fdcf9abe\x2df568\x2d453a\x2dac2e\x2d9201fddd61b9.d>
3.399s dev-disk-by\x2duuid-fdcf9abe\x2df568\x2d453a\x2dac2e\x2d9201fddd61b9.device
3.399s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1\x2dpart2.device
3.399s dev-disk-by\x2ddiskseq-1\x2dpart2.device
3.399s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart2.device
3.399s dev-sda2.device
3.399s dev-disk-by\x2dpartlabel-root.device
3.399s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartlabel-root.device
3.399s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dlabel-root.device
3.399s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata1-host0-target0:0:0-0:0:0:0-block-sda-sda2.device
3.399s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0\x2dpart-by\x2dpartuuid-acfc1a2d\x2d9b82\x2d47c7\x2d8f4c\x2d77740c64d8>
3.399s dev-disk-by\x2dpartuuid-acfc1a2d\x2d9b82\x2d47c7\x2d8f4c\x2d77740c64d81f.device
3.399s dev-disk-by\x2did-wwn\x2d0x5002538e40b6f3ef\x2dpart2.device
3.386s dev-disk-by\x2dlabel-Windows.device
3.386s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartuuid-02235f9f\x2d02.device
3.386s dev-disk-by\x2dpartuuid-02235f9f\x2d02.device
3.386s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dlabel-Windows.device
3.386s dev-sdd2.device
3.386s dev-disk-by\x2did-wwn\x2d0x5001b448bb90a253\x2dpart2.device
3.386s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartnum-2.device
3.386s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2\x2dpart2.device
3.386s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata2-host1-target1:0:0-1:0:0:0-block-sdd-sdd2.device
3.386s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart2.device
3.386s dev-disk-by\x2duuid-509CFC1B9CFBF974.device
3.386s dev-disk-by\x2ddiskseq-4\x2dpart2.device
3.386s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2duuid-509CFC1B9CFBF974.device
3.386s dev-disk-by\x2did-ata\x2dSanDisk_SSD_PLUS_120GB_2032A1804973\x2dpart2.device
3.385s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2\x2dpart3.device
3.385s dev-disk-by\x2did-wwn\x2d0x5001b448bb90a253\x2dpart3.device
3.385s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2duuid-8C5C79945C7979B2.device
3.385s dev-disk-by\x2ddiskseq-4\x2dpart3.device
3.385s dev-disk-by\x2dpartuuid-02235f9f\x2d03.device
3.385s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart3.device
3.385s dev-disk-by\x2duuid-8C5C79945C7979B2.device
3.385s dev-disk-by\x2did-ata\x2dSanDisk_SSD_PLUS_120GB_2032A1804973\x2dpart3.device
3.385s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartuuid-02235f9f\x2d03.device
3.385s dev-sdd3.device
3.385s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata2-host1-target1:0:0-1:0:0:0-block-sdd-sdd3.device
3.385s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartnum-3.device
3.384s dev-disk-by\x2did-ata\x2dSanDisk_SSD_PLUS_120GB_2032A1804973\x2dpart1.device
3.384s dev-disk-by\x2duuid-A8EEEF3AEEEF0004.device
3.384s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartnum-1.device
3.384s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dpartuuid-02235f9f\x2d01.device
3.384s dev-disk-by\x2dlabel-System\x5cx20Reserved.device
3.384s dev-disk-by\x2did-wwn\x2d0x5001b448bb90a253\x2dpart1.device
3.384s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2\x2dpart1.device
3.384s dev-sdd1.device
3.384s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2duuid-A8EEEF3AEEEF0004.device
3.384s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart1.device
3.384s dev-disk-by\x2dpartuuid-02235f9f\x2d01.device
3.384s dev-disk-by\x2ddiskseq-4\x2dpart1.device
3.384s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0\x2dpart-by\x2dlabel-System\x5cx20Reserved.device
3.384s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata2-host1-target1:0:0-1:0:0:0-block-sdd-sdd1.device
3.336s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.device
3.336s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata1-host0-target0:0:0-0:0:0:0-block-sda.device
3.336s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d1.0.device
3.336s dev-disk-by\x2did-wwn\x2d0x5002538e40b6f3ef.device
3.336s dev-disk-by\x2did-ata\x2dSamsung_SSD_860_EVO_250GB_S3YHNX0KC21878B.device
3.336s dev-disk-by\x2ddiskseq-1.device
3.336s dev-sda.device
3.334s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.device
3.334s dev-sdd.device
3.334s dev-disk-by\x2did-wwn\x2d0x5001b448bb90a253.device
3.334s dev-disk-by\x2ddiskseq-4.device
3.334s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata2-host1-target1:0:0-1:0:0:0-block-sdd.device
3.334s dev-disk-by\x2did-ata\x2dSanDisk_SSD_PLUS_120GB_2032A1804973.device
3.334s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d2.0.device
3.249s dev-disk-by\x2did-wwn\x2d0x50014ee20f161876.device
3.249s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.device
3.249s dev-disk-by\x2did-ata\x2dWDC_WD10EZEX\x2d22MFCA0_WD\x2dWCC6Y2PN34ZF.device
3.249s dev-disk-by\x2ddiskseq-3.device
3.249s dev-sdc.device
3.249s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata4-host3-target3:0:0-3:0:0:0-block-sdc.device
3.249s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0.device
3.164s dev-disk-by\x2dpartlabel-Stronghold.device
3.164s dev-disk-by\x2did-ata\x2dST4000DM004\x2d2U9104_ZTT4RAHN\x2dpart1.device
3.164s dev-disk-by\x2dlabel-Stronghold.device
3.164s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2dpartuuid-a506ab30\x2db895\x2d4a52\x2db610\x2dbf3905cdf5>
3.164s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2duuid-73384e72\x2deade\x2d4dfa\x2d8360\x2d783faf87a509.d>
3.164s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3\x2dpart1.device
3.164s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart1.device
3.164s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2dpartnum-1.device
3.164s dev-disk-by\x2ddiskseq-2\x2dpart1.device
3.164s dev-disk-by\x2duuid-73384e72\x2deade\x2d4dfa\x2d8360\x2d783faf87a509.device
3.164s dev-disk-by\x2dpartuuid-a506ab30\x2db895\x2d4a52\x2db610\x2dbf3905cdf5dc.device
3.164s dev-sdb1.device
3.164s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata3-host2-target2:0:0-2:0:0:0-block-sdb-sdb1.device
3.164s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2dlabel-Stronghold.device
3.164s dev-disk-by\x2did-wwn\x2d0x5000c500e487a661\x2dpart1.device
3.164s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0\x2dpart-by\x2dpartlabel-Stronghold.device
3.158s dev-disk-by\x2ddiskseq-2.device
3.158s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.0.device
3.158s dev-disk-by\x2did-wwn\x2d0x5000c500e487a661.device
3.158s dev-sdb.device
3.158s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d3.device
3.158s dev-disk-by\x2did-ata\x2dST4000DM004\x2d2U9104_ZTT4RAHN.device
3.158s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata3-host2-target2:0:0-2:0:0:0-block-sdb.device
3.138s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4\x2dpart1.device
3.138s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart-by\x2duuid-0ECBAD6322F9820B.device
3.138s dev-disk-by\x2dlabel-Storage.device
3.138s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart-by\x2dlabel-Storage.device
3.138s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart-by\x2dpartnum-1.device
3.138s dev-disk-by\x2did-ata\x2dWDC_WD10EZEX\x2d22MFCA0_WD\x2dWCC6Y2PN34ZF\x2dpart1.device
3.138s dev-disk-by\x2duuid-0ECBAD6322F9820B.device
3.138s dev-sdc1.device
3.138s dev-disk-by\x2ddiskseq-3\x2dpart1.device
3.138s sys-devices-pci0000:00-0000:00:02.1-0000:04:00.1-ata4-host3-target3:0:0-3:0:0:0-block-sdc-sdc1.device
3.138s dev-disk-by\x2did-wwn\x2d0x50014ee20f161876\x2dpart1.device
3.138s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart1.device
3.138s dev-disk-by\x2dpartuuid-a43441b8\x2d050f\x2d4c86\x2dbe74\x2d79ac93d06c92.device
3.138s dev-disk-by\x2dpath-pci\x2d0000:04:00.1\x2data\x2d4.0\x2dpart-by\x2dpartuuid-a43441b8\x2d050f\x2d4c86\x2dbe74\x2d79ac93d06c>
2.405s run-wrappers.mount
1.392s mnt-Stronghold.mount
1.273s systemd-fsck-root.service
1.022s systemd-boot-random-seed.service
 879ms initrd-switch-root.service
 544ms home-manager-dareggon.service
 352ms NetworkManager.service
 241ms systemd-udev-trigger.service
 188ms firewall.service
 178ms user@1000.service
 150ms mnt-Storage.mount
 105ms suid-sgid-wrappers.service
 104ms cups.service
  91ms wpa_supplicant.service
  81ms systemd-journal-flush.service
  76ms polkit.service
  76ms systemd-udevd.service
  64ms systemd-journald.service
  58ms dbus-broker.service
  53ms bluetooth.service
  51ms rtkit-daemon.service
  50ms systemd-logind.service
  46ms systemd-oomd.service
  43ms systemd-resolved.service
  40ms systemd-hostnamed.service
  40ms systemd-tmpfiles-resetup.service
  38ms systemd-vconsole-setup.service
  37ms systemd-timesyncd.service
  31ms systemd-journalctl.socket
  30ms systemd-fsck@dev-disk-by\x2duuid-C44A\x2d31FD.service
  29ms boot.mount
  29ms dev-disk-by\x2duuid-fb1d1561\x2d8173\x2d4196\x2d869b\x2d0994cd75b489.swap
  29ms NetworkManager-dispatcher.service
  26ms systemd-remount-fs.service
  25ms nscd.service
  22ms dev-hugepages.mount
  22ms modprobe@fuse.service
  22ms usr-bin.mount
  21ms systemd-tmpfiles-setup.service
  20ms dev-mqueue.mount
  20ms systemd-user-sessions.service
  20ms systemd-modules-load.service
  19ms linger-users.service
  18ms sys-kernel-debug.mount
  18ms systemd-random-seed.service
  17ms systemd-rfkill.service
  17ms sys-kernel-tracing.mount
  17ms systemd-tmpfiles-setup-dev-early.service
  16ms systemd-update-utmp.service
  16ms user-runtime-dir@1000.service
  16ms kmod-static-nodes.service
  15ms modprobe@configfs.service
  14ms systemd-sysctl.service
  11ms logrotate-checkconf.service
  11ms post-boot.service
  10ms cups.socket
  10ms systemd-tmpfiles-setup-dev.service
   9ms sys-kernel-config.mount
   7ms sys-fs-fuse-connections.mount
   6ms podman.socket
   2ms polkit-agent-helper.socket
   1ms systemd-repart.socket
 740us systemd-coredump.socket
 625us systemd-ask-password.socket
 618us systemd-bootctl.socket
 595us systemd-mute-console.socket
 517us systemd-factory-reset.socket
 484us systemd-creds.socket
 217us nix-daemon.socket
  82us systemd-machined.socket
  73us systemd-udevd-varlink.socket
  73us dbus.socket
  63us systemd-importd.socket
  58us systemd-resolved-monitor.socket
  54us systemd-resolved-varlink.socket
  51us systemd-oomd.socket
  46us systemd-journald-dev-log.socket
  43us systemd-journald.socket
  40us systemd-hostnamed.socket
  31us systemd-journald-audit.socket
  20us systemd-rfkill.socket
  14us systemd-udevd-kernel.socket

11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.opensuse.CupsPkHelper.Mechanism' in service file '/ni>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'fi.w1.wpa_supplicant1' in service file '/nix/store/r2773h>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.freedesktop.nm_dispatcher' in service file '/nix/stor>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.freedesktop.nm_priv_helper' in service file '/nix/sto>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.freedesktop.ModemManager1' in service file '/nix/stor>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.bluez.mesh' in service file '/nix/store/xw4px3j0ln3d6>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.bluez' in service file '/nix/store/xw4px3j0ln3d6pybn5>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.blueman.Mechanism' in service file '/nix/store/s4n3h1>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.freedesktop.RealtimeKit1' in service file '/nix/store>
11月 21 10:48:44 nexus dbus-broker-launch[810]: Ignoring duplicate name 'org.freedesktop.PolicyKit1' in service file '/nix/store/4>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'ca.desrt.dconf' in service file '/nix/store/k20cb2ak86l1>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'com.feralinteractive.GameMode' in service file '/nix/sto>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.openobex' in service file '/nix/store/k20cb2ak86l1wb>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.blueman.Applet' in service file '/nix/store/k20cb2ak>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.blueman.Manager' in service file '/nix/store/k20cb2a>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.bluez.obex' in service file '/nix/store/k20cb2ak86l1>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.impl.portal.PermissionStore' in service >
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.impl.portal.desktop.gtk' in service file>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.impl.portal.desktop.hyprland' in service>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.import1' in service file '/nix/store/k20>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.machine1' in service file '/nix/store/k2>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.portable1' in service file '/nix/store/k>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.portal.Desktop' in service file '/nix/st>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.portal.Documents' in service file '/nix/>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.systemd1' in service file '/nix/store/k2>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.xfce.FileManager' in service file '/nix/store/k20cb2>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.FileManager1' in service file '/nix/stor>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.xfce.Thunar' in service file '/nix/store/k20cb2ak86l>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.xfce.Xfconf' in service file '/nix/store/k20cb2ak86l>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.bluez.obex' in service file '/nix/store/xw4px3j0ln3d>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.blueman.Applet' in service file '/nix/store/s4n3h1bl>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.blueman.Manager' in service file '/nix/store/s4n3h1b>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.xfce.Xfconf' in service file '/nix/store/3dbwv6z3di2>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.xfce.FileManager' in service file '/nix/store/dwvl3s>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.FileManager1' in service file '/nix/stor>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.xfce.Thunar' in service file '/nix/store/dwvl3sjary7>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'ca.desrt.dconf' in service file '/nix/store/k8dirqxswvp1>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.impl.portal.PermissionStore' in service >
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.portal.Desktop' in service file '/nix/st>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.portal.Documents' in service file '/nix/>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.impl.portal.desktop.hyprland' in service>
11月 21 10:48:46 nexus dbus-broker-launch[1173]: Ignoring duplicate name 'org.freedesktop.impl.portal.desktop.gtk' in service file>
11月 21 10:48:50 nexus NetworkManager[813]: <error> [1795268930.1149] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:48:52 nexus systemd-coredump[1328]: [🡕] Process 1119 (.Hyprland-wrapp) of user 993 dumped core.

                                                Module libpciaccess.so.0 without build-id.
                                                Module libX11-xcb.so.1 without build-id.
                                                Module libdrm_intel.so.1 without build-id.
                                                Module libdrm_amdgpu.so.1 without build-id.
                                                Module libxcb-dri3.so.0 without build-id.
                                                Module libxshmfence.so.1 without build-id.
                                                Module libxcb-present.so.0 without build-id.
                                                Module libxcb-sync.so.1 without build-id.
                                                Module libxcb-randr.so.0 without build-id.
                                                Module libsensors.so.5 without build-id.
                                                Module libreadline.so.8 without build-id.
                                                Module libgudev-1.0.so.0 without build-id.
                                                Module libdatrie.so.1 without build-id.
                                                Module libexpat.so.1 without build-id.
                                                Module libbrotlienc.so.1 without build-id.
                                                Module libbrotlicommon.so.1 without build-id.
                                                Module libbrotlidec.so.1 without build-id.
                                                Module libhwy.so.1 without build-id.
                                                Module libsharpyuv.so.0 without build-id.
                                                Module libxml2.so.16 without build-id.
                                                Module libdav1d.so.7 without build-id.
                                                Module libz.so.1 without build-id.
                                                Module libzstd.so.1 without build-id.
                                                Module liblzma.so.5 without build-id.
                                                Module libbz2.so.1 without build-id.
                                                Module libGLdispatch.so.0 without build-id.
                                                Module libncursesw.so.6 without build-id.
                                                Module libgomp.so.1 without build-id.
                                                Module libicudata.so.78 without build-id.
                                                Module libpcre2-8.so.0 without build-id.
                                                Module libselinux.so.1 without build-id.
                                                Module liblua.so.5.4 without build-id.
                                                Module libwacom.so.9 without build-id.
                                                Module libevdev.so.2 without build-id.
                                                Module libmtdev.so.1 without build-id.
                                                Module libXfixes.so.3 without build-id.
                                                Module libxcb-shm.so.0 without build-id.
                                                Module libXrender.so.1 without build-id.
                                                Module libXext.so.6 without build-id.
                                                Module libX11.so.6 without build-id.
                                                Module libgraphite2.so.3 without build-id.
                                                Module libfreetype.so.6 without build-id.
                                                Module libthai.so.0 without build-id.
                                                Module libfribidi.so.0 without build-id.
                                                Module libfontconfig.so.1 without build-id.
                                                Module libpangoft2-1.0.so.0 without build-id.
                                                Module libffi.so.8 without build-id.
                                                Module libjxl_threads.so.0.12 without build-id.
                                                Module libjxl_cms.so.0.12 without build-id.
                                                Module libjxl.so.0.12 without build-id.
                                                Module libpng16.so.16 without build-id.
                                                Module libmagic.so.1 without build-id.
                                                Module libwebp.so.7 without build-id.
                                                Module libjpeg.so.62 without build-id.
                                                Module libtomlplusplus.so.3 without build-id.
                                                Module librsvg-2.so.2 without build-id.
                                                Module libzip.so.5 without build-id.
                                                Module libdisplay-info.so.4 without build-id.
                                                Module libseat.so.1 without build-id.
                                                Module libXdmcp.so.6 without build-id.
                                                Module libXau.so.6 without build-id.
                                                Module libgcc_s.so.1 without build-id.
                                                Module libstdc++.so.6 without build-id.
                                                Module libglslang.so.16 without build-id.
                                                Module libSPIRV.so.16 without build-id.
                                                Module libglslang-default-resource-limits.so.16 without build-id.
                                                Module libOpenGL.so.0 without build-id.
                                                Module libGLX.so.0 without build-id.
                                                Module libGLESv2.so.2 without build-id.
                                                Module libEGL.so.1 without build-id.
                                                Module libudis86.so.0 without build-id.
                                                Module liblua.so.5.5 without build-id.
                                                Module liblcms2.so.2 without build-id.
                                                Module libmuparser.so.2 without build-id.
                                                Module libicuuc.so.78 without build-id.
                                                Module libabsl_spinlock_wait.so.2608.0.0 without build-id.
                                                Module libabsl_log_severity.so.2608.0.0 without build-id.
                                                Module libabsl_raw_logging_internal.so.2608.0.0 without build-id.
                                                Module libabsl_base.so.2608.0.0 without build-id.
                                                Module libabsl_tracing_internal.so.2608.0.0 without build-id.
                                                Module libabsl_time_zone.so.2608.0.0 without build-id.
                                                Module libabsl_throw_delegate.so.2608.0.0 without build-id.
                                                Module libabsl_source_location.so.2608.0.0 without build-id.
                                                Module libabsl_int128.so.2608.0.0 without build-id.
                                                Module libabsl_hardening.so.2608.0.0 without build-id.
                                                Module libabsl_strings_internal.so.2608.0.0 without build-id.
                                                Module libabsl_strings.so.2608.0.0 without build-id.
                                                Module libabsl_civil_time.so.2608.0.0 without build-id.
                                                Module libabsl_time.so.2608.0.0 without build-id.
                                                Module libabsl_malloc_internal.so.2608.0.0 without build-id.
                                                Module libabsl_utf8_for_code_point.so.2608.0.0 without build-id.
                                                Module libabsl_decode_rust_punycode.so.2608.0.0 without build-id.
                                                Module libabsl_demangle_rust.so.2608.0.0 without build-id.
                                                Module libabsl_demangle_internal.so.2608.0.0 without build-id.
                                                Module libabsl_debugging_internal.so.2608.0.0 without build-id.
                                                Module libabsl_symbolize.so.2608.0.0 without build-id.
                                                Module libabsl_stacktrace.so.2608.0.0 without build-id.
                                                Module libabsl_kernel_timeout_internal.so.2608.0.0 without build-id.
                                                Module libabsl_graphcycles_internal.so.2608.0.0 without build-id.
                                                Module libabsl_synchronization.so.2608.0.0 without build-id.
                                                Module libabsl_str_format_internal.so.2608.0.0 without build-id.
                                                Module libabsl_city.so.2608.0.0 without build-id.
                                                Module libabsl_hash.so.2608.0.0 without build-id.
                                                Module libabsl_exponential_biased.so.2608.0.0 without build-id.
                                                Module libabsl_hashtablez_sampler.so.2608.0.0 without build-id.
                                                Module libabsl_base_cpu_detect.so.2608.0.0 without build-id.
                                                Module libabsl_crc_internal.so.2608.0.0 without build-id.
                                                Module libabsl_crc32c.so.2608.0.0 without build-id.
                                                Module libabsl_crc_cord_state.so.2608.0.0 without build-id.
                                                Module libabsl_cordz_handle.so.2608.0.0 without build-id.
                                                Module libabsl_cordz_functions.so.2608.0.0 without build-id.
                                                Module libabsl_cord_internal.so.2608.0.0 without build-id.
                                                Module libabsl_cordz_info.so.2608.0.0 without build-id.
                                                Module libabsl_cord.so.2608.0.0 without build-id.
                                                Module libabsl_raw_hash_set.so.2608.0.0 without build-id.
                                                Module libabsl_flags_program_name.so.2608.0.0 without build-id.
                                                Module libabsl_flags_config.so.2608.0.0 without build-id.
                                                Module libabsl_flags_commandlineflag_internal.so.2608.0.0 without build-id.
                                                Module libabsl_flags_commandlineflag.so.2608.0.0 without build-id.
                                                Module libabsl_flags_private_handle_accessor.so.2608.0.0 without build-id.
                                                Module libabsl_flags_reflection.so.2608.0.0 without build-id.
                                                Module libabsl_flags_marshalling.so.2608.0.0 without build-id.
                                                Module libabsl_flags_internal.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_fnmatch.so.2608.0.0 without build-id.
                                                Module libabsl_vlog_config_internal.so.2608.0.0 without build-id.
                                                Module libabsl_strerror.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_proto.so.2608.0.0 without build-id.
                                                Module libabsl_log_entry.so.2608.0.0 without build-id.
                                                Module libabsl_log_sink.so.2608.0.0 without build-id.
                                                Module libabsl_log_globals.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_globals.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_log_sink_set.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_structured_proto.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_nullguard.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_format.so.2608.0.0 without build-id.
                                                Module libabsl_examine_stack.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_message.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_conditions.so.2608.0.0 without build-id.
                                                Module libabsl_leak_check.so.2608.0.0 without build-id.
                                                Module libabsl_log_internal_check_op.so.2608.0.0 without build-id.
                                                Module libre2.so.11 without build-id.
                                                Module libgbm.so.1 without build-id.
                                                Module libeis.so.1 without build-id.
                                                Module libinput.so.10 without build-id.
                                                Module libdrm.so.2 without build-id.
                                                Module libXcursor.so.1 without build-id.
                                                Module libharfbuzz.so.0 without build-id.
                                                Module libpango-1.0.so.0 without build-id.
                                                Module libpangocairo-1.0.so.0 without build-id.
                                                Module libxkbcommon.so.0 without build-id.
                                                Module libxcb.so.1 without build-id.
                                                Module libxcb-errors.so.0 without build-id.
                                                Module libxcb-res.so.0 without build-id.
                                                Module libxcb-composite.so.0 without build-id.
                                                Module libxcb-icccm.so.4 without build-id.
                                                Module libxcb-xfixes.so.0 without build-id.
                                                Module libxcb-render.so.0 without build-id.
                                                Stack trace of thread 1119:
                                                #0  0x000077a89fd627b1 _ZN10Aquamarine11CDRMBackend22flushAsyncCommitEventsEv (lib>
                                                #1  0x000077a89fd62a4b _ZN10Aquamarine11CDRMBackend17cancelAsyncOutputEPNS_10CDRMO>
                                                #2  0x000077a89fd63bf7 _ZN10Aquamarine13SDRMConnector10disconnectEv (libaquamarine>
                                                #3  0x000077a89fd64837 _ZN10Aquamarine11CDRMBackendD2Ev (libaquamarine.so.14 + 0xe>
                                                #4  0x000077a89fd878f9 _ZN9Hyprutils6Memory14CSharedPointerIN10Aquamarine11CDRMBac>
                                                #5  0x000077a89fd1aa9a _ZN10Aquamarine8CBackendD2Ev (libaquamarine.so.14 + 0x98a9a)
                                                #6  0x000077a89fd21436 _ZN9Hyprutils6Memory14CSharedPointerIN10Aquamarine8CBackend>
                                                #7  0x0000610c512f5952 _ZN9Hyprutils6Memory14CSharedPointerIN10Aquamarine8CBackend>
                                                #8  0x000077a89d044ee9 __cxa_finalize (libc.so.6 + 0x44ee9)
                                                #9  0x000077a89fcf9d87 __do_global_dtors_aux (libaquamarine.so.14 + 0x77d87)
                                                #10 0x000077a8a0769022 _dl_call_fini (ld-linux-x86-64.so.2 + 0x2022)
                                                #11 0x000077a8a076d2ee _dl_fini (ld-linux-x86-64.so.2 + 0x62ee)
                                                #12 0x000077a89d0454af __run_exit_handlers (libc.so.6 + 0x454af)
                                                #13 0x000077a89d04558e exit (libc.so.6 + 0x4558e)
                                                #14 0x000077a89d02b398 __libc_start_call_main (libc.so.6 + 0x2b398)
                                                #15 0x000077a89d02b4a8 __libc_start_main@@GLIBC_2.34 (libc.so.6 + 0x2b4a8)
                                                #16 0x0000610c512c39e5 _start (.Hyprland-wrapped + 0x3e99e5)

                                                Stack trace of thread 1171:
                                                #0  0x000077a89d1295ed syscall (libc.so.6 + 0x1295ed)
                                                #1  0x000077a89f2c9a57 g_cond_wait (libglib-2.0.so.0 + 0x9ea57)
                                                #2  0x000077a89f25545c g_async_queue_pop_intern_unlocked (libglib-2.0.so.0 + 0x2a4>
                                                #3  0x000077a89f255981 g_async_queue_pop (libglib-2.0.so.0 + 0x2a981)
                                                #4  0x000077a89c8fbb68 fc_thread_func (libpangoft2-1.0.so.0 + 0xeb68)
                                                #5  0x000077a89f2ca20e g_thread_proxy (libglib-2.0.so.0 + 0x9f20e)
                                                #6  0x000077a89d09f751 start_thread (libc.so.6 + 0x9f751)
                                                #7  0x000077a89d12ba4c __clone3 (libc.so.6 + 0x12ba4c)
                                                ELF object binary architecture: AMD x86-64
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'ca.desrt.dconf' in service file '/nix/store/k20cb2ak86l1>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'com.feralinteractive.GameMode' in service file '/nix/sto>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.openobex' in service file '/nix/store/k20cb2ak86l1wb>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.blueman.Applet' in service file '/nix/store/k20cb2ak>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.blueman.Manager' in service file '/nix/store/k20cb2a>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.bluez.obex' in service file '/nix/store/k20cb2ak86l1>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.impl.portal.PermissionStore' in service >
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.impl.portal.desktop.gtk' in service file>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.impl.portal.desktop.hyprland' in service>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.import1' in service file '/nix/store/k20>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.machine1' in service file '/nix/store/k2>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.portable1' in service file '/nix/store/k>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.portal.Desktop' in service file '/nix/st>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.portal.Documents' in service file '/nix/>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.systemd1' in service file '/nix/store/k2>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.xfce.FileManager' in service file '/nix/store/k20cb2>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.FileManager1' in service file '/nix/stor>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.xfce.Thunar' in service file '/nix/store/k20cb2ak86l>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.xfce.Xfconf' in service file '/nix/store/k20cb2ak86l>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.bluez.obex' in service file '/nix/store/xw4px3j0ln3d>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.blueman.Applet' in service file '/nix/store/s4n3h1bl>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.blueman.Manager' in service file '/nix/store/s4n3h1b>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.xfce.Xfconf' in service file '/nix/store/3dbwv6z3di2>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.xfce.FileManager' in service file '/nix/store/dwvl3s>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.FileManager1' in service file '/nix/stor>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.xfce.Thunar' in service file '/nix/store/dwvl3sjary7>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'ca.desrt.dconf' in service file '/nix/store/k8dirqxswvp1>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.impl.portal.PermissionStore' in service >
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.portal.Desktop' in service file '/nix/st>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.portal.Documents' in service file '/nix/>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.impl.portal.desktop.hyprland' in service>
11月 21 10:48:54 nexus dbus-broker-launch[1468]: Ignoring duplicate name 'org.freedesktop.impl.portal.desktop.gtk' in service file>
11月 21 10:48:56 nexus steam-runtime-steam-remote[2089]: E: Steam is not running: No such device or address
11月 21 10:49:20 nexus NetworkManager[813]: <error> [1795268960.4242] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:49:50 nexus NetworkManager[813]: <error> [1795268990.5389] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:50:17 nexus (protonplus)[6463]: protonplus.service: Failed at step EXEC spawning /home/dareggon/.nix-profile/bin/proton>
11月 21 10:50:17 nexus systemd[1384]: Failed to start ProtonPlus.
11月 21 10:50:21 nexus NetworkManager[813]: <error> [1795269021.1553] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:50:50 nexus NetworkManager[813]: <error> [1795269050.4431] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:51:20 nexus NetworkManager[813]: <error> [1795269080.5484] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:51:51 nexus NetworkManager[813]: <error> [1795269111.1690] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:52:20 nexus NetworkManager[813]: <error> [1795269140.2490] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:52:51 nexus NetworkManager[813]: <error> [1795269171.0717] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:53:20 nexus NetworkManager[813]: <error> [1795269200.6646] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:53:50 nexus NetworkManager[813]: <error> [1795269230.9768] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:54:20 nexus NetworkManager[813]: <error> [1795269260.7986] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:54:50 nexus NetworkManager[813]: <error> [1795269290.4736] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:55:19 nexus NetworkManager[813]: <error> [1795269319.5529] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
11月 21 10:55:50 nexus NetworkManager[813]: <error> [1795269350.8882] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::>
