 nexus  dareggon  nixos-config  main [⇡ 󱈎 ]                                                                               󰗼 1
失⫸ systemd-analyze
Startup finished in 7.509s (firmware) + 5.439s (loader) + 558ms (kernel) + 6.011s (initrd) + 4.997s (userspace) = 24.515s
graphical.target reached after 4.996s in userspace.

 nexus  dareggon  nixos-config  main [⇡ 󱈎 ]
陰⫸ systemd-analyze critical-chain
The time when unit became active or started is printed after the "@" character.
The time the unit took to start is printed after the "+" character.

graphical.target @4.996s
└─greetd.service @4.996s
  └─systemd-user-sessions.service @4.975s +19ms
    └─home-manager-dareggon.service @4.445s +527ms
      └─basic.target @4.435s
        └─dbus-broker.service @4.375s +59ms
          └─dbus.socket @4.369s +53us
            └─sysinit.target @4.365s
              └─systemd-update-utmp.service @4.355s +9ms
                └─systemd-tmpfiles-setup.service @4.320s +32ms
                  └─systemd-journal-flush.service @897ms +174ms
                    └─systemd-remount-fs.service @865ms +22ms
                      └─systemd-fsck-root.service
                        └─systemd-journald.socket
                          └─system.slice
                            └─-.slice
