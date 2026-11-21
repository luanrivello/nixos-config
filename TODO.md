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

 nexus  dareggon  nixos-config  main [⇡ 󱈎 ]                                                                               󰗼 1
失⫸ journalctl -b -k -o short-monotonic
[    1.254448] nexus kernel: Linux version 7.3.0 (nixbld@localhost) (gcc (GCC) 16.2.0, GNU ld (GNU Binutils) 2.46) #1-NixOS SMP PR>
[    1.254468] nexus kernel: Command line: initrd=\EFI\nixos\k0vxxx1nlv14gvs0q2b41gg5lb0k9vk7-initrd-linux-7.3-initrd.efi init=/ni>
[    1.254474] nexus kernel: BIOS-provided physical RAM map:
[    1.254479] nexus kernel: BIOS-e820: [mem 0x0000000000000000-0x000000000009ffff]  System RAM
[    1.254485] nexus kernel: BIOS-e820: [mem 0x00000000000a0000-0x00000000000fffff]  device reserved
[    1.254489] nexus kernel: BIOS-e820: [mem 0x0000000000100000-0x0000000009ccefff]  System RAM
[    1.254494] nexus kernel: BIOS-e820: [mem 0x0000000009ccf000-0x0000000009ffffff]  device reserved
[    1.254498] nexus kernel: BIOS-e820: [mem 0x000000000a000000-0x000000000a1fffff]  System RAM
[    1.254502] nexus kernel: BIOS-e820: [mem 0x000000000a200000-0x000000000a20efff]  ACPI NVS
[    1.254506] nexus kernel: BIOS-e820: [mem 0x000000000a20f000-0x000000000affffff]  System RAM
[    1.254510] nexus kernel: BIOS-e820: [mem 0x000000000b000000-0x000000000b01ffff]  device reserved
[    1.254514] nexus kernel: BIOS-e820: [mem 0x000000000b020000-0x00000000b8937fff]  System RAM
[    1.254518] nexus kernel: BIOS-e820: [mem 0x00000000b8938000-0x00000000ba07bfff]  device reserved
[    1.254522] nexus kernel: BIOS-e820: [mem 0x00000000ba07c000-0x00000000ba1effff]  ACPI data
[    1.254528] nexus kernel: BIOS-e820: [mem 0x00000000ba1f0000-0x00000000bbca9fff]  ACPI NVS
[    1.254533] nexus kernel: BIOS-e820: [mem 0x00000000bbcaa000-0x00000000bcbfefff]  device reserved
[    1.254537] nexus kernel: BIOS-e820: [mem 0x00000000bcbff000-0x00000000bdffffff]  System RAM
[    1.254541] nexus kernel: BIOS-e820: [mem 0x00000000be000000-0x00000000bfffffff]  device reserved
[    1.254545] nexus kernel: BIOS-e820: [gap 0x00000000c0000000-0x00000000efffffff]
[    1.254548] nexus kernel: BIOS-e820: [mem 0x00000000f0000000-0x00000000f7ffffff]  device reserved
[    1.254552] nexus kernel: BIOS-e820: [gap 0x00000000f8000000-0x00000000fd1fffff]
[    1.254556] nexus kernel: BIOS-e820: [mem 0x00000000fd200000-0x00000000fd2fffff]  device reserved
[    1.254560] nexus kernel: BIOS-e820: [gap 0x00000000fd300000-0x00000000fd5fffff]
[    1.254566] nexus kernel: BIOS-e820: [mem 0x00000000fd600000-0x00000000fd6fffff]  device reserved
[    1.254574] nexus kernel: BIOS-e820: [gap 0x00000000fd700000-0x00000000fe9fffff]
[    1.254581] nexus kernel: BIOS-e820: [mem 0x00000000fea00000-0x00000000fea0ffff]  device reserved
[    1.254585] nexus kernel: BIOS-e820: [gap 0x00000000fea10000-0x00000000feb7ffff]
[    1.254590] nexus kernel: BIOS-e820: [mem 0x00000000feb80000-0x00000000fec01fff]  device reserved
[    1.254594] nexus kernel: BIOS-e820: [gap 0x00000000fec02000-0x00000000fec0ffff]
[    1.254598] nexus kernel: BIOS-e820: [mem 0x00000000fec10000-0x00000000fec10fff]  device reserved
[    1.254602] nexus kernel: BIOS-e820: [gap 0x00000000fec11000-0x00000000fec2ffff]
[    1.254611] nexus kernel: BIOS-e820: [mem 0x00000000fec30000-0x00000000fec30fff]  device reserved
[    1.254619] nexus kernel: BIOS-e820: [gap 0x00000000fec31000-0x00000000fecfffff]
[    1.254623] nexus kernel: BIOS-e820: [mem 0x00000000fed00000-0x00000000fed00fff]  device reserved
[    1.254627] nexus kernel: BIOS-e820: [gap 0x00000000fed01000-0x00000000fed3ffff]
[    1.254631] nexus kernel: BIOS-e820: [mem 0x00000000fed40000-0x00000000fed44fff]  device reserved
[    1.254635] nexus kernel: BIOS-e820: [gap 0x00000000fed45000-0x00000000fed7ffff]
[    1.254639] nexus kernel: BIOS-e820: [mem 0x00000000fed80000-0x00000000fed8ffff]  device reserved
[    1.254642] nexus kernel: BIOS-e820: [gap 0x00000000fed90000-0x00000000fedc1fff]
[    1.254646] nexus kernel: BIOS-e820: [mem 0x00000000fedc2000-0x00000000fedcffff]  device reserved
[    1.254653] nexus kernel: BIOS-e820: [gap 0x00000000fedd0000-0x00000000fedd3fff]
[    1.254657] nexus kernel: BIOS-e820: [mem 0x00000000fedd4000-0x00000000fedd5fff]  device reserved
[    1.254661] nexus kernel: BIOS-e820: [gap 0x00000000fedd6000-0x00000000feffffff]
[    1.254665] nexus kernel: BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff]  device reserved
[    1.254669] nexus kernel: BIOS-e820: [mem 0x0000000100000000-0x000000083e2fffff]  System RAM
[    1.254675] nexus kernel: BIOS-e820: [mem 0x000000083e300000-0x000000083fffffff]  device reserved
[    1.254679] nexus kernel: NX (Execute Disable) protection: active
[    1.254682] nexus kernel: APIC: Static calls initialized
[    1.254686] nexus kernel: efi: EFI v2.7 by American Megatrends
[    1.254691] nexus kernel: efi: ACPI=0xbbc93000 ACPI 2.0=0xbbc93014 TPMFinalLog=0xbac5d000 SMBIOS=0xbca25000 SMBIOS 3.0=0xbca240>
[    1.254695] nexus kernel: random: crng init done
[    1.254699] nexus kernel: efi: Remove mem313: MMIO range=[0xf0000000-0xf7ffffff] (128MB) from e820 map
[    1.254703] nexus kernel: e820: remove [mem 0xf0000000-0xf7ffffff] device reserved
[    1.254707] nexus kernel: efi: Remove mem314: MMIO range=[0xfd200000-0xfd2fffff] (1MB) from e820 map
[    1.254711] nexus kernel: e820: remove [mem 0xfd200000-0xfd2fffff] device reserved
[    1.254715] nexus kernel: efi: Remove mem315: MMIO range=[0xfd600000-0xfd6fffff] (1MB) from e820 map
[    1.254719] nexus kernel: e820: remove [mem 0xfd600000-0xfd6fffff] device reserved
[    1.254723] nexus kernel: efi: Not removing mem316: MMIO range=[0xfea00000-0xfea0ffff] (64KB) from e820 map
[    1.254726] nexus kernel: efi: Remove mem317: MMIO range=[0xfeb80000-0xfec01fff] (0MB) from e820 map
[    1.254730] nexus kernel: e820: remove [mem 0xfeb80000-0xfec01fff] device reserved
[    1.254736] nexus kernel: efi: Not removing mem318: MMIO range=[0xfec10000-0xfec10fff] (4KB) from e820 map
[    1.254740] nexus kernel: efi: Not removing mem319: MMIO range=[0xfec30000-0xfec30fff] (4KB) from e820 map
[    1.254744] nexus kernel: efi: Not removing mem320: MMIO range=[0xfed00000-0xfed00fff] (4KB) from e820 map
[    1.254748] nexus kernel: efi: Not removing mem321: MMIO range=[0xfed40000-0xfed44fff] (20KB) from e820 map
[    1.254752] nexus kernel: efi: Not removing mem322: MMIO range=[0xfed80000-0xfed8ffff] (64KB) from e820 map
[    1.254756] nexus kernel: efi: Not removing mem323: MMIO range=[0xfedc2000-0xfedcffff] (56KB) from e820 map
[    1.254759] nexus kernel: efi: Not removing mem324: MMIO range=[0xfedd4000-0xfedd5fff] (8KB) from e820 map
[    1.254763] nexus kernel: efi: Remove mem325: MMIO range=[0xff000000-0xffffffff] (16MB) from e820 map
[    1.254767] nexus kernel: e820: remove [mem 0xff000000-0xffffffff] device reserved
[    1.254771] nexus kernel: DMI: SMBIOS 3.3.0 present.
[    1.254775] nexus kernel: DMI: Gigabyte Technology Co., Ltd. B550M AORUS ELITE/B550M AORUS ELITE, BIOS FE 03/22/2024
[    1.254779] nexus kernel: DMI: Memory slots populated: 2/4
[    1.254783] nexus kernel: tsc: Fast TSC calibration using PIT
[    1.254787] nexus kernel: tsc: Detected 3593.018 MHz processor
[    1.254791] nexus kernel: e820: update [mem 0x00000000-0x00000fff] System RAM ==> device reserved
[    1.254797] nexus kernel: e820: remove [mem 0x000a0000-0x000fffff] System RAM
[    1.254801] nexus kernel: last_pfn = 0x83e300 max_arch_pfn = 0x400000000
[    1.254806] nexus kernel: MTRR map: 5 entries (3 fixed + 2 variable; max 20), built from 9 variable MTRRs
[    1.254810] nexus kernel: x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT
[    1.254814] nexus kernel: e820: update [mem 0xc0000000-0xffffffff] System RAM ==> device reserved
[    1.254819] nexus kernel: last_pfn = 0xbe000 max_arch_pfn = 0x400000000
[    1.254823] nexus kernel: esrt: Reserving ESRT space from 0x00000000b70a7118 to 0x00000000b70a7150.
[    1.254827] nexus kernel: e820: update [mem 0xb70a7000-0xb70a7fff] System RAM ==> device reserved
[    1.254831] nexus kernel: Using GB pages for direct mapping
[    1.254837] nexus kernel: Secure boot disabled
[    1.254841] nexus kernel: RAMDISK: [mem 0xaf759000-0xb0fcdfff]
[    1.254846] nexus kernel: ACPI: Early table checksum verification disabled
[    1.254850] nexus kernel: ACPI: RSDP 0x00000000BBC93014 000024 (v02 ALASKA)
[    1.254854] nexus kernel: ACPI: XSDT 0x00000000BBC92728 0000F4 (v01 ALASKA A M I    01072009 AMI  01000013)
[    1.254858] nexus kernel: ACPI: FACP 0x00000000BA1D5000 000114 (v06 ALASKA A M I    01072009 AMI  00010013)
[    1.254862] nexus kernel: ACPI: DSDT 0x00000000BA0C4000 00626B (v02 ALASKA A M I    01072009 INTL 20190509)
[    1.254866] nexus kernel: ACPI: FACS 0x00000000BAC8D000 000040
[    1.254871] nexus kernel: ACPI: SSDT 0x00000000BA1E4000 00B7D3 (v02 GBT    GSWApp   00000001 INTL 20190509)
[    1.254877] nexus kernel: ACPI: IVRS 0x00000000BA1E3000 0000D0 (v02 AMD    AmdTable 00000001 AMD  00000001)
[    1.254881] nexus kernel: ACPI: SSDT 0x00000000BA1DB000 0072B0 (v02 AMD    Artic    00000002 MSFT 04000000)
[    1.254885] nexus kernel: ACPI: SSDT 0x00000000BA1D7000 003D7C (v02 AMD    AMD AOD  00000001 INTL 20190509)
[    1.254889] nexus kernel: ACPI: SSDT 0x00000000BA1D6000 0001AD (v02 ALASKA CPUSSDT  01072009 AMI  01072009)
[    1.254893] nexus kernel: ACPI: FIDT 0x00000000BA1CE000 00009C (v01 ALASKA A M I    01072009 AMI  00010013)
[    1.254898] nexus kernel: ACPI: MCFG 0x00000000BA1CD000 00003C (v01 ALASKA A M I    01072009 MSFT 00010013)
[    1.254902] nexus kernel: ACPI: HPET 0x00000000BA1CC000 000038 (v01 ALASKA A M I    01072009 AMI  00000005)
[    1.254906] nexus kernel: ACPI: FPDT 0x00000000BA1CB000 000044 (v01 ALASKA A M I    01072009 AMI  01000013)
[    1.254912] nexus kernel: ACPI: VFCT 0x00000000BA1BC000 00E284 (v01 ALASKA A M I    00000001 AMD  31504F47)
[    1.254916] nexus kernel: ACPI: BGRT 0x00000000BA1BB000 000038 (v01 ALASKA A M I    01072009 AMI  00010013)
[    1.254920] nexus kernel: ACPI: TPM2 0x00000000BA1BA000 00004C (v04 ALASKA A M I    00000001 AMI  00000000)
[    1.254925] nexus kernel: ACPI: SSDT 0x00000000BA1B6000 003E88 (v02 AMD    AmdTable 00000001 AMD  00000001)
[    1.254929] nexus kernel: ACPI: CRAT 0x00000000BA1B5000 000B68 (v01 AMD    AmdTable 00000001 AMD  00000001)
[    1.254933] nexus kernel: ACPI: CDIT 0x00000000BA1B4000 000029 (v01 AMD    AmdTable 00000001 AMD  00000001)
[    1.254937] nexus kernel: ACPI: WPBT 0x00000000BA0D5000 000038 (v01 ALASKA A M I    00000001 GBT  20181220)
[    1.254942] nexus kernel: ACPI: SSDT 0x00000000BA0D4000 00068E (v02 AMD    ArticDGP 00000001 INTL 20190509)
[    1.254946] nexus kernel: ACPI: SSDT 0x00000000BA0D2000 001522 (v02 AMD    ArticTPX 00000001 INTL 20190509)
[    1.254952] nexus kernel: ACPI: SSDT 0x00000000BA0D1000 000788 (v02 AMD    ArticNOI 00000001 INTL 20190509)
[    1.254956] nexus kernel: ACPI: SSDT 0x00000000BA0CD000 003A23 (v02 AMD    ArticN   00000001 INTL 20190509)
[    1.254960] nexus kernel: ACPI: WSMT 0x00000000BA0CC000 000028 (v01 ALASKA A M I    01072009 AMI  00010013)
[    1.254965] nexus kernel: ACPI: APIC 0x00000000BA0CB000 00015E (v04 ALASKA A M I    01072009 AMI  00010013)
[    1.254969] nexus kernel: ACPI: SSDT 0x00000000BA1D4000 0008AC (v02 AMD    ArticPRN 00000001 INTL 20190509)
[    1.254973] nexus kernel: ACPI: SSDT 0x00000000BA1D2000 00147F (v02 AMD    ArticC   00000001 INTL 20190509)
[    1.254977] nexus kernel: ACPI: SSDT 0x00000000BA1D1000 0000BF (v01 AMD    AmdTable 00001000 INTL 20190509)
[    1.254982] nexus kernel: ACPI: Reserving FACP table memory at [mem 0xba1d5000-0xba1d5113]
[    1.254990] nexus kernel: ACPI: Reserving DSDT table memory at [mem 0xba0c4000-0xba0ca26a]
[    1.254995] nexus kernel: ACPI: Reserving FACS table memory at [mem 0xbac8d000-0xbac8d03f]
[    1.255003] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1e4000-0xba1ef7d2]
[    1.255008] nexus kernel: ACPI: Reserving IVRS table memory at [mem 0xba1e3000-0xba1e30cf]
[    1.255012] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1db000-0xba1e22af]
[    1.255016] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d7000-0xba1dad7b]
[    1.255020] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d6000-0xba1d61ac]
[    1.255024] nexus kernel: ACPI: Reserving FIDT table memory at [mem 0xba1ce000-0xba1ce09b]
[    1.255028] nexus kernel: ACPI: Reserving MCFG table memory at [mem 0xba1cd000-0xba1cd03b]
[    1.255032] nexus kernel: ACPI: Reserving HPET table memory at [mem 0xba1cc000-0xba1cc037]
[    1.255036] nexus kernel: ACPI: Reserving FPDT table memory at [mem 0xba1cb000-0xba1cb043]
[    1.255041] nexus kernel: ACPI: Reserving VFCT table memory at [mem 0xba1bc000-0xba1ca283]
[    1.255046] nexus kernel: ACPI: Reserving BGRT table memory at [mem 0xba1bb000-0xba1bb037]
[    1.255051] nexus kernel: ACPI: Reserving TPM2 table memory at [mem 0xba1ba000-0xba1ba04b]
[    1.255055] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1b6000-0xba1b9e87]
[    1.255059] nexus kernel: ACPI: Reserving CRAT table memory at [mem 0xba1b5000-0xba1b5b67]
[    1.255063] nexus kernel: ACPI: Reserving CDIT table memory at [mem 0xba1b4000-0xba1b4028]
[    1.255067] nexus kernel: ACPI: Reserving WPBT table memory at [mem 0xba0d5000-0xba0d5037]
[    1.255071] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba0d4000-0xba0d468d]
[    1.255075] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba0d2000-0xba0d3521]
[    1.255079] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba0d1000-0xba0d1787]
[    1.255085] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba0cd000-0xba0d0a22]
[    1.255089] nexus kernel: ACPI: Reserving WSMT table memory at [mem 0xba0cc000-0xba0cc027]
[    1.255093] nexus kernel: ACPI: Reserving APIC table memory at [mem 0xba0cb000-0xba0cb15d]
[    1.255097] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d4000-0xba1d48ab]
[    1.255101] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d2000-0xba1d347e]
[    1.255106] nexus kernel: ACPI: Reserving SSDT table memory at [mem 0xba1d1000-0xba1d10be]
[    1.255110] nexus kernel: No NUMA configuration found
[    1.255114] nexus kernel: Faking a node at [mem 0x0000000000000000-0x000000083e2fffff]
[    1.255118] nexus kernel: NODE_DATA(0) allocated [mem 0x83e2fa480-0x83e2ffcff]
[    1.255122] nexus kernel: ACPI: PM-Timer IO Port: 0x808
[    1.255128] nexus kernel: ACPI: LAPIC_NMI (acpi_id[0xff] high edge lint[0x1])
[    1.255132] nexus kernel: IOAPIC[0]: apic_id 13, version 33, address 0xfec00000, GSI 0-23
[    1.255137] nexus kernel: IOAPIC[1]: apic_id 14, version 33, address 0xfec01000, GSI 24-55
[    1.255141] nexus kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    1.255145] nexus kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 low level)
[    1.255149] nexus kernel: ACPI: Using ACPI (MADT) for SMP configuration information
[    1.255153] nexus kernel: ACPI: HPET id: 0x10228201 base: 0xfed00000
[    1.255157] nexus kernel: e820: update [mem 0xb4ec5000-0xb4f1bfff] System RAM ==> device reserved
[    1.255162] nexus kernel: CPU topo: Max. logical packages:   1
[    1.255167] nexus kernel: CPU topo: Max. logical nodes:      1
[    1.255172] nexus kernel: CPU topo: Num. nodes per package:  1
[    1.255176] nexus kernel: CPU topo: Max. logical dies:       1
[    1.255180] nexus kernel: CPU topo: Max. dies per package:   1
[    1.255184] nexus kernel: CPU topo: Max. threads per core:   2
[    1.255188] nexus kernel: CPU topo: Num. cores per package:     6
[    1.255192] nexus kernel: CPU topo: Num. threads per package:  12
[    1.255196] nexus kernel: CPU topo: Allowing 12 present CPUs plus 0 hotplug CPUs
[    1.255200] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    1.255205] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x000a0000-0x000fffff]
[    1.255210] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x09ccf000-0x09ffffff]
[    1.255215] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x0a200000-0x0a20efff]
[    1.255219] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0x0b000000-0x0b01ffff]
[    1.255223] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0xb4ec5000-0xb4f1bfff]
[    1.255227] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0xb70a7000-0xb70a7fff]
[    1.255231] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0xb8938000-0xbcbfefff]
[    1.255235] nexus kernel: PM: hibernation: Registered nosave memory: [mem 0xbe000000-0xffffffff]
[    1.255240] nexus kernel: [gap 0xc0000000-0xfe9fffff] available for PCI devices
[    1.255244] nexus kernel: Booting paravirtualized kernel on bare hardware
[    1.255250] nexus kernel: clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 >
[    1.255254] nexus kernel: Zone ranges:
[    1.255258] nexus kernel:   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    1.255262] nexus kernel:   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    1.255266] nexus kernel:   Normal   [mem 0x0000000100000000-0x000000083e2fffff]
[    1.255270] nexus kernel:   Device   empty
[    1.255274] nexus kernel: Movable zone start for each node
[    1.255279] nexus kernel: Early memory node ranges
[    1.255283] nexus kernel:   node   0: [mem 0x0000000000001000-0x000000000009ffff]
[    1.255287] nexus kernel:   node   0: [mem 0x0000000000100000-0x0000000009ccefff]
[    1.255292] nexus kernel:   node   0: [mem 0x000000000a000000-0x000000000a1fffff]
[    1.255296] nexus kernel:   node   0: [mem 0x000000000a20f000-0x000000000affffff]
[    1.255300] nexus kernel:   node   0: [mem 0x000000000b020000-0x00000000b8937fff]
[    1.255305] nexus kernel:   node   0: [mem 0x00000000bcbff000-0x00000000bdffffff]
[    1.255309] nexus kernel:   node   0: [mem 0x0000000100000000-0x000000083e2fffff]
[    1.255313] nexus kernel: Initmem setup node 0 [mem 0x0000000000001000-0x000000083e2fffff]
[    1.255317] nexus kernel: On node 0, zone DMA: 1 pages in unavailable ranges
[    1.255321] nexus kernel: On node 0, zone DMA: 96 pages in unavailable ranges
[    1.255325] nexus kernel: On node 0, zone DMA32: 817 pages in unavailable ranges
[    1.255329] nexus kernel: On node 0, zone DMA32: 15 pages in unavailable ranges
[    1.255335] nexus kernel: On node 0, zone DMA32: 32 pages in unavailable ranges
[    1.255340] nexus kernel: On node 0, zone DMA32: 17095 pages in unavailable ranges
[    1.255344] nexus kernel: On node 0, zone Normal: 8192 pages in unavailable ranges
[    1.255348] nexus kernel: On node 0, zone Normal: 7424 pages in unavailable ranges
[    1.255352] nexus kernel: setup_percpu: NR_CPUS:512 nr_cpumask_bits:12 nr_cpu_ids:12 nr_node_ids:1
[    1.255356] nexus kernel: percpu: Embedded 100 pages/cpu s286720 r8192 d114688 u524288
[    1.255361] nexus kernel: pcpu-alloc: s286720 r8192 d114688 u524288 alloc=1*2097152
[    1.255365] nexus kernel: pcpu-alloc: [0] 00 01 02 03 [0] 04 05 06 07
[    1.255369] nexus kernel: pcpu-alloc: [0] 08 09 10 11
[    1.255376] nexus kernel: Kernel command line: initrd=\EFI\nixos\k0vxxx1nlv14gvs0q2b41gg5lb0k9vk7-initrd-linux-7.3-initrd.efi i>
[    1.255380] nexus kernel: printk: log buffer data + meta data: 1048576 + 4456448 = 5505024 bytes
[    1.255385] nexus kernel: Dentry cache hash table entries: 4194304 (order: 13, 33554432 bytes, linear)
[    1.255389] nexus kernel: Inode-cache hash table entries: 2097152 (order: 12, 16777216 bytes, linear)
[    1.255393] nexus kernel: software IO TLB: area num 16.
[    1.255397] nexus kernel: Fallback order for Node 0: 0
[    1.255401] nexus kernel: Built 1 zonelists, mobility grouping on.  Total pages: 8354936
[    1.255405] nexus kernel: Policy zone: Normal
[    1.255409] nexus kernel: mem auto-init: stack:all(zero), heap alloc:on, heap free:off
[    1.255415] nexus kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=12, Nodes=1
[    1.255420] nexus kernel: allocated 67108864 bytes of page_ext
[    1.255424] nexus kernel: ftrace: allocating 50587 entries in 200 pages
[    1.255428] nexus kernel: ftrace: allocated 200 pages with 3 groups
[    1.255432] nexus kernel: Dynamic Preempt: lazy
[    1.255436] nexus kernel: rcu: Preemptible hierarchical RCU implementation.
[    1.255441] nexus kernel: rcu:         RCU event tracing is enabled.
[    1.255445] nexus kernel: rcu:         RCU restricting CPUs from NR_CPUS=512 to nr_cpu_ids=12.
[    1.255449] nexus kernel:         Trampoline variant of Tasks RCU enabled.
[    1.255455] nexus kernel:         Rude variant of Tasks RCU enabled.
[    1.255459] nexus kernel:         Tracing variant of Tasks RCU enabled.
[    1.255463] nexus kernel: rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
[    1.255467] nexus kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=12
[    1.255471] nexus kernel: RCU Tasks: Setting shift to 4 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=12.
[    1.255476] nexus kernel: RCU Tasks Rude: Setting shift to 4 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=12.
[    1.255480] nexus kernel: NR_IRQS: 33024, nr_irqs: 1064, preallocated irqs: 16
[    1.255484] nexus kernel: rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    1.255488] nexus kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
[    1.255494] nexus kernel: kfence: initialized - using 2097152 bytes for 255 objects at 0x(____ptrval____)-0x(____ptrval____)
[    1.255499] nexus kernel: Console: colour dummy device 80x25
[    1.255503] nexus kernel: printk: legacy console [tty0] enabled
[    1.255507] nexus kernel: ACPI: Core revision 20260408
[    1.255511] nexus kernel: clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 133484873504 ns
[    1.255515] nexus kernel: APIC: Switch to symmetric I/O mode setup
[    1.255520] nexus kernel: AMD-Vi: Using global IVHD EFR:0x206d73ef22254ade, EFR2:0x0
[    1.255526] nexus kernel: x2apic enabled
[    1.255533] nexus kernel: APIC: Switched APIC routing to: cluster x2apic
[    1.255545] nexus kernel: ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    1.255555] nexus kernel: clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x33ca8f78eca, max_idle_ns: 440795267105>
[    1.255564] nexus kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 7186.03 BogoMIPS (lpj=3593>
[    1.255571] nexus kernel: SVM disabled (by BIOS) in MSR_VM_CR
[    1.255581] nexus kernel: x86/cpu: User Mode Instruction Prevention (UMIP) activated
[    1.255589] nexus kernel: LVT offset 1 assigned for vector 0xf9
[    1.255598] nexus kernel: LVT offset 2 assigned for vector 0xf4
[    1.255607] nexus kernel: Last level iTLB entries: 4KB 512, 2MB 512, 4MB 256
[    1.255617] nexus kernel: Last level dTLB entries: 4KB 2048, 2MB 2048, 4MB 1024, 1GB 0
[    1.255628] nexus kernel: process: using mwait in idle threads
[    1.255638] nexus kernel: mitigations: Enabled attack vectors: user_kernel, user_user, guest_host, guest_guest, SMT mitigations>
[    1.255646] nexus kernel: Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl
[    1.255655] nexus kernel: Transient Scheduler Attacks: Mitigation: Clear CPU buffers
[    1.255664] nexus kernel: Spectre V2 : Mitigation: Retpolines
[    1.255674] nexus kernel: Spectre V2 : User space: Mitigation: STIBP always-on protection
[    1.255683] nexus kernel: Speculative Return Stack Overflow: Mitigation: Safe RET
[    1.255692] nexus kernel: VMSCAPE: Mitigation: IBPB before exit to userspace
[    1.255703] nexus kernel: Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    1.255713] nexus kernel: Spectre V2 : Spectre v2 / SpectreRSB: Filling RSB on context switch and VMEXIT
[    1.255722] nexus kernel: Spectre V2 : Enabling Restricted Speculation for firmware calls
[    1.255731] nexus kernel: Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    1.255741] nexus kernel: active return thunk: srso_alias_return_thunk
[    1.255750] nexus kernel: x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    1.255758] nexus kernel: x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    1.255767] nexus kernel: x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    1.255776] nexus kernel: x86/fpu: Supporting XSAVE feature 0x200: 'Protection Keys User registers'
[    1.255788] nexus kernel: x86/fpu: Supporting XSAVE feature 0x800: 'Control-flow User registers'
[    1.255797] nexus kernel: x86/fpu: Supporting XSAVE feature 0x1000: 'Control-flow Kernel registers (KVM only)'
[    1.255807] nexus kernel: x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    1.255814] nexus kernel: x86/fpu: xstate_offset[9]:  832, xstate_sizes[9]:    8
[    1.255824] nexus kernel: x86/fpu: xstate_offset[11]:  840, xstate_sizes[11]:   16
[    1.255832] nexus kernel: x86/fpu: xstate_offset[12]:  856, xstate_sizes[12]:   24
[    1.255842] nexus kernel: x86/fpu: Enabled xstate features 0x1a07, context size is 880 bytes, using 'compacted' format.
[    1.255851] nexus kernel: pid_max: default: 32768 minimum: 301
[    1.255858] nexus kernel: landlock: Up and running.
[    1.255871] nexus kernel: Yama: becoming mindful.
[    1.255880] nexus kernel: LSM support for eBPF active
[    1.255889] nexus kernel: Mount-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    1.255898] nexus kernel: Mountpoint-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    1.255906] nexus kernel: VFS: Finished mounting rootfs on nullfs
[    1.255915] nexus kernel: smpboot: CPU0: AMD Ryzen 5 5500 (family: 0x19, model: 0x50, stepping: 0x0)
[    1.255924] nexus kernel: Performance Events: Fam17h+ core perfctr, AMD PMU driver.
[    1.255933] nexus kernel: ... version:                   0
[    1.255942] nexus kernel: ... bit width:                 48
[    1.255949] nexus kernel: ... generic counters:          6
[    1.255954] nexus kernel: ... generic bitmap:            000000000000003f
[    1.255958] nexus kernel: ... fixed-purpose counters:    0
[    1.255962] nexus kernel: ... fixed-purpose bitmap:      0000000000000000
[    1.255966] nexus kernel: ... value mask:                0000ffffffffffff
[    1.255970] nexus kernel: ... max period:                00007fffffffffff
[    1.255975] nexus kernel: ... global_ctrl mask:          000000000000003f
[    1.255979] nexus kernel: signal: max sigframe size: 3376
[    1.255983] nexus kernel: rcu: Hierarchical SRCU implementation.
[    1.255989] nexus kernel: rcu:         Max phase no-delay instances is 400.
[    1.255993] nexus kernel: Timer migration: 2 hierarchy levels; 8 children per group; 2 crossnode level
[    1.255998] nexus kernel: NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    1.256006] nexus kernel: smp: Bringing up secondary CPUs ...
[    1.256010] nexus kernel: smpboot: x86: Booting SMP configuration:
[    1.256014] nexus kernel: .... node  #0, CPUs:        #1  #2  #3  #4  #5  #6  #7  #8  #9 #10 #11
[    1.256018] nexus kernel: Spectre V2 : Update user space SMT mitigation: STIBP always-on
[    1.256023] nexus kernel: smp: Brought up 1 node, 12 CPUs
[    1.256027] nexus kernel: smpboot: Total of 12 processors activated (86232.43 BogoMIPS)
[    1.256033] nexus kernel: Memory: 32512324K/33419744K available (19033K kernel code, 6218K rwdata, 14872K rodata, 6864K init, 4>
[    1.256037] nexus kernel: devtmpfs: initialized
[    1.256042] nexus kernel: x86/mm: Memory block size: 128MB
[    1.256046] nexus kernel: ACPI: PM: Registering ACPI NVS region [mem 0x0a200000-0x0a20efff] (61440 bytes)
[    1.256050] nexus kernel: ACPI: PM: Registering ACPI NVS region [mem 0xba1f0000-0xbbca9fff] (28024832 bytes)
[    1.256054] nexus kernel: posixtimers hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    1.256059] nexus kernel: futex hash table entries: 4096 (262144 bytes on 1 NUMA nodes, total 256 KiB, linear).
[    1.256063] nexus kernel: PM: RTC time: 13:48:32, date: 2026-11-21
[    1.256067] nexus kernel: NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    1.256073] nexus kernel: DMA: preallocated 4096 KiB GFP_KERNEL pool for atomic allocations
[    1.256077] nexus kernel: DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    1.256081] nexus kernel: DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    1.256085] nexus kernel: audit: initializing netlink subsys (disabled)
[    1.256089] nexus kernel: audit: type=2000 audit(1795268912.159:1): state=initialized audit_enabled=0 res=1
[    1.256094] nexus kernel: thermal_sys: Registered thermal governor 'fair_share'
[    1.256098] nexus kernel: thermal_sys: Registered thermal governor 'bang_bang'
[    1.256102] nexus kernel: thermal_sys: Registered thermal governor 'step_wise'
[    1.256106] nexus kernel: thermal_sys: Registered thermal governor 'user_space'
[    1.256112] nexus kernel: thermal_sys: Registered thermal governor 'power_allocator'
[    1.256116] nexus kernel: cpuidle: using governor menu
[    1.256121] nexus kernel: efi: Freeing EFI boot services memory: 83388K
[    1.256125] nexus kernel: acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    1.256129] nexus kernel: PCI: ECAM [mem 0xf0000000-0xf7ffffff] (base 0xf0000000) for domain 0000 [bus 00-7f]
[    1.256133] nexus kernel: PCI: Using configuration type 1 for base access
[    1.256137] nexus kernel: kprobes: kprobe jump-optimization is enabled. All kprobes are optimized if possible.
[    1.256142] nexus kernel: HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pages
[    1.256147] nexus kernel: HugeTLB: 16380 KiB vmemmap can be freed for a 1.00 GiB page
[    1.256152] nexus kernel: HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
[    1.256156] nexus kernel: HugeTLB: 28 KiB vmemmap can be freed for a 2.00 MiB page
[    1.256159] nexus kernel: ACPI: Added _OSI(Module Device)
[    1.256164] nexus kernel: ACPI: Added _OSI(Processor Device)
[    1.256168] nexus kernel: ACPI: Added _OSI(Processor Aggregator Device)
[    1.256172] nexus kernel: ACPI: 13 ACPI AML tables successfully acquired and loaded
[    1.256176] nexus kernel: ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    1.256181] nexus kernel: ACPI: \_SB_: platform _OSC: OS support mask [002e7eff]
[    1.256185] nexus kernel: ACPI: Interpreter enabled
[    1.256190] nexus kernel: ACPI: PM: (supports S0 S3 S4 S5)
[    1.256195] nexus kernel: ACPI: Using IOAPIC for interrupt routing
[    1.256199] nexus kernel: PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    1.256203] nexus kernel: PCI: Ignoring E820 reservations for host bridge windows
[    1.256207] nexus kernel: ACPI: Enabled 7 GPEs in block 00 to 1F
[    1.256212] nexus kernel: ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    1.256420] nexus kernel: acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI HPX-Type3]
[    1.256576] nexus kernel: acpi PNP0A08:00: _OSC: platform does not support [LTR]
[    1.256719] nexus kernel: acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug PME AER PCIeCapability]
[    1.256855] nexus kernel: acpi PNP0A08:00: [Firmware Info]: ECAM [mem 0xf0000000-0xf7ffffff] for domain 0000 [bus 00-7f] only p>
[    1.256862] nexus kernel: PCI host bridge to bus 0000:00
[    1.256999] nexus kernel: pci_bus 0000:00: root bus resource [io  0x0000-0x03af window]
[    1.257143] nexus kernel: pci_bus 0000:00: root bus resource [io  0x03e0-0x0cf7 window]
[    1.257269] nexus kernel: pci_bus 0000:00: root bus resource [io  0x03b0-0x03df window]
[    1.257390] nexus kernel: pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    1.257512] nexus kernel: pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000dffff window]
[    1.257633] nexus kernel: pci_bus 0000:00: root bus resource [mem 0xc0000000-0xfec2ffff window]
[    1.257753] nexus kernel: pci_bus 0000:00: root bus resource [mem 0xfee00000-0xffffffff window]
[    1.257874] nexus kernel: pci_bus 0000:00: root bus resource [bus 00-ff]
[    1.258021] nexus kernel: pci 0000:00:00.0: [1022:1630] type 00 class 0x060000 conventional PCI endpoint
[    1.258156] nexus kernel: pci 0000:00:00.2: [1022:1631] type 00 class 0x080600 conventional PCI endpoint
[    1.258289] nexus kernel: pci 0000:00:01.0: [1022:1632] type 00 class 0x060000 conventional PCI endpoint
[    1.258420] nexus kernel: pci 0000:00:01.1: [1022:1633] type 01 class 0x060400 PCIe Root Port
[    1.258550] nexus kernel: pci 0000:00:01.1: PCI bridge to [bus 01-03]
[    1.258678] nexus kernel: pci 0000:00:01.1:   bridge window [io  0xf000-0xffff]
[    1.258817] nexus kernel: pci 0000:00:01.1:   bridge window [mem 0xfce00000-0xfcffffff]
[    1.258947] nexus kernel: pci 0000:00:01.1:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.259091] nexus kernel: pci 0000:00:01.1: PME# supported from D0 D3hot D3cold
[    1.259225] nexus kernel: pci 0000:00:02.0: [1022:1632] type 00 class 0x060000 conventional PCI endpoint
[    1.259361] nexus kernel: pci 0000:00:02.1: [1022:1634] type 01 class 0x060400 PCIe Root Port
[    1.259492] nexus kernel: pci 0000:00:02.1: PCI bridge to [bus 04-06]
[    1.259626] nexus kernel: pci 0000:00:02.1:   bridge window [io  0xe000-0xefff]
[    1.259756] nexus kernel: pci 0000:00:02.1:   bridge window [mem 0xfcc00000-0xfcdfffff]
[    1.259885] nexus kernel: pci 0000:00:02.1: enabling Extended Tags
[    1.260053] nexus kernel: pci 0000:00:02.1: PME# supported from D0 D3hot D3cold
[    1.260189] nexus kernel: pci 0000:00:08.0: [1022:1632] type 00 class 0x060000 conventional PCI endpoint
[    1.260320] nexus kernel: pci 0000:00:08.1: [1022:1635] type 01 class 0x060400 PCIe Root Port
[    1.260450] nexus kernel: pci 0000:00:08.1: PCI bridge to [bus 07]
[    1.260578] nexus kernel: pci 0000:00:08.1:   bridge window [mem 0xfc800000-0xfcbfffff]
[    1.260709] nexus kernel: pci 0000:00:08.1: enabling Extended Tags
[    1.260836] nexus kernel: pci 0000:00:08.1: PME# supported from D0 D3hot D3cold
[    1.260969] nexus kernel: pci 0000:00:14.0: [1022:790b] type 00 class 0x0c0500 conventional PCI endpoint
[    1.261120] nexus kernel: pci 0000:00:14.3: [1022:790e] type 00 class 0x060100 conventional PCI endpoint
[    1.261272] nexus kernel: pci 0000:00:18.0: [1022:166a] type 00 class 0x060000 conventional PCI endpoint
[    1.261405] nexus kernel: pci 0000:00:18.1: [1022:166b] type 00 class 0x060000 conventional PCI endpoint
[    1.261535] nexus kernel: pci 0000:00:18.2: [1022:166c] type 00 class 0x060000 conventional PCI endpoint
[    1.261665] nexus kernel: pci 0000:00:18.3: [1022:166d] type 00 class 0x060000 conventional PCI endpoint
[    1.261799] nexus kernel: pci 0000:00:18.4: [1022:166e] type 00 class 0x060000 conventional PCI endpoint
[    1.261929] nexus kernel: pci 0000:00:18.5: [1022:166f] type 00 class 0x060000 conventional PCI endpoint
[    1.262068] nexus kernel: pci 0000:00:18.6: [1022:1670] type 00 class 0x060000 conventional PCI endpoint
[    1.262198] nexus kernel: pci 0000:00:18.7: [1022:1671] type 00 class 0x060000 conventional PCI endpoint
[    1.262337] nexus kernel: pci 0000:01:00.0: [1002:1478] type 01 class 0x060400 PCIe Switch Upstream Port
[    1.262473] nexus kernel: pci 0000:01:00.0: BAR 0 [mem 0xfcf00000-0xfcf03fff]
[    1.262614] nexus kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
[    1.262750] nexus kernel: pci 0000:01:00.0:   bridge window [io  0xf000-0xffff]
[    1.262886] nexus kernel: pci 0000:01:00.0:   bridge window [mem 0xfce00000-0xfcefffff]
[    1.263029] nexus kernel: pci 0000:01:00.0:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.263167] nexus kernel: pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
[    1.263304] nexus kernel: pci 0000:01:00.0: 126.016 Gb/s available PCIe bandwidth, limited by 8.0 GT/s PCIe x16 link at 0000:00>
[    1.263440] nexus kernel: pci 0000:00:01.1: PCI bridge to [bus 01-03]
[    1.263587] nexus kernel: pci 0000:02:00.0: [1002:1479] type 01 class 0x060400 PCIe Switch Downstream Port
[    1.263736] nexus kernel: pci 0000:02:00.0: PCI bridge to [bus 03]
[    1.263881] nexus kernel: pci 0000:02:00.0:   bridge window [io  0xf000-0xffff]
[    1.264034] nexus kernel: pci 0000:02:00.0:   bridge window [mem 0xfce00000-0xfcefffff]
[    1.264182] nexus kernel: pci 0000:02:00.0:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.264327] nexus kernel: pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
[    1.264491] nexus kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
[    1.264674] nexus kernel: pci 0000:03:00.0: [1002:731f] type 00 class 0x030000 PCIe Legacy Endpoint
[    1.264839] nexus kernel: pci 0000:03:00.0: BAR 0 [mem 0xd0000000-0xdfffffff 64bit pref]
[    1.265039] nexus kernel: pci 0000:03:00.0: BAR 2 [mem 0xe0000000-0xe01fffff 64bit pref]
[    1.265239] nexus kernel: pci 0000:03:00.0: BAR 4 [io  0xf000-0xf0ff]
[    1.265397] nexus kernel: pci 0000:03:00.0: BAR 5 [mem 0xfce00000-0xfce7ffff]
[    1.265553] nexus kernel: pci 0000:03:00.0: ROM [mem 0xfce80000-0xfce9ffff pref]
[    1.265706] nexus kernel: pci 0000:03:00.0: PME# supported from D1 D2 D3hot D3cold
[    1.265862] nexus kernel: pci 0000:03:00.0: 126.016 Gb/s available PCIe bandwidth, limited by 8.0 GT/s PCIe x16 link at 0000:00>
[    1.266052] nexus kernel: pci 0000:03:00.1: [1002:ab38] type 00 class 0x040300 PCIe Legacy Endpoint
[    1.266216] nexus kernel: pci 0000:03:00.1: BAR 0 [mem 0xfcea0000-0xfcea3fff]
[    1.266368] nexus kernel: pci 0000:03:00.1: PME# supported from D1 D2 D3hot D3cold
[    1.266513] nexus kernel: pci 0000:02:00.0: PCI bridge to [bus 03]
[    1.266652] nexus kernel: pci 0000:04:00.0: [1022:43ee] type 00 class 0x0c0330 PCIe Legacy Endpoint
[    1.266793] nexus kernel: pci 0000:04:00.0: BAR 0 [mem 0xfcda0000-0xfcda7fff 64bit]
[    1.266931] nexus kernel: pci 0000:04:00.0: enabling Extended Tags
[    1.267104] nexus kernel: pci 0000:04:00.0: PME# supported from D3hot D3cold
[    1.267255] nexus kernel: pci 0000:04:00.1: [1022:43eb] type 00 class 0x010601 PCIe Legacy Endpoint
[    1.267393] nexus kernel: pci 0000:04:00.1: BAR 5 [mem 0xfcd80000-0xfcd9ffff]
[    1.267530] nexus kernel: pci 0000:04:00.1: ROM [mem 0xfcd00000-0xfcd7ffff pref]
[    1.267665] nexus kernel: pci 0000:04:00.1: enabling Extended Tags
[    1.267800] nexus kernel: pci 0000:04:00.1: PME# supported from D3hot D3cold
[    1.267939] nexus kernel: pci 0000:04:00.2: [1022:43e9] type 01 class 0x060400 PCIe Switch Upstream Port
[    1.268086] nexus kernel: pci 0000:04:00.2: PCI bridge to [bus 05-06]
[    1.268225] nexus kernel: pci 0000:04:00.2:   bridge window [io  0xe000-0xefff]
[    1.268371] nexus kernel: pci 0000:04:00.2:   bridge window [mem 0xfcc00000-0xfccfffff]
[    1.268508] nexus kernel: pci 0000:04:00.2: enabling Extended Tags
[    1.268645] nexus kernel: pci 0000:04:00.2: PME# supported from D3hot D3cold
[    1.268780] nexus kernel: pci 0000:00:02.1: PCI bridge to [bus 04-06]
[    1.268932] nexus kernel: pci 0000:05:09.0: [1022:43ea] type 01 class 0x060400 PCIe Switch Downstream Port
[    1.269088] nexus kernel: pci 0000:05:09.0: PCI bridge to [bus 06]
[    1.269235] nexus kernel: pci 0000:05:09.0:   bridge window [io  0xe000-0xefff]
[    1.269379] nexus kernel: pci 0000:05:09.0:   bridge window [mem 0xfcc00000-0xfccfffff]
[    1.269529] nexus kernel: pci 0000:05:09.0: enabling Extended Tags
[    1.269675] nexus kernel: pci 0000:05:09.0: PME# supported from D3hot D3cold
[    1.269812] nexus kernel: pci 0000:04:00.2: PCI bridge to [bus 05-06]
[    1.269966] nexus kernel: pci 0000:06:00.0: [10ec:8168] type 00 class 0x020000 PCIe Endpoint
[    1.270128] nexus kernel: pci 0000:06:00.0: BAR 0 [io  0xe000-0xe0ff]
[    1.270281] nexus kernel: pci 0000:06:00.0: BAR 2 [mem 0xfcc04000-0xfcc04fff 64bit]
[    1.270432] nexus kernel: pci 0000:06:00.0: BAR 4 [mem 0xfcc00000-0xfcc03fff 64bit]
[    1.270586] nexus kernel: pci 0000:06:00.0: supports D1 D2
[    1.270737] nexus kernel: pci 0000:06:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    1.270883] nexus kernel: pci 0000:05:09.0: PCI bridge to [bus 06]
[    1.271027] nexus kernel: pci 0000:07:00.0: [1022:145a] type 00 class 0x130000 PCIe Legacy Endpoint
[    1.271165] nexus kernel: pci 0000:07:00.0: enabling Extended Tags
[    1.271303] nexus kernel: pci 0000:07:00.1: [1002:1637] type 00 class 0x040300 PCIe Legacy Endpoint
[    1.271439] nexus kernel: pci 0000:07:00.1: BAR 0 [mem 0xfcb08000-0xfcb0bfff]
[    1.271575] nexus kernel: pci 0000:07:00.1: enabling Extended Tags
[    1.271721] nexus kernel: pci 0000:07:00.1: PME# supported from D1 D2 D3hot D3cold
[    1.271860] nexus kernel: pci 0000:07:00.2: [1022:15df] type 00 class 0x108000 PCIe Endpoint
[    1.271997] nexus kernel: pci 0000:07:00.2: BAR 2 [mem 0xfca00000-0xfcafffff]
[    1.272141] nexus kernel: pci 0000:07:00.2: BAR 5 [mem 0xfcb0c000-0xfcb0dfff]
[    1.272277] nexus kernel: pci 0000:07:00.2: enabling Extended Tags
[    1.272416] nexus kernel: pci 0000:07:00.3: [1022:1639] type 00 class 0x0c0330 PCIe Endpoint
[    1.272553] nexus kernel: pci 0000:07:00.3: BAR 0 [mem 0xfc900000-0xfc9fffff 64bit]
[    1.272692] nexus kernel: pci 0000:07:00.3: enabling Extended Tags
[    1.272828] nexus kernel: pci 0000:07:00.3: PME# supported from D0 D3hot D3cold
[    1.272967] nexus kernel: pci 0000:07:00.4: [1022:1639] type 00 class 0x0c0330 PCIe Endpoint
[    1.273114] nexus kernel: pci 0000:07:00.4: BAR 0 [mem 0xfc800000-0xfc8fffff 64bit]
[    1.273252] nexus kernel: pci 0000:07:00.4: enabling Extended Tags
[    1.273387] nexus kernel: pci 0000:07:00.4: PME# supported from D0 D3hot D3cold
[    1.273526] nexus kernel: pci 0000:07:00.6: [1022:15e3] type 00 class 0x040300 PCIe Endpoint
[    1.273663] nexus kernel: pci 0000:07:00.6: BAR 0 [mem 0xfcb00000-0xfcb07fff]
[    1.273803] nexus kernel: pci 0000:07:00.6: enabling Extended Tags
[    1.273939] nexus kernel: pci 0000:07:00.6: PME# supported from D0 D3hot D3cold
[    1.274078] nexus kernel: pci 0000:00:08.1: PCI bridge to [bus 07]
[    1.274086] nexus kernel: ACPI: PCI: Interrupt link LNKA configured for IRQ 0
[    1.274091] nexus kernel: ACPI: PCI: Interrupt link LNKB configured for IRQ 0
[    1.274095] nexus kernel: ACPI: PCI: Interrupt link LNKC configured for IRQ 0
[    1.274100] nexus kernel: ACPI: PCI: Interrupt link LNKD configured for IRQ 0
[    1.274105] nexus kernel: ACPI: PCI: Interrupt link LNKE configured for IRQ 0
[    1.274112] nexus kernel: ACPI: PCI: Interrupt link LNKF configured for IRQ 0
[    1.274116] nexus kernel: ACPI: PCI: Interrupt link LNKG configured for IRQ 0
[    1.274121] nexus kernel: ACPI: PCI: Interrupt link LNKH configured for IRQ 0
[    1.274125] nexus kernel: iommu: Default domain type: Translated
[    1.274130] nexus kernel: iommu: DMA domain TLB invalidation policy: lazy mode
[    1.274134] nexus kernel: ACPI: bus type USB registered
[    1.274138] nexus kernel: usbcore: registered new interface driver usbfs
[    1.274142] nexus kernel: usbcore: registered new interface driver hub
[    1.274146] nexus kernel: usbcore: registered new device driver usb
[    1.274151] nexus kernel: efivars: Registered efivars operations
[    1.274155] nexus kernel: NetLabel: Initializing
[    1.274161] nexus kernel: NetLabel:  domain hash size = 128
[    1.274165] nexus kernel: NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
[    1.274170] nexus kernel: NetLabel:  unlabeled traffic allowed by default
[    1.274175] nexus kernel: PCI: Using ACPI for IRQ routing
[    1.274179] nexus kernel: PCI: pci_cache_line_size set to 64 bytes
[    1.274184] nexus kernel: e820: register RAM buffer resource [mem 0x09ccf000-0x0bffffff]
[    1.274189] nexus kernel: e820: register RAM buffer resource [mem 0x0a200000-0x0bffffff]
[    1.274193] nexus kernel: e820: register RAM buffer resource [mem 0x0b000000-0x0bffffff]
[    1.274197] nexus kernel: e820: register RAM buffer resource [mem 0xb4ec5000-0xb7ffffff]
[    1.274203] nexus kernel: e820: register RAM buffer resource [mem 0xb70a7000-0xb7ffffff]
[    1.274208] nexus kernel: e820: register RAM buffer resource [mem 0xb8938000-0xbbffffff]
[    1.274212] nexus kernel: e820: register RAM buffer resource [mem 0xbe000000-0xbfffffff]
[    1.274217] nexus kernel: e820: register RAM buffer resource [mem 0x83e300000-0x83fffffff]
[    1.274370] nexus kernel: pci 0000:03:00.0: vgaarb: setting as boot VGA device
[    1.274522] nexus kernel: pci 0000:03:00.0: vgaarb: bridge control possible
[    1.274673] nexus kernel: pci 0000:03:00.0: vgaarb: VGA device added: decodes=io+mem,owns=none,locks=none
[    1.274679] nexus kernel: vgaarb: loaded
[    1.274684] nexus kernel: hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    1.274688] nexus kernel: hpet0: 3 comparators, 32-bit 14.318180 MHz counter
[    1.274694] nexus kernel: clocksource: Switched to clocksource tsc-early
[    1.274699] nexus kernel: VFS: Disk quotas dquot_6.6.0
[    1.274704] nexus kernel: VFS: Dquot-cache hash table entries: 512 (4096 bytes)
[    1.274861] nexus kernel: acpi PNP0C01:00: Reserved [mem 0xf0000000-0xf7ffffff]
[    1.275021] nexus kernel: acpi PNP0C02:00: Reserved [mem 0xfeb80000-0xfebfffff]
[    1.275187] nexus kernel: acpi PNP0C02:01: Could not reserve [mem 0x1000000000000 window]
[    1.275353] nexus kernel: acpi PNP0C02:02: Reserved [mem 0xfd200000-0xfd2fffff]
[    1.275521] nexus kernel: acpi PNP0C02:03: Reserved [io  0x0a00-0x0a2f]
[    1.275672] nexus kernel: acpi PNP0C02:03: Reserved [io  0x0a30-0x0a3f]
[    1.275823] nexus kernel: acpi PNP0C02:03: Reserved [io  0x0a40-0x0a4f]
[    1.275973] nexus kernel: acpi PNP0C02:03: Reserved [mem 0xfe000000-0xfe00ffff]
[    1.276126] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0010-0x001f]
[    1.276270] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0022-0x003f]
[    1.276412] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0063]
[    1.276566] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0065]
[    1.276710] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0067-0x006f]
[    1.276852] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0072-0x007f]
[    1.276994] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0080]
[    1.277227] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0084-0x0086]
[    1.277419] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0088]
[    1.277602] nexus kernel: acpi PNP0C02:04: Skipped [io  0x008c-0x008e]
[    1.277782] nexus kernel: acpi PNP0C02:04: Skipped [io  0x0090-0x009f]
[    1.277961] nexus kernel: acpi PNP0C02:04: Skipped [io  0x00a2-0x00bf]
[    1.278171] nexus kernel: acpi PNP0C02:04: Skipped [io  0x00b1]
[    1.278352] nexus kernel: acpi PNP0C02:04: Skipped [io  0x00e0-0x00ef]
[    1.278495] nexus kernel: acpi PNP0C02:04: Reserved [io  0x04d0-0x04d1]
[    1.278669] nexus kernel: acpi PNP0C02:04: Reserved [io  0x040b]
[    1.278825] nexus kernel: acpi PNP0C02:04: Reserved [io  0x04d6]
[    1.278974] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c00-0x0c01]
[    1.279128] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c14]
[    1.279272] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c50-0x0c51]
[    1.279420] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c52]
[    1.279563] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c6c]
[    1.279706] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0c6f]
[    1.279847] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0cd8-0x0cdf]
[    1.279989] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0800-0x089f]
[    1.280138] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0b00-0x0b0f]
[    1.280281] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0b20-0x0b3f]
[    1.280424] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0900-0x090f]
[    1.280566] nexus kernel: acpi PNP0C02:04: Reserved [io  0x0910-0x091f]
[    1.280714] nexus kernel: acpi PNP0C02:04: Could not reserve [mem 0xfec00000-0xfec00fff]
[    1.280855] nexus kernel: acpi PNP0C02:04: Could not reserve [mem 0xfec01000-0xfec01fff]
[    1.280997] nexus kernel: acpi PNP0C02:04: Reserved [mem 0xfedc0000-0xfedc0fff]
[    1.281146] nexus kernel: acpi PNP0C02:04: Reserved [mem 0xfee00000-0xfee00fff]
[    1.281288] nexus kernel: acpi PNP0C02:04: Could not reserve [mem 0xfed80000-0xfed8ffff]
[    1.281430] nexus kernel: acpi PNP0C02:04: Reserved [mem 0xfec10000-0xfec10fff]
[    1.281571] nexus kernel: acpi PNP0C02:04: Reserved [mem 0xff000000-0xffffffff]
[    1.281578] nexus kernel: pnp: PnP ACPI init
[    1.281717] nexus kernel: pnp 00:00: [dma 0 disabled]
[    1.281725] nexus kernel: pnp: PnP ACPI: found 1 devices
[    1.281729] nexus kernel: clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    1.281734] nexus kernel: NET: Registered PF_INET protocol family
[    1.281739] nexus kernel: IP idents hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    1.281743] nexus kernel: tcp_listen_portaddr_hash hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    1.281748] nexus kernel: Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    1.281752] nexus kernel: TCP established hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    1.281759] nexus kernel: TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    1.281764] nexus kernel: TCP: Hash tables configured (established 262144 bind 65536)
[    1.281769] nexus kernel: MPTCP token hash table entries: 32768 (order: 8, 786432 bytes, linear)
[    1.281773] nexus kernel: UDP hash table entries: 16384 (order: 8, 1048576 bytes, linear)
[    1.281778] nexus kernel: NET: Registered PF_UNIX/PF_LOCAL protocol family
[    1.281782] nexus kernel: NET: Registered PF_XDP protocol family
[    1.281930] nexus kernel: pci 0000:02:00.0: PCI bridge to [bus 03]
[    1.282083] nexus kernel: pci 0000:02:00.0:   bridge window [io  0xf000-0xffff]
[    1.282233] nexus kernel: pci 0000:02:00.0:   bridge window [mem 0xfce00000-0xfcefffff]
[    1.282379] nexus kernel: pci 0000:02:00.0:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.282517] nexus kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
[    1.282654] nexus kernel: pci 0000:01:00.0:   bridge window [io  0xf000-0xffff]
[    1.282791] nexus kernel: pci 0000:01:00.0:   bridge window [mem 0xfce00000-0xfcefffff]
[    1.282928] nexus kernel: pci 0000:01:00.0:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.283065] nexus kernel: pci 0000:00:01.1: PCI bridge to [bus 01-03]
[    1.283195] nexus kernel: pci 0000:00:01.1:   bridge window [io  0xf000-0xffff]
[    1.283324] nexus kernel: pci 0000:00:01.1:   bridge window [mem 0xfce00000-0xfcffffff]
[    1.283458] nexus kernel: pci 0000:00:01.1:   bridge window [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.283603] nexus kernel: pci 0000:05:09.0: PCI bridge to [bus 06]
[    1.283747] nexus kernel: pci 0000:05:09.0:   bridge window [io  0xe000-0xefff]
[    1.283893] nexus kernel: pci 0000:05:09.0:   bridge window [mem 0xfcc00000-0xfccfffff]
[    1.284036] nexus kernel: pci 0000:04:00.2: PCI bridge to [bus 05-06]
[    1.284174] nexus kernel: pci 0000:04:00.2:   bridge window [io  0xe000-0xefff]
[    1.284321] nexus kernel: pci 0000:04:00.2:   bridge window [mem 0xfcc00000-0xfccfffff]
[    1.284453] nexus kernel: pci 0000:00:02.1: PCI bridge to [bus 04-06]
[    1.284582] nexus kernel: pci 0000:00:02.1:   bridge window [io  0xe000-0xefff]
[    1.284714] nexus kernel: pci 0000:00:02.1:   bridge window [mem 0xfcc00000-0xfcdfffff]
[    1.284844] nexus kernel: pci 0000:00:08.1: PCI bridge to [bus 07]
[    1.284977] nexus kernel: pci 0000:00:08.1:   bridge window [mem 0xfc800000-0xfcbfffff]
[    1.285109] nexus kernel: pci_bus 0000:00: resource 4 [io  0x0000-0x03af window]
[    1.285233] nexus kernel: pci_bus 0000:00: resource 5 [io  0x03e0-0x0cf7 window]
[    1.285354] nexus kernel: pci_bus 0000:00: resource 6 [io  0x03b0-0x03df window]
[    1.285475] nexus kernel: pci_bus 0000:00: resource 7 [io  0x0d00-0xffff window]
[    1.285597] nexus kernel: pci_bus 0000:00: resource 8 [mem 0x000a0000-0x000dffff window]
[    1.285718] nexus kernel: pci_bus 0000:00: resource 9 [mem 0xc0000000-0xfec2ffff window]
[    1.285840] nexus kernel: pci_bus 0000:00: resource 10 [mem 0xfee00000-0xffffffff window]
[    1.285986] nexus kernel: pci_bus 0000:01: resource 0 [io  0xf000-0xffff]
[    1.286123] nexus kernel: pci_bus 0000:01: resource 1 [mem 0xfce00000-0xfcffffff]
[    1.286254] nexus kernel: pci_bus 0000:01: resource 2 [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.286403] nexus kernel: pci_bus 0000:02: resource 0 [io  0xf000-0xffff]
[    1.286542] nexus kernel: pci_bus 0000:02: resource 1 [mem 0xfce00000-0xfcefffff]
[    1.286680] nexus kernel: pci_bus 0000:02: resource 2 [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.286838] nexus kernel: pci_bus 0000:03: resource 0 [io  0xf000-0xffff]
[    1.286987] nexus kernel: pci_bus 0000:03: resource 1 [mem 0xfce00000-0xfcefffff]
[    1.287139] nexus kernel: pci_bus 0000:03: resource 2 [mem 0xd0000000-0xe01fffff 64bit pref]
[    1.287280] nexus kernel: pci_bus 0000:04: resource 0 [io  0xe000-0xefff]
[    1.287411] nexus kernel: pci_bus 0000:04: resource 1 [mem 0xfcc00000-0xfcdfffff]
[    1.287562] nexus kernel: pci_bus 0000:05: resource 0 [io  0xe000-0xefff]
[    1.287701] nexus kernel: pci_bus 0000:05: resource 1 [mem 0xfcc00000-0xfccfffff]
[    1.287859] nexus kernel: pci_bus 0000:06: resource 0 [io  0xe000-0xefff]
[    1.288033] nexus kernel: pci_bus 0000:06: resource 1 [mem 0xfcc00000-0xfccfffff]
[    1.288179] nexus kernel: pci_bus 0000:07: resource 1 [mem 0xfc800000-0xfcbfffff]
[    1.288335] nexus kernel: pci 0000:03:00.0: disabling ATS
[    1.288487] nexus kernel: pci 0000:03:00.1: D0 power state depends on 0000:03:00.0
[    1.288623] nexus kernel: pci 0000:07:00.3: extending delay after power-on from D3hot to 20 msec
[    1.288758] nexus kernel: pci 0000:07:00.4: extending delay after power-on from D3hot to 20 msec
[    1.288765] nexus kernel: PCI: CLS 64 bytes, default 64
[    1.288892] nexus kernel: pci 0000:00:00.2: AMD-Vi: IOMMU performance counters supported
[    1.288903] nexus kernel: Trying to unpack rootfs image as initramfs...
[    1.289038] nexus kernel: pci 0000:00:01.0: Adding to iommu group 0
[    1.289179] nexus kernel: pci 0000:00:01.1: Adding to iommu group 1
[    1.289308] nexus kernel: pci 0000:00:02.0: Adding to iommu group 2
[    1.289437] nexus kernel: pci 0000:00:02.1: Adding to iommu group 3
[    1.289566] nexus kernel: pci 0000:00:08.0: Adding to iommu group 4
[    1.289695] nexus kernel: pci 0000:00:08.1: Adding to iommu group 5
[    1.289823] nexus kernel: pci 0000:00:14.0: Adding to iommu group 6
[    1.289956] nexus kernel: pci 0000:00:14.3: Adding to iommu group 6
[    1.290148] nexus kernel: pci 0000:00:18.0: Adding to iommu group 7
[    1.290325] nexus kernel: pci 0000:00:18.1: Adding to iommu group 7
[    1.290492] nexus kernel: pci 0000:00:18.2: Adding to iommu group 7
[    1.290655] nexus kernel: pci 0000:00:18.3: Adding to iommu group 7
[    1.290817] nexus kernel: pci 0000:00:18.4: Adding to iommu group 7
[    1.290978] nexus kernel: pci 0000:00:18.5: Adding to iommu group 7
[    1.291159] nexus kernel: pci 0000:00:18.6: Adding to iommu group 7
[    1.291323] nexus kernel: pci 0000:00:18.7: Adding to iommu group 7
[    1.291472] nexus kernel: pci 0000:01:00.0: Adding to iommu group 8
[    1.291617] nexus kernel: pci 0000:02:00.0: Adding to iommu group 9
[    1.291770] nexus kernel: pci 0000:03:00.0: Adding to iommu group 10
[    1.291920] nexus kernel: pci 0000:03:00.1: Adding to iommu group 11
[    1.292063] nexus kernel: pci 0000:04:00.0: Adding to iommu group 12
[    1.292202] nexus kernel: pci 0000:04:00.1: Adding to iommu group 12
[    1.292350] nexus kernel: pci 0000:04:00.2: Adding to iommu group 12
[    1.292501] nexus kernel: pci 0000:05:09.0: Adding to iommu group 12
[    1.292653] nexus kernel: pci 0000:06:00.0: Adding to iommu group 12
[    1.292790] nexus kernel: pci 0000:07:00.0: Adding to iommu group 13
[    1.292926] nexus kernel: pci 0000:07:00.1: Adding to iommu group 14
[    1.293073] nexus kernel: pci 0000:07:00.2: Adding to iommu group 15
[    1.293210] nexus kernel: pci 0000:07:00.3: Adding to iommu group 16
[    1.293347] nexus kernel: pci 0000:07:00.4: Adding to iommu group 17
[    1.293488] nexus kernel: pci 0000:07:00.6: Adding to iommu group 18
[    1.293495] nexus kernel: AMD-Vi: Extended features (0x206d73ef22254ade, 0x0): PPR X2APIC NX GT IA GA PC GA_vAPIC
[    1.293500] nexus kernel: AMD-Vi: Interrupt remapping enabled
[    1.293504] nexus kernel: AMD-Vi: X2APIC enabled
[    1.293509] nexus kernel: Freeing initrd memory: 25044K
[    1.293514] nexus kernel: AMD-Vi: Virtual APIC enabled
[    1.293518] nexus kernel: PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    1.293523] nexus kernel: software IO TLB: mapped [mem 0x00000000ab759000-0x00000000af759000] (64MB)
[    1.293527] nexus kernel: LVT offset 0 assigned for vector 0x400
[    1.293534] nexus kernel: perf: AMD IBS detected (0x000003ff)
[    1.293539] nexus kernel: perf/amd_iommu: Detected AMD IOMMU #0 (2 banks, 4 counters/bank).
[    1.293543] nexus kernel: Initialise system trusted keyrings
[    1.293548] nexus kernel: Key type blacklist registered
[    1.293552] nexus kernel: workingset: timestamp_bits=40 (anon: 35) max_order=23 bucket_order=0 (anon: 0)
[    1.293557] nexus kernel: integrity: Platform Keyring initialized
[    1.293561] nexus kernel: integrity: Machine keyring initialized
[    1.293566] nexus kernel: Key type asymmetric registered
[    1.293570] nexus kernel: Asymmetric key parser 'x509' registered
[    1.293576] nexus kernel: Block layer SCSI generic (bsg) driver version 0.4 loaded (major 248)
[    1.293581] nexus kernel: io scheduler mq-deadline registered
[    1.293585] nexus kernel: io scheduler kyber registered
[    1.293714] nexus kernel: pcieport 0000:00:01.1: PME: Signaling with IRQ 28
[    1.293844] nexus kernel: pcieport 0000:00:02.1: PME: Signaling with IRQ 29
[    1.293976] nexus kernel: pcieport 0000:00:08.1: PME: Signaling with IRQ 30
[    1.293982] nexus kernel: Monitor-Mwait will be used to enter C-1 state
[    1.293987] nexus kernel: Estimated ratio of average max frequency by base frequency (times 1024): 1119
[    1.294129] nexus kernel: tpm_crb_acpi MSFT0101:00: Disabling hwrng
[    1.294138] nexus kernel: ACPI: bus type drm_connector registered
[    1.294142] nexus kernel: usbcore: registered new interface driver usbserial_generic
[    1.294147] nexus kernel: usbserial: USB Serial support registered for generic
[    1.294307] nexus kernel: simple-framebuffer simple-framebuffer.0: [drm] Registered 1 planes with drm panic
[    1.294315] nexus kernel: [drm] Initialized simpledrm 1.0.0 for simple-framebuffer.0 on minor 0
[    1.294319] nexus kernel: fbcon: Deferring console take-over
[    1.294478] nexus kernel: simple-framebuffer simple-framebuffer.0: [drm] fb0: simpledrmdrmfb frame buffer device
[    1.294488] nexus kernel: pstore: Using crash dump compression: deflate
[    1.294493] nexus kernel: pstore: Registered efi_pstore as persistent store backend
[    1.294498] nexus kernel: drop_monitor: Initializing network drop monitor service
[    1.294502] nexus kernel: NET: Registered PF_INET6 protocol family
[    1.294506] nexus kernel: Segment Routing with IPv6
[    1.294511] nexus kernel: In-situ OAM (IOAM) with IPv6
[    1.294515] nexus kernel: x86/amd: Previous system reset reason [0x00200800]: ACPI power state transition occurred
[    1.294520] nexus kernel: microcode: Current revision: 0x0a500012
[    1.294526] nexus kernel: microcode: Updated early from: 0x0a50000f
[    1.294530] nexus kernel: resctrl: L3 allocation detected
[    1.294535] nexus kernel: resctrl: MB allocation detected
[    1.294539] nexus kernel: resctrl: L3 monitoring detected
[    1.294544] nexus kernel: IPI shorthand broadcast: enabled
[    1.294548] nexus kernel: sched_clock: Marking stable (684534577, 325097)->(697723335, -12863661)
[    1.294553] nexus kernel: registered taskstats version 1
[    1.294557] nexus kernel: Loading compiled-in X.509 certificates
[    1.294562] nexus kernel: Demotion targets for Node 0: null
[    1.294568] nexus kernel: Key type .fscrypt registered
[    1.294573] nexus kernel: Key type fscrypt-provisioning registered
[    1.294577] nexus kernel: ima: Allocated hash algorithm: sha1
[    1.294581] nexus kernel: ima: No architecture policies found
[    1.294586] nexus kernel: PM:   Magic number: 2:775:837
[    1.294590] nexus kernel: RAS: Correctable Errors collector initialized.
[    1.294595] nexus kernel: clk: Disabling unused clocks
[    1.294599] nexus kernel: PM: genpd: Disabling unused power domains
[    1.294603] nexus kernel: Freeing unused decrypted memory: 2028K
[    1.294610] nexus kernel: Freeing unused kernel image (initmem) memory: 6864K
[    1.294614] nexus kernel: Write protecting the kernel read-only data: 36864k
[    1.294619] nexus kernel: Freeing unused kernel image (text/rodata gap) memory: 1444K
[    1.294623] nexus kernel: Freeing unused kernel image (rodata/data gap) memory: 1512K
[    1.294628] nexus kernel: x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    1.294632] nexus kernel: Run /init as init process
[    1.294637] nexus kernel:   with arguments:
[    1.294641] nexus kernel:     /init
[    1.294645] nexus kernel:   with environment:
[    1.294651] nexus kernel:     HOME=/
[    1.294656] nexus kernel:     TERM=linux
[    1.294660] nexus kernel: autofs4: module verification failed: signature and/or required key missing - tainting kernel
[    1.294666] nexus systemd[1]: Inserted module 'autofs4'
[    1.294672] nexus systemd[1]: Successfully made /usr/ read-only.
[    1.294678] nexus systemd[1]: systemd 262 running in system mode (+PAM +AUDIT -SELINUX +APPARMOR +IMA +IPE +SMACK +SECCOMP -GNU>
[    1.294683] nexus systemd[1]: Detected architecture x86-64.
[    1.294690] nexus systemd[1]: Running in initrd.
[    1.294695] nexus kernel: fbcon: Taking over console
[    1.294699] nexus kernel: Console: switching to colour frame buffer device 240x67
[    1.294704] nexus systemd[1]: Initializing machine ID from random generator.
[    1.294709] nexus systemd[1]: Hostname set to <nexus>.
[    1.294714] nexus systemd[1]: bpf-restrict-fs: LSM BPF program attached
[    1.294719] nexus systemd[1]: Queued start job for default target Initrd Default Target.
[    1.294724] nexus systemd[1]: Created slice Slice /system/modprobe.
[    1.294729] nexus systemd[1]: Started Dispatch Password Requests to Console Directory Watch.
[    1.294735] nexus systemd[1]: Expecting device /dev/disk/by-uuid/fdcf9abe-f568-453a-ac2e-9201fddd61b9...
[    1.294740] nexus systemd[1]: Reached target Path Units.
[    1.294745] nexus systemd[1]: Reached target Slice Units.
[    1.294750] nexus systemd[1]: Reached target Swaps.
[    1.294755] nexus systemd[1]: Reached target Timer Units.
[    1.294760] nexus systemd[1]: Listening on D-Bus System Message Bus Socket.
[    1.294765] nexus systemd[1]: Listening on Journal Socket (/dev/log).
[    1.294770] nexus systemd[1]: Listening on Journal Sockets.
[    1.294776] nexus systemd[1]: Listening on udev Kernel Socket.
[    1.294781] nexus systemd[1]: Listening on udev Varlink Socket.
[    1.294786] nexus systemd[1]: Reached target Socket Units.
[    1.294791] nexus systemd[1]: Starting Create List of Static Device Nodes...
[    1.294795] nexus systemd[1]: Starting Load Kernel Module configfs...
[    1.294800] nexus systemd[1]: Starting Journal Service...
[    1.294805] nexus systemd[1]: Starting Load Kernel Modules...
[    1.294810] nexus systemd[1]: Starting Coldplug All udev Devices...
[    1.294815] nexus systemd[1]: Finished Create List of Static Device Nodes.
[    1.294821] nexus systemd[1]: modprobe@configfs.service: Deactivated successfully.
[    1.294826] nexus systemd[1]: Finished Load Kernel Module configfs.
[    1.294831] nexus systemd[1]: Kernel Configuration File System skipped, unmet condition check ConditionPathExists=/sys/kernel/c>
[    1.294836] nexus systemd[1]: Starting Create Static Device Nodes in /dev gracefully...
[    1.294859] nexus systemd-journald[138]: Collecting audit messages is disabled.
[    1.294875] nexus systemd[1]: Finished Create Static Device Nodes in /dev gracefully.
[    1.294880] nexus systemd[1]: Starting Create Static Device Nodes in /dev...
[    1.294885] nexus kernel: device-mapper: core: CONFIG_IMA_DISABLE_HTABLE is disabled. Duplicate IMA measurements will not be re>
[    1.294889] nexus kernel: device-mapper: ioctl: 4.50.0-ioctl (2025-04-28) initialised: dm-devel@lists.linux.dev
[    1.294894] nexus systemd[1]: Finished Load Kernel Modules.
[    1.294899] nexus systemd[1]: Starting Apply Kernel Variables...
[    1.294904] nexus systemd[1]: Finished Create Static Device Nodes in /dev.
[    1.294910] nexus systemd[1]: Reached target Preparation for Local File Systems.
[    1.294915] nexus systemd[1]: Reached target Local File Systems.
[    1.294920] nexus systemd[1]: Starting Rule-based Manager for Device Events and Files...
[    1.294925] nexus systemd[1]: Finished Apply Kernel Variables.
[    1.294930] nexus systemd[1]: Started Rule-based Manager for Device Events and Files.
[    1.298011] nexus systemd[1]: Started Journal Service.
[    1.492039] nexus kernel: xhci_hcd 0000:04:00.0: xHCI Host Controller
[    1.492351] nexus kernel: xhci_hcd 0000:04:00.0: new USB bus registered, assigned bus number 1
[    1.492564] nexus kernel: SCSI subsystem initialized
[    1.511009] nexus kernel: libata version 3.00 loaded.
[    1.517012] nexus kernel: ahci 0000:04:00.1: SSS flag set, parallel bus scan disabled
[    1.517235] nexus kernel: ahci 0000:04:00.1: AHCI vers 0001.0301, 32 command slots, 6 Gbps, SATA mode
[    1.517407] nexus kernel: ahci 0000:04:00.1: 6/6 ports implemented (port mask 0x3f)
[    1.517571] nexus kernel: ahci 0000:04:00.1: flags: 64bit ncq sntf stag pm led clo only pmp pio slum part sxs deso sadm sds aps>
[    1.517740] nexus kernel: scsi host0: ahci
[    1.517916] nexus kernel: scsi host1: ahci
[    1.518090] nexus kernel: scsi host2: ahci
[    1.518254] nexus kernel: scsi host3: ahci
[    1.518417] nexus kernel: scsi host4: ahci
[    1.518576] nexus kernel: scsi host5: ahci
[    1.518739] nexus kernel: ata1: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80100 irq 37 lpm-pol 1 ext
[    1.518750] nexus kernel: ata2: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80180 irq 37 lpm-pol 1 ext
[    1.518756] nexus kernel: ata3: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80200 irq 37 lpm-pol 1 ext
[    1.518763] nexus kernel: ata4: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80280 irq 37 lpm-pol 1 ext
[    1.518769] nexus kernel: ata5: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80300 irq 37 lpm-pol 1 ext
[    1.518775] nexus kernel: ata6: SATA max UDMA/133 abar m131072@0xfcd80000 port 0xfcd80380 irq 37 lpm-pol 1 ext
[    1.548013] nexus kernel: xhci_hcd 0000:04:00.0: hcc params 0x0200ef81 hci version 0x110 quirks 0x0000000000000010
[    1.548282] nexus kernel: xhci_hcd 0000:04:00.0: xHCI Host Controller
[    1.548545] nexus kernel: xhci_hcd 0000:04:00.0: new USB bus registered, assigned bus number 2
[    1.548772] nexus kernel: xhci_hcd 0000:04:00.0: Host supports USB 3.1 Enhanced SuperSpeed
[    1.548961] nexus kernel: usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 7.03
[    1.549160] nexus kernel: usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.549303] nexus kernel: usb usb1: Product: xHCI Host Controller
[    1.549434] nexus kernel: usb usb1: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.549562] nexus kernel: usb usb1: SerialNumber: 0000:04:00.0
[    1.549687] nexus kernel: hub 1-0:1.0: USB hub found
[    1.549865] nexus kernel: hub 1-0:1.0: 10 ports detected
[    1.550048] nexus kernel: usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.550237] nexus kernel: usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 7.03
[    1.550400] nexus kernel: usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.550533] nexus kernel: usb usb2: Product: xHCI Host Controller
[    1.550654] nexus kernel: usb usb2: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.550781] nexus kernel: usb usb2: SerialNumber: 0000:04:00.0
[    1.550904] nexus kernel: hub 2-0:1.0: USB hub found
[    1.551094] nexus kernel: hub 2-0:1.0: 4 ports detected
[    1.551261] nexus kernel: xhci_hcd 0000:07:00.3: xHCI Host Controller
[    1.551428] nexus kernel: xhci_hcd 0000:07:00.3: new USB bus registered, assigned bus number 3
[    1.551593] nexus kernel: xhci_hcd 0000:07:00.3: hcc params 0x0268ffe5 hci version 0x110 quirks 0x0000020000000010
[    1.551763] nexus kernel: xhci_hcd 0000:07:00.3: xHCI Host Controller
[    1.551917] nexus kernel: xhci_hcd 0000:07:00.3: new USB bus registered, assigned bus number 4
[    1.552091] nexus kernel: xhci_hcd 0000:07:00.3: Host supports USB 3.1 Enhanced SuperSpeed
[    1.552243] nexus kernel: usb usb3: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 7.03
[    1.552404] nexus kernel: usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.552528] nexus kernel: usb usb3: Product: xHCI Host Controller
[    1.552648] nexus kernel: usb usb3: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.552767] nexus kernel: usb usb3: SerialNumber: 0000:07:00.3
[    1.552889] nexus kernel: hub 3-0:1.0: USB hub found
[    1.553063] nexus kernel: hub 3-0:1.0: 4 ports detected
[    1.553222] nexus kernel: usb usb4: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.553379] nexus kernel: usb usb4: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 7.03
[    1.553530] nexus kernel: usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.553653] nexus kernel: usb usb4: Product: xHCI Host Controller
[    1.553771] nexus kernel: usb usb4: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.553889] nexus kernel: usb usb4: SerialNumber: 0000:07:00.3
[    1.554016] nexus kernel: hub 4-0:1.0: USB hub found
[    1.554182] nexus kernel: hub 4-0:1.0: 2 ports detected
[    1.554339] nexus kernel: xhci_hcd 0000:07:00.4: xHCI Host Controller
[    1.554492] nexus kernel: xhci_hcd 0000:07:00.4: new USB bus registered, assigned bus number 5
[    1.554642] nexus kernel: xhci_hcd 0000:07:00.4: hcc params 0x0268ffe5 hci version 0x110 quirks 0x0000020000000010
[    1.554792] nexus kernel: xhci_hcd 0000:07:00.4: xHCI Host Controller
[    1.554940] nexus kernel: xhci_hcd 0000:07:00.4: new USB bus registered, assigned bus number 6
[    1.555095] nexus kernel: xhci_hcd 0000:07:00.4: Host supports USB 3.1 Enhanced SuperSpeed
[    1.555248] nexus kernel: usb usb5: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 7.03
[    1.555408] nexus kernel: usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.555530] nexus kernel: usb usb5: Product: xHCI Host Controller
[    1.555649] nexus kernel: usb usb5: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.555767] nexus kernel: usb usb5: SerialNumber: 0000:07:00.4
[    1.555885] nexus kernel: hub 5-0:1.0: USB hub found
[    1.556060] nexus kernel: hub 5-0:1.0: 4 ports detected
[    1.556222] nexus kernel: usb usb6: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.556382] nexus kernel: usb usb6: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 7.03
[    1.556534] nexus kernel: usb usb6: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.556662] nexus kernel: usb usb6: Product: xHCI Host Controller
[    1.556780] nexus kernel: usb usb6: Manufacturer: Linux 7.3.0 xhci-hcd
[    1.556898] nexus kernel: usb usb6: SerialNumber: 0000:07:00.4
[    1.557026] nexus kernel: hub 6-0:1.0: USB hub found
[    1.557193] nexus kernel: hub 6-0:1.0: 2 ports detected
[    1.695035] nexus kernel: tsc: Refined TSC clocksource calibration: 3593.248 MHz
[    1.695098] nexus kernel: clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x33cb68e6ea4, max_idle_ns: 440795288133 ns
[    1.695109] nexus kernel: clocksource: Switched to clocksource tsc
[    1.791078] nexus kernel: usb 5-1: new full-speed USB device number 2 using xhci_hcd
[    1.791247] nexus kernel: usb 3-1: new full-speed USB device number 2 using xhci_hcd
[    1.844050] nexus kernel: usb 1-2: new low-speed USB device number 2 using xhci_hcd
[    1.918104] nexus kernel: usb 5-1: New USB device found, idVendor=8087, idProduct=1024, bcdDevice= 1.00
[    1.925051] nexus kernel: usb 3-1: New USB device found, idVendor=10d7, idProduct=b012, bcdDevice=88.91
[    1.936037] nexus kernel: usb 5-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    1.936356] nexus kernel: usb 5-1: Product: Philips SPA 20/93
[    1.936556] nexus kernel: usb 5-1: Manufacturer: Generic
[    1.936735] nexus kernel: usb 5-1: SerialNumber: 20170726905923
[    1.943039] nexus kernel: usb 3-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    1.943374] nexus kernel: usb 3-1: Product: general adapter
[    1.943576] nexus kernel: usb 3-1: Manufacturer: Actions
[    1.943755] nexus kernel: usb 3-1: SerialNumber: ACTIONS1234
[    1.991055] nexus kernel: ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    1.991116] nexus kernel: ata1.00: Model 'Samsung SSD 860 EVO 250GB', rev 'RVT02B6Q', applying quirks: noncqtrim zeroaftertrim >
[    1.991128] nexus kernel: ata1.00: supports DRM functions and may not be fully accessible
[    1.991138] nexus kernel: ata1.00: ATA-11: Samsung SSD 860 EVO 250GB, RVT02B6Q, max UDMA/133
[    1.992052] nexus kernel: ata1.00: 488397168 sectors, multi 1: LBA48 NCQ (depth 32), AA
[    1.996274] nexus kernel: ata1.00: Features: Trust Dev-Sleep DIPM NCQ-sndrcv
[    1.997025] nexus kernel: ata1.00: supports DRM functions and may not be fully accessible
[    2.002024] nexus kernel: ata1.00: configured for UDMA/133
[    2.012034] nexus kernel: ahci 0000:04:00.1: port does not support device sleep
[    2.012396] nexus kernel: scsi 0:0:0:0: Direct-Access     ATA      Samsung SSD 860  2B6Q PQ: 0 ANSI: 5
[    2.055078] nexus kernel: usb 5-2: new full-speed USB device number 3 using xhci_hcd
[    2.117041] nexus kernel: usb 1-2: New USB device found, idVendor=1bcf, idProduct=0005, bcdDevice= 0.14
[    2.138038] nexus kernel: usb 1-2: New USB device strings: Mfr=0, Product=2, SerialNumber=0
[    2.138354] nexus kernel: usb 1-2: Product: USB Optical Mouse
[    2.189050] nexus kernel: usb 5-2: New USB device found, idVendor=0c45, idProduct=8006, bcdDevice= 1.03
[    2.204037] nexus kernel: usb 5-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    2.204342] nexus kernel: usb 5-2: Product: USB DEVICE
[    2.204548] nexus kernel: usb 5-2: Manufacturer: SONIX
[    2.320255] nexus kernel: usb 1-6: new low-speed USB device number 3 using xhci_hcd
[    2.487043] nexus kernel: ata2: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    2.489049] nexus kernel: ata2.00: ATA-9: SanDisk SSD PLUS 120GB, UE5100RL, max UDMA/133
[    2.489114] nexus kernel: ata2.00: 234455040 sectors, multi 1: LBA48 NCQ (depth 32)
[    2.490052] nexus kernel: ata2.00: Features: Dev-Sleep DIPM
[    2.496049] nexus kernel: ata2.00: configured for UDMA/133
[    2.506039] nexus kernel: ahci 0000:04:00.1: port does not support device sleep
[    2.506523] nexus kernel: scsi 1:0:0:0: Direct-Access     ATA      SanDisk SSD PLUS 00RL PQ: 0 ANSI: 5
[    2.593080] nexus kernel: usb 1-6: New USB device found, idVendor=093a, idProduct=2510, bcdDevice= 1.00
[    2.618045] nexus kernel: usb 1-6: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    2.618305] nexus kernel: usb 1-6: Product: USB Optical Mouse
[    2.618466] nexus kernel: usb 1-6: Manufacturer: PixArt
[    2.798050] nexus kernel: usb 1-10: new full-speed USB device number 4 using xhci_hcd
[    2.983081] nexus kernel: ata3: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    3.011050] nexus kernel: ata3.00: ATA-10: ST4000DM004-2U9104, 0001, max UDMA/133
[    3.021223] nexus kernel: ata3.00: 7814037168 sectors, multi 16: LBA48 NCQ (depth 32), AA
[    3.031050] nexus kernel: ata3.00: Features: HIPM DIPM
[    3.081051] nexus kernel: ata3.00: configured for UDMA/133
[    3.101022] nexus kernel: scsi 2:0:0:0: Direct-Access     ATA      ST4000DM004-2U91 0001 PQ: 0 ANSI: 5
[    3.128049] nexus kernel: usb 1-10: New USB device found, idVendor=048d, idProduct=5702, bcdDevice= 0.01
[    3.173045] nexus kernel: usb 1-10: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    3.173355] nexus kernel: usb 1-10: Product: ITE Device
[    3.173554] nexus kernel: usb 1-10: Manufacturer: ITE Tech. Inc.
[    3.583037] nexus kernel: ata4: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    3.583121] nexus kernel: ata4.00: ATA-10: WDC WD10EZEX-22MFCA0, 01.01A01, max UDMA/133
[    3.585051] nexus kernel: ata4.00: 1953525168 sectors, multi 16: LBA48 NCQ (depth 32), AA
[    3.585118] nexus kernel: ata4.00: Features: HIPM NCQ-prio
[    3.588051] nexus kernel: ata4.00: configured for UDMA/133
[    3.598034] nexus kernel: scsi 3:0:0:0: Direct-Access     ATA      WDC WD10EZEX-22M 1A01 PQ: 0 ANSI: 5
[    4.647049] nexus kernel: ata5: failed to resume link (SControl 0)
[    4.647120] nexus kernel: ata5: SATA link down (SStatus 0 SControl 0)
[    4.968083] nexus kernel: ata6: SATA link down (SStatus 0 SControl 300)
[    5.016022] nexus kernel: ata1.00: Enabling discard_zeroes_data
[    5.016067] nexus kernel: sd 0:0:0:0: [sda] 488397168 512-byte logical blocks: (250 GB/233 GiB)
[    5.017018] nexus kernel: sd 0:0:0:0: [sda] Write Protect is off
[    5.017659] nexus kernel: sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    5.017925] nexus kernel: sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    5.018182] nexus kernel: sd 0:0:0:0: [sda] Preferred minimum I/O size 512 bytes
[    5.018437] nexus kernel: sd 2:0:0:0: [sdb] 7814037168 512-byte logical blocks: (4.00 TB/3.64 TiB)
[    5.018695] nexus kernel: sd 2:0:0:0: [sdb] 4096-byte physical blocks
[    5.018949] nexus kernel: sd 2:0:0:0: [sdb] Write Protect is off
[    5.019215] nexus kernel: sd 2:0:0:0: [sdb] Mode Sense: 00 3a 00 00
[    5.019402] nexus kernel: sd 2:0:0:0: [sdb] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    5.019583] nexus kernel: sd 2:0:0:0: [sdb] Preferred minimum I/O size 4096 bytes
[    5.019760] nexus kernel: sd 3:0:0:0: [sdc] 1953525168 512-byte logical blocks: (1.00 TB/932 GiB)
[    5.019948] nexus kernel: sd 3:0:0:0: [sdc] 4096-byte physical blocks
[    5.020180] nexus kernel: sd 3:0:0:0: [sdc] Write Protect is off
[    5.020367] nexus kernel: sd 3:0:0:0: [sdc] Mode Sense: 00 3a 00 00
[    5.020551] nexus kernel: sd 3:0:0:0: [sdc] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    5.020731] nexus kernel: sd 3:0:0:0: [sdc] Preferred minimum I/O size 4096 bytes
[    5.020908] nexus kernel: sd 1:0:0:0: [sdd] 234455040 512-byte logical blocks: (120 GB/112 GiB)
[    5.021099] nexus kernel: sd 1:0:0:0: [sdd] Write Protect is off
[    5.021277] nexus kernel: sd 1:0:0:0: [sdd] Mode Sense: 00 3a 00 00
[    5.021451] nexus kernel: sd 1:0:0:0: [sdd] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    5.021627] nexus kernel: sd 1:0:0:0: [sdd] Preferred minimum I/O size 512 bytes
[    5.024009] nexus kernel: ata1.00: Enabling discard_zeroes_data
[    5.026007] nexus kernel: hid: raw HID events driver (C) Jiri Kosina
[    5.042012] nexus kernel:  sdd: sdd1 sdd2 sdd3
[    5.042033] nexus kernel: sd 1:0:0:0: [sdd] Attached SCSI disk
[    5.043012] nexus kernel:  sda: sda1 sda2 sda3
[    5.045010] nexus kernel: sd 0:0:0:0: [sda] supports TCG Opal
[    5.045251] nexus kernel: sd 0:0:0:0: [sda] Attached SCSI disk
[    5.081026] nexus kernel:  sdb: sdb1
[    5.081089] nexus kernel: sd 2:0:0:0: [sdb] Attached SCSI disk
[    5.094026] nexus kernel:  sdc: sdc1
[    5.094082] nexus kernel: sd 3:0:0:0: [sdc] Attached SCSI disk
[    5.145015] nexus kernel: usbcore: registered new interface driver usbhid
[    5.145050] nexus kernel: usbhid: USB HID core driver
[    5.148024] nexus kernel: input: Generic Philips SPA 20/93 as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-1/5-1:1.3/00>
[    5.199010] nexus kernel: hid-generic 0003:8087:1024.0001: input,hidraw0: USB HID v2.01 Device [Generic Philips SPA 20/93] on u>
[    5.199298] nexus kernel: input: USB Optical Mouse as /devices/pci0000:00/0000:00:02.1/0000:04:00.0/usb1/1-2/1-2:1.0/0003:1BCF:>
[    5.199313] nexus kernel: hid-generic 0003:1BCF:0005.0002: input,hidraw1: USB HID v1.10 Mouse [USB Optical Mouse] on usb-0000:0>
[    5.199551] nexus kernel: input: SONIX USB DEVICE as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:1.0/0003:0C45:8>
[    5.250041] nexus kernel: hid-generic 0003:0C45:8006.0003: input,hidraw2: USB HID v1.11 Keyboard [SONIX USB DEVICE] on usb-0000>
[    5.250362] nexus kernel: input: SONIX USB DEVICE Consumer Control as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5->
[    5.301012] nexus kernel: input: SONIX USB DEVICE System Control as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:>
[    5.301061] nexus kernel: input: SONIX USB DEVICE Keyboard as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:1.1/00>
[    5.301070] nexus kernel: input: SONIX USB DEVICE Mouse as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:1.1/0003:>
[    5.301082] nexus kernel: input: SONIX USB DEVICE as /devices/pci0000:00/0000:00:08.1/0000:07:00.4/usb5/5-2/5-2:1.1/0003:0C45:8>
[    5.301090] nexus kernel: hid-generic 0003:0C45:8006.0004: input,hiddev96,hidraw3: USB HID v1.11 Keyboard [SONIX USB DEVICE] on>
[    5.301380] nexus kernel: hid-generic 0003:0C45:8006.0005: hiddev97,hidraw4: USB HID v1.11 Device [SONIX USB DEVICE] on usb-000>
[    5.301647] nexus kernel: input: PixArt USB Optical Mouse as /devices/pci0000:00/0000:00:02.1/0000:04:00.0/usb1/1-6/1-6:1.0/000>
[    5.301663] nexus kernel: hid-generic 0003:093A:2510.0006: input,hidraw5: USB HID v1.11 Mouse [PixArt USB Optical Mouse] on usb>
[    5.301946] nexus kernel: hid-generic 0003:048D:5702.0007: hiddev98,hidraw6: USB HID v1.12 Device [ITE Tech. Inc. ITE Device] o>
[    5.639040] nexus kernel: clocksource: Watchdog remote CPU 9 read timed out
[    6.518008] nexus kernel: EXT4-fs (sda2): mounted filesystem fdcf9abe-f568-453a-ac2e-9201fddd61b9 r/w with ordered data mode. Q>
[    8.131657] nexus systemd-journald[138]: Received SIGTERM from PID 1 (systemd).
[    8.131680] nexus systemd[1]: systemd 262 running in system mode (+PAM +AUDIT -SELINUX +APPARMOR +IMA +IPE +SMACK +SECCOMP -GNU>
[    8.131692] nexus systemd[1]: Detected architecture x86-64.
[    8.131699] nexus systemd[1]: bpf-restrict-fs: LSM BPF program attached
[    8.131707] nexus systemd[1]: /etc/systemd/system/cups.socket:5: ListenStream= references a path below legacy directory /var/ru>
[    8.131715] nexus systemd[1]: initrd-switch-root.service: Deactivated successfully.
[    8.131722] nexus systemd[1]: Stopped initrd-switch-root.service.
[    8.131730] nexus systemd[1]: systemd-journald.service: Scheduled restart job, restart counter is at 1.
[    8.131737] nexus systemd[1]: Created slice User and Session Slice.
[    8.131745] nexus systemd[1]: Started Dispatch Password Requests to Console Directory Watch.
[    8.131751] nexus systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    8.131758] nexus systemd[1]: Expecting device /dev/disk/by-uuid/fb1d1561-8173-4196-869b-0994cd75b489...
[    8.131765] nexus systemd[1]: Reached target Local Encrypted Volumes.
[    8.131771] nexus systemd[1]: Reached target Login Prompts.
[    8.131778] nexus systemd[1]: Stopped target initrd-fs.target.
[    8.131787] nexus systemd[1]: Stopped target initrd-root-fs.target.
[    8.131794] nexus systemd[1]: Stopped target initrd-switch-root.target.
[    8.131800] nexus systemd[1]: Reached target Virtual Machines and Containers.
[    8.131807] nexus systemd[1]: Reached target Path Units.
[    8.131814] nexus systemd[1]: Reached target Remote File Systems.
[    8.131826] nexus systemd[1]: Reached target Slice Units.
[    8.131833] nexus systemd[1]: Listening on Query the User Interactively for a Password.
[    8.131839] nexus systemd[1]: Listening on Process Core Dump Socket.
[    8.131846] nexus systemd[1]: Listening on Credential Encryption/Decryption.
[    8.131854] nexus systemd[1]: Listening on Factory Reset Management.
[    8.131861] nexus systemd[1]: Listening on Hostname Service Socket.
[    8.131868] nexus systemd[1]: Starting Journal Log Access Socket...
[    8.131875] nexus systemd[1]: Listening on Journal Audit Socket.
[    8.131882] nexus systemd[1]: Listening on Console Output Muting Service Socket.
[    8.131888] nexus systemd[1]: Listening on Userspace Out-Of-Memory (OOM) Killer Socket.
[    8.131895] nexus systemd[1]: Make TPM PCR Policy skipped, unmet condition check ConditionSecurity=measured-uki
[    8.131902] nexus systemd[1]: Listening on Disk Repartitioning Service Socket.
[    8.131908] nexus systemd[1]: Listening on Resolve Monitor Varlink Socket.
[    8.131916] nexus systemd[1]: Listening on Resolve Service Varlink Socket.
[    8.131923] nexus systemd[1]: Listening on udev Varlink Socket.
[    8.131929] nexus systemd[1]: Mounting Huge Pages File System...
[    8.131936] nexus systemd[1]: Mounting POSIX Message Queue File System...
[    8.131942] nexus systemd[1]: Mounting Kernel Debug File System...
[    8.131949] nexus systemd[1]: Mounting Kernel Trace File System...
[    8.131956] nexus systemd[1]: Starting Create List of Static Device Nodes...
[    8.131965] nexus systemd[1]: Starting Load Kernel Module configfs...
[    8.131972] nexus systemd[1]: Load Kernel Module drm skipped, unmet condition check ConditionKernelModuleLoaded=!drm
[    8.131979] nexus systemd[1]: Load Kernel Module efi_pstore skipped, unmet condition check ConditionKernelModuleLoaded=!efi_pst>
[    8.131988] nexus systemd[1]: Starting Load Kernel Module fuse...
[    8.131995] nexus systemd[1]: Clear Stale Hibernate Storage Info skipped, unmet condition check ConditionPathExists=/sys/firmwa>
[    8.132007] nexus systemd[1]: Starting Journal Service...
[    8.132014] nexus systemd[1]: Starting Load Kernel Modules...
[    8.132021] nexus systemd[1]: Starting Remount Root and Kernel File Systems...
[    8.132028] nexus systemd[1]: Starting Coldplug All udev Devices...
[    8.132034] nexus systemd[1]: Listening on Journal Log Access Socket.
[    8.132041] nexus systemd[1]: Mounted Huge Pages File System.
[    8.132047] nexus systemd[1]: Mounted POSIX Message Queue File System.
[    8.132056] nexus systemd[1]: Mounted Kernel Debug File System.
[    8.132062] nexus systemd[1]: Mounted Kernel Trace File System.
[    8.132069] nexus systemd[1]: Finished Create List of Static Device Nodes.
[    8.132076] nexus systemd[1]: modprobe@configfs.service: Deactivated successfully.
[    8.132083] nexus systemd[1]: Finished Load Kernel Module configfs.
[    8.132090] nexus systemd[1]: Mounting Kernel Configuration File System...
[    8.132096] nexus systemd[1]: Starting Create Static Device Nodes in /dev gracefully...
[    8.132122] nexus systemd-journald[448]: Collecting audit messages is enabled.
[    8.132142] nexus kernel: fuse: init (API version 7.46)
[    8.132150] nexus systemd[1]: modprobe@fuse.service: Deactivated successfully.
[    8.132156] nexus systemd[1]: Finished Load Kernel Module fuse.
[    8.132163] nexus kernel: loop: module loaded
[    8.132172] nexus systemd[1]: Mounted Kernel Configuration File System.
[    8.132179] nexus systemd[1]: Finished Load Kernel Modules.
[    8.134015] nexus systemd[1]: Mounting FUSE Control File System...
[    8.135010] nexus kernel: EXT4-fs (sda2): re-mounted fdcf9abe-f568-453a-ac2e-9201fddd61b9.
[    8.136042] nexus systemd[1]: Starting Firewall...
[    8.138015] nexus systemd[1]: Starting Apply Kernel Variables...
[    8.139019] nexus systemd[1]: Started Journal Service.
[    8.228349] nexus systemd-journald[448]: Received client request to flush runtime journal.
[    8.228532] nexus systemd-journald[448]: File /var/log/journal/28636481ca224efea5b2248c223ca4db/system.journal corrupted or unc>
[    8.404035] nexus kernel: input: Power Button as /devices/platform/PNP0C0C:00/input/input9
[    8.406012] nexus kernel: ACPI: button: Power Button [PWRB]
[    8.406071] nexus kernel: input: Power Button as /devices/platform/LNXPWRBN:00/input/input10
[    8.406090] nexus kernel: ACPI: button: Power Button [PWRF]
[    8.439076] nexus kernel: rtc_cmos PNP0B00:00: RTC can wake from S4
[    8.442689] nexus kernel: ACPI: video: Video Device [VGA] (multi-head: yes  rom: no  post: no)
[    8.444009] nexus kernel: rtc_cmos PNP0B00:00: registered as rtc0
[    8.445762] nexus kernel: rtc_cmos PNP0B00:00: setting system clock to 2026-11-21T13:48:40 UTC (1795268920)
[    8.446040] nexus kernel: rtc_cmos PNP0B00:00: alarms up to one month, y3k, 114 bytes nvram
[    8.446327] nexus kernel: mousedev: PS/2 mouse device common for all mice
[    8.446358] nexus kernel: input: Video Bus as /devices/pci0000:00/0000:00:08.1/acpi.video_bus.0/input/input11
[    8.465028] nexus kernel: mc: Linux media interface: v0.10
[    8.471013] nexus kernel: ccp 0000:07:00.2: enabling device (0000 -> 0002)
[    8.476090] nexus kernel: ACPI Warning: SystemIO range 0x0000000000000B00-0x0000000000000B08 conflicts with OpRegion 0x00000000>
[    8.476132] nexus kernel: ACPI: OSL: Resource conflict; ACPI support missing from driver?
[    8.477010] nexus kernel: ccp 0000:07:00.2: ccp: unable to access the device: you might be running a broken BIOS.
[    8.480237] nexus kernel: ccp 0000:07:00.2: tee enabled
[    8.482315] nexus kernel: ccp 0000:07:00.2: psp enabled
[    8.484755] nexus kernel: sp5100_tco: SP5100/SB800 TCO WatchDog Timer Driver
[    8.486011] nexus kernel: sp5100-tco sp5100-tco: Using 0xfeb00000 for watchdog MMIO address
[    8.487986] nexus kernel: sp5100-tco sp5100-tco: initialized. heartbeat=60 sec (nowayout=0)
[    8.509018] nexus kernel: RAPL PMU: API unit is 2^-32 Joules, 2 fixed counters, 163840 ms ovfl timer
[    8.509093] nexus kernel: RAPL PMU: hw unit of domain package 2^-16 Joules
[    8.509116] nexus kernel: RAPL PMU: hw unit of domain core 2^-16 Joules
[    8.526012] nexus kernel: snd_hda_intel 0000:03:00.1: enabling device (0000 -> 0002)
[    8.526349] nexus kernel: snd_hda_intel 0000:03:00.1: Handle vga_switcheroo audio client
[    8.526621] nexus kernel: snd_hda_intel 0000:03:00.1: Force to non-snoop mode
[    8.526879] nexus kernel: snd_hda_intel 0000:07:00.1: enabling device (0000 -> 0002)
[    8.527359] nexus kernel: snd_hda_intel 0000:07:00.6: enabling device (0000 -> 0002)
[    8.531243] nexus kernel: intel_rapl_common: Found RAPL domain package
[    8.531285] nexus kernel: intel_rapl_common: Found RAPL domain core
[    8.537014] nexus kernel: r8169 0000:06:00.0 eth0: RTL8168h/8111h, 10:ff:e0:a3:dc:31, XID 541, IRQ 69
[    8.537369] nexus kernel: r8169 0000:06:00.0 eth0: jumbo features [frames: 9194 bytes, tx checksumming: ko]
[    8.537641] nexus kernel: amd_atl: AMD Address Translation Library initialized
[    8.545016] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/in>
[    8.545081] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=7 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/in>
[    8.545101] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=8 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/in>
[    8.545130] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=9 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/in>
[    8.545151] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000:>
[    8.545179] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=10 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/i>
[    8.545207] nexus kernel: input: HD-Audio Generic HDMI/DP,pcm=11 as /devices/pci0000:00/0000:00:08.1/0000:07:00.1/sound/card2/i>
[    8.545233] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=7 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000:>
[    8.546009] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=8 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000:>
[    8.546042] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=9 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000:>
[    8.546070] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=10 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000>
[    8.546088] nexus kernel: input: HDA ATI HDMI HDMI/DP,pcm=11 as /devices/pci0000:00/0000:00:01.1/0000:01:00.0/0000:02:00.0/0000>
[    8.566013] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0: autoconfig for ALC897: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:line
[    8.566282] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[    8.566503] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:    hp_outs=1 (0x1b/0x0/0x0/0x0/0x0)
[    8.566711] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:    mono: mono_out=0x0
[    8.566916] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:    inputs:
[    8.567124] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:      Rear Mic=0x18
[    8.567319] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:      Front Mic=0x19
[    8.567479] nexus kernel: snd_hda_codec_alc662 hdaudioC3D0:      Line=0x1a
[    8.569009] nexus kernel: usb 5-1: 2:0: bogus dB values (-12800/-12700), disabling dB reporting
[    8.584014] nexus kernel: Bluetooth: Core ver 2.22
[    8.584069] nexus kernel: NET: Registered PF_BLUETOOTH protocol family
[    8.584094] nexus kernel: Bluetooth: HCI device and connection manager initialized
[    8.584118] nexus kernel: Bluetooth: HCI socket layer initialized
[    8.584141] nexus kernel: Bluetooth: L2CAP socket layer initialized
[    8.584167] nexus kernel: Bluetooth: SCO socket layer initialized
[    8.587014] nexus kernel: Adding 9227464k swap on /dev/sda3.  Priority:-1 extents:1 across:9227464k SS
[    8.590012] nexus kernel: input: HD-Audio Generic Rear Mic as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/input24
[    8.590046] nexus kernel: input: HD-Audio Generic Front Mic as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/input25
[    8.590066] nexus kernel: input: HD-Audio Generic Line as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/input26
[    8.590077] nexus kernel: input: HD-Audio Generic Line Out as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/input27
[    8.590087] nexus kernel: input: HD-Audio Generic Front Headphone as /devices/pci0000:00/0000:00:08.1/0000:07:00.6/sound/card3/>
[    8.594030] nexus kernel: usb 5-1: 5:0: bogus dB values (-12800/-12700), disabling dB reporting
[    8.594372] nexus kernel: usbcore: registered new interface driver snd-usb-audio
[    8.607012] nexus kernel: r8169 0000:06:00.0 enp6s0: renamed from eth0
[    8.613030] nexus kernel: Bluetooth: hci0: HCI Read Default Erroneous Data Reporting command is advertised, but not supported.
[    8.613091] nexus kernel: Bluetooth: hci0: HCI Read Transmit Power Level command is advertised, but not supported.
[    8.613121] nexus kernel: Bluetooth: hci0: HCI LE Set Random Private Address Timeout command is advertised, but not supported.
[    8.613145] nexus kernel: Bluetooth: hci0: HCI LE Extended Create Connection command is advertised, but not supported.
[    8.613177] nexus kernel: Bluetooth: hci0: HCI WRITE AUTH PAYLOAD TIMEOUT command leads to unexpected SMP errors when pairing a>
[    8.614013] nexus kernel: usbcore: registered new interface driver btusb
[   10.427244] nexus kernel: ACPI: \_TZ_.TZ10: _PSL evaluation failure
[   10.427305] nexus kernel: acpi LNXTHERM:00: registered as thermal_zone0
[   10.427612] nexus kernel: ACPI: thermal: Thermal Zone [TZ10] (17 C)
[   10.427635] nexus kernel: ACPI: \_TZ_.UAD0: _PSL evaluation failure
[   10.427655] nexus kernel: acpi LNXTHERM:01: registered as thermal_zone1
[   10.427887] nexus kernel: ACPI: thermal: Thermal Zone [UAD0] (17 C)
[   11.485013] nexus kernel: EDAC MC: Ver: 3.0.0
[   11.487017] nexus kernel: MCE: In-kernel MCE decoding enabled.
[   11.494015] nexus kernel: amdgpu: unknown parameter 'gfxoff' ignored
[   11.509011] nexus kernel: amdgpu: Virtual CRAT table created for CPU
[   11.509059] nexus kernel: amdgpu: Topology: Add CPU node
[   11.511667] nexus kernel: amdgpu 0000:03:00.0: enabling device (0006 -> 0007)
[   11.512021] nexus kernel: amdgpu 0000:03:00.0: initializing kernel modesetting (NAVI10 0x1002:0x731F 0x1458:0x231D 0xCA).
[   11.512315] nexus kernel: amdgpu 0000:03:00.0: register mmio base: 0xFCE00000
[   11.512579] nexus kernel: amdgpu 0000:03:00.0: register mmio size: 524288
[   11.512799] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 0 <common_v1_0_0> (nv_common)
[   11.513056] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 1 <gmc_v10_0_0> (gmc_v10_0)
[   11.513293] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 2 <ih_v5_0_0> (navi10_ih)
[   11.513577] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 3 <psp_v11_0_0> (psp)
[   11.513906] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 4 <smu_v11_0_0> (smu)
[   11.514133] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 5 <dce_v1_0_0> (dm)
[   11.514364] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 6 <gfx_v10_0_0> (gfx_v10_0)
[   11.514566] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 7 <sdma_v5_0_0> (sdma_v5_0)
[   11.514758] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 8 <vcn_v2_0_0> (vcn_v2_0)
[   11.514952] nexus kernel: amdgpu 0000:03:00.0: detected ip block number 9 <jpeg_v2_0_0> (jpeg_v2_0)
[   11.515160] nexus kernel: amdgpu 0000:03:00.0: Fetched VBIOS from VFCT
[   11.515346] nexus kernel: amdgpu 0000:03:00.0: [drm] ATOM BIOS: xxx-xxx-xxx, build: 510615  , ver: 017.001.000.068.000000, 2020>
[   11.552018] nexus kernel: Console: switching to colour dummy device 80x25
[   11.552053] nexus kernel: amdgpu 0000:03:00.0: vgaarb: deactivate vga console
[   11.552340] nexus kernel: amdgpu 0000:03:00.0: Trusted Memory Zone (TMZ) feature disabled as experimental (default)
[   11.552568] nexus kernel: amdgpu 0000:03:00.0: vm size is 262144 GB, 4 levels, block size is 9-bit, fragment size is 9-bit
[   11.552763] nexus kernel: amdgpu 0000:03:00.0: VRAM: 6128M 0x0000008000000000 - 0x000000817EFFFFFF (6128M used)
[   11.552964] nexus kernel: amdgpu 0000:03:00.0: GART: 512M 0x0000000000000000 - 0x000000001FFFFFFF
[   11.553206] nexus kernel: amdgpu 0000:03:00.0: [drm] Detected VRAM RAM=6128M, BAR=256M
[   11.553404] nexus kernel: amdgpu 0000:03:00.0: [drm] RAM width 192bits GDDR6
[   11.553589] nexus kernel: amdgpu 0000:03:00.0:  6128M of VRAM memory ready
[   11.553776] nexus kernel: amdgpu 0000:03:00.0:  15978M of GTT memory ready.
[   11.553958] nexus kernel: amdgpu 0000:03:00.0: [drm] GART: num cpu pages 131072, num gpu pages 131072
[   11.554148] nexus kernel: amdgpu 0000:03:00.0: [drm] PCIE GART of 512M enabled (table at 0x0000008000800000).
[   11.554331] nexus kernel: amdgpu 0000:03:00.0: [VCN instance 0] Found VCN firmware Version ENC: 1.24 DEC: 8 VEP: 0 Revision: 18
[   11.606008] nexus kernel: amdgpu 0000:03:00.0: reserve 0x900000 from 0x817d000000 for PSP TMR
[   11.650015] nexus kernel: amdgpu 0000:03:00.0: RAS: optional ras ta ucode is not available
[   11.656011] nexus kernel: amdgpu 0000:03:00.0: RAP: optional rap ta ucode is not available
[   11.656375] nexus kernel: amdgpu 0000:03:00.0: SECUREDISPLAY: optional securedisplay ta ucode is not available
[   11.656672] nexus kernel: amdgpu 0000:03:00.0: smu driver if version = 0x00000037, smu fw if version = 0x00000037, smu fw progr>
[   11.656965] nexus kernel: amdgpu 0000:03:00.0: use vbios provided pptable
[   11.657205] nexus kernel: amdgpu 0000:03:00.0: smc_dpm_info table revision(format.content): 4.5
[   11.691027] nexus kernel: amdgpu 0000:03:00.0: SMU is initialized successfully!
[   11.691355] nexus kernel: amdgpu 0000:03:00.0: [drm] Display Core v3.2.392 initialized on DCN 2.0
[   11.691639] nexus kernel: amdgpu 0000:03:00.0: [drm] DP-HDMI FRL PCON supported
[   11.722025] nexus kernel: snd_hda_intel 0000:03:00.1: bound 0000:03:00.0 (ops amdgpu_dm_audio_component_bind_ops [amdgpu])
[   11.871073] nexus kernel: amdgpu 0000:03:00.0: kiq ring mec 2 pipe 1 q 0
[   12.382254] nexus kernel: amdgpu 0000:03:00.0: Fence fallback timer expired on ring sdma0
[   12.382729] nexus kernel: kfd kfd: Allocated 3969056 bytes on gart
[   12.382915] nexus kernel: kfd kfd: Total number of KFD nodes to be created: 1
[   12.652948] nexus systemd-journald[448]: File /var/log/journal/28636481ca224efea5b2248c223ca4db/user-1000.journal corrupted or >
[   12.673014] nexus kernel: Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   12.673050] nexus kernel: Bluetooth: BNEP socket layer initialized
[   12.675011] nexus kernel: Bluetooth: MGMT ver 1.23
[   12.678022] nexus kernel: NET: Registered PF_ALG protocol family
[   12.789013] nexus kernel: Generic FE-GE Realtek PHY r8169-0-600:00: attached PHY driver (mii_bus:phy_addr=r8169-0-600:00, irq=M>
[   12.887014] nexus kernel: amdgpu 0000:03:00.0: Fence fallback timer expired on ring sdma0
[   12.887360] nexus kernel: amdgpu: Virtual CRAT table created for GPU
[   12.887383] nexus kernel: amdgpu: Topology: Add GPU node [0x1002:0x731f]
[   12.887399] nexus kernel: kfd kfd: added device 1002:731f
[   12.887567] nexus kernel: amdgpu 0000:03:00.0: SE 2, SH per SE 2, CU per SH 10, active_cu_number 36
[   12.887772] nexus kernel: amdgpu 0000:03:00.0: ring gfx_0.0.0 uses VM inv eng 0 on hub 0
[   12.887971] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.0.0 uses VM inv eng 1 on hub 0
[   12.888179] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.1.0 uses VM inv eng 4 on hub 0
[   12.888361] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.2.0 uses VM inv eng 5 on hub 0
[   12.888548] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.3.0 uses VM inv eng 6 on hub 0
[   12.888733] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.0.1 uses VM inv eng 7 on hub 0
[   12.888915] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.1.1 uses VM inv eng 8 on hub 0
[   12.889104] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.2.1 uses VM inv eng 9 on hub 0
[   12.889283] nexus kernel: amdgpu 0000:03:00.0: ring comp_1.3.1 uses VM inv eng 10 on hub 0
[   12.889469] nexus kernel: amdgpu 0000:03:00.0: ring kiq_0.2.1.0 uses VM inv eng 11 on hub 0
[   12.889653] nexus kernel: amdgpu 0000:03:00.0: ring sdma0 uses VM inv eng 12 on hub 0
[   12.889834] nexus kernel: amdgpu 0000:03:00.0: ring sdma1 uses VM inv eng 13 on hub 0
[   12.890025] nexus kernel: amdgpu 0000:03:00.0: ring vcn_dec uses VM inv eng 0 on hub 8
[   12.890210] nexus kernel: amdgpu 0000:03:00.0: ring vcn_enc0 uses VM inv eng 1 on hub 8
[   12.890386] nexus kernel: amdgpu 0000:03:00.0: ring vcn_enc1 uses VM inv eng 4 on hub 8
[   12.890561] nexus kernel: amdgpu 0000:03:00.0: ring jpeg_dec uses VM inv eng 5 on hub 8
[   12.916084] nexus kernel: amdgpu: HMM registered 6128MB device memory
[   12.917010] nexus kernel: amdgpu 0000:03:00.0: Using BACO for runtime pm
[   12.918010] nexus kernel: amdgpu 0000:03:00.0: [drm] Registered 6 planes with drm panic
[   12.933014] nexus kernel: [drm] Initialized amdgpu 3.64.0 for 0000:03:00.0 on minor 1
[   12.941010] nexus kernel: fbcon: amdgpudrmfb (fb0) is primary device
[   12.941043] nexus kernel: [drm] pre_validate_dsc:1797 MST_DSC dsc precompute is not needed
[   12.947014] nexus kernel: r8169 0000:06:00.0 enp6s0: Link is Down
[   13.051023] nexus kernel: Console: switching to colour frame buffer device 240x67
[   13.069022] nexus kernel: amdgpu 0000:03:00.0: [drm] fb0: amdgpudrmfb frame buffer device
[   16.082037] nexus kernel: r8169 0000:06:00.0 enp6s0: Link is Up - 1Gbps/Full - flow control rx/tx
[   16.092011] nexus kernel: NET: Registered PF_PACKET protocol family
[   18.058105] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   18.979565] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   20.514034] nexus kernel: .Hyprland-wrapp[1119]: segfault at 0 ip 000077a89fd627b1 sp 00007ffd95156920 error 4 in libaquamarine>
[   20.514088] nexus kernel: Code: ff 48 8b 45 c0 48 85 c0 74 0f 83 28 01 74 5a 66 2e 0f 1f 84 00 00 00 00 00 48 83 c3 10 49 39 dd>
[   20.926011] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   23.361032] nexus kernel: Bluetooth: RFCOMM TTY layer initialized
[   23.361093] nexus kernel: Bluetooth: RFCOMM socket layer initialized
[   23.361119] nexus kernel: Bluetooth: RFCOMM ver 1.11
[   24.388044] nexus kernel: EXT4-fs (sdb1): recovery complete
[   24.409032] nexus kernel: EXT4-fs (sdb1): mounted filesystem 73384e72-eade-4dfa-8360-783faf87a509 r/w with ordered data mode. Q>
[   33.134054] nexus kernel: ntfs: volume version 3.1, dev sdc1, cluster size 4096
[   48.367377] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[   78.481910] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  109.098322] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  138.387120] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  168.492397] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  199.112019] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  222.977021] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  228.192155] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  259.015018] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  270.072714] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  288.608020] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  295.161022] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  318.919896] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  348.741576] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  375.853081] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  378.416806] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  407.497011] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  408.109246] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
[  438.831281] nexus kernel: IPv6: enp6s0: IPv6 duplicate address 2804:14d:5482:945e::1003 used by 2c:71:ff:c2:a4:cc detected!
