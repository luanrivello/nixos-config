# Checks to run after pull, switch and reboot

```
{
  echo "## Boot time";        systemd-analyze
  echo "## Critical chain";   systemd-analyze critical-chain
  echo "## Slowest units";    systemd-analyze blame | grep -v '\.device' | head -20
  echo "## SATA + thermal";   journalctl -b -k -o short-monotonic | grep -E 'ata[1-6]|thermal|_PSL'
  echo "## GPU mask";         cat /sys/module/amdgpu/parameters/ppfeaturemask
  echo "## Kernel params";    cat /proc/cmdline
  echo "## DNS";              resolvectl status
  echo "## DNS lookup";       resolvectl query nixos.org
  echo "## IPv6 clash";       journalctl -b | grep -c 'duplicate address'
  echo "## Failed units";     systemctl --failed; systemctl --user --failed
  echo "## Old profile paths"; grep -rn 'nix-profile' ~/.config 2>/dev/null
  echo "## Errors this boot"; journalctl -b -p err -o short-monotonic --no-pager | grep -v 'Ignoring duplicate'
} >> TODO.md 2>&1
```

 nexus  dareggon  /mnt/Stronghold/shows                                                                                     2s
陰⫸ rebuild
󱂵 home   system  󰕙 boot.svg   flake.lock   flake.nix  󰂺 README.md   TODO.md
doas (dareggon@nexus) password:
building the system configuration...
evaluation warning: The option `services.resolved.dnsovertls' defined in `/nix/store/azwsz60c8dnw1h87dir8lhvqs01j8lib-source/system/modules/networking.nix' has been renamed to `services.resolved.settings.Resolve.DNSOverTLS'.
evaluation warning: The option `services.resolved.domains' defined in `/nix/store/azwsz60c8dnw1h87dir8lhvqs01j8lib-source/system/modules/networking.nix' has been renamed to `services.resolved.settings.Resolve.Domains'.
Starting [systemd-run] /nix/store/1d3bnwqvfqvb57vgcr4m7hdxdm97mjav-nixos-system-nexus-26.11.20261020.02c087f/bin/switch-to-configuration switch...
Started [systemd-run] /nix/store/1d3bnwqvfqvb57vgcr4m7hdxdm97mjav-nixos-system-nexus-26.11.20261020.02c087f/bin/switch-to-configuration switch.
Checking switch inhibitors... done
Skipping "/boot/EFI/systemd/systemd-bootx64.efi", same boot loader version in place already.
Skipping "/boot/EFI/BOOT/BOOTX64.EFI", same boot loader version in place already.
switching to system configuration /nix/store/1d3bnwqvfqvb57vgcr4m7hdxdm97mjav-nixos-system-nexus-26.11.20261020.02c087f
activating the configuration...
setting up /etc...
reloading user units for dareggon...
restarting the following user units: nixos-activation.service
restarting sysinit-reactivation.target
the following new units were started: sysinit-reactivation.target, systemd-tmpfiles-resetup.service
finished switching to system configuration /nix/store/1d3bnwqvfqvb57vgcr4m7hdxdm97mjav-nixos-system-nexus-26.11.20261020.02c087f
nixos-rebuild-switch-to-configuration.service: Deactivated successfully.
nixos-rebuild-switch-to-configuration.service: Consumed 326ms CPU time over 1.478s wall clock time, 24.3M memory peak, 2.8M read from disk, 56.5K written to disk.
Done. The new configuration is /nix/store/1d3bnwqvfqvb57vgcr4m7hdxdm97mjav-nixos-system-nexus-26.11.20261020.02c


## Boot time
Startup finished in 7.546s (firmware) + 498ms (loader) + 551ms (kernel) + 3.825s (initrd) + 4.968s (userspace) = 17.390s 
graphical.target reached after 4.968s in userspace.
## Critical chain
The time when unit became active or started is printed after the "@" character.
The time the unit took to start is printed after the "+" character.

graphical.target @4.968s
└─greetd.service @4.968s
  └─systemd-user-sessions.service @4.947s +19ms
    └─home-manager-dareggon.service @4.420s +525ms
      └─basic.target @4.407s
        └─dbus-broker.service @4.348s +59ms
          └─dbus.socket @4.340s +53us
            └─sysinit.target @4.336s
              └─systemd-update-utmp.service @4.321s +14ms
                └─systemd-tmpfiles-setup.service @4.288s +29ms
                  └─local-fs.target @4.281s
                    └─boot.mount @1.806s +2.474s
                      └─systemd-fsck@dev-disk-by\x2duuid-C44A\x2d31FD.service @1.337s +42ms
                        └─dev-disk-by\x2duuid-C44A\x2d31FD.device
## Slowest units
2.474s boot.mount
 876ms initrd-switch-root.service
 525ms home-manager-dareggon.service
 366ms NetworkManager.service
 339ms mnt-Stronghold.mount
 241ms systemd-udev-trigger.service
 196ms firewall.service
 169ms user@1000.service
 149ms mnt-Storage.mount
 118ms systemd-journal-flush.service
 101ms suid-sgid-wrappers.service
  94ms cups.service
  80ms systemd-udevd.service
  79ms polkit.service
  71ms wpa_supplicant.service
  64ms systemd-journald.service
  59ms dbus-broker.service
  53ms rtkit-daemon.service
  52ms bluetooth.service
  51ms systemd-logind.service
## SATA + thermal
rg: error parsing flag -E: grep config error: unknown encoding: ata[1-6]|thermal|_PSL
## GPU mask
0xfff73fff
## Kernel params
initrd=\EFI\nixos\4wqk7yd2mb81fv799x6m56k0wyjyhlpi-initrd-linux-7.3-initrd.efi init=/nix/store/1d3bnwqvfqvb57vgcr4m7hdxdm97mjav-nixos-system-nexus-26.11.20261020.02c087f/init loglevel=3 8250.nr_uarts=0 amd_pstate=active amdgpu.ppfeaturemask=0xfff73fff ahci.mask_port_map=0000:04:00.1=0x0f thermal.off=1 root=fstab loglevel=4 lsm=landlock,yama,bpf
## DNS
Global
           Protocols: +LLMNR +mDNS +DNSOverTLS DNSSEC=no/unsupported
    resolv.conf mode: stub
  Current DNS Server: 9.9.9.9#dns.quad9.net
         DNS Servers: 76.76.2.2#p2.freedns.controld.com
                      76.76.10.2#p2.freedns.controld.com
                      2606:1a40::2#p2.freedns.controld.com
                      2606:1a40:1::2#p2.freedns.controld.com
                      9.9.9.9#dns.quad9.net 149.112.112.112#dns.quad9.net
                      2620:fe::fe#dns.quad9.net 2620:fe::9#dns.quad9.net
Fallback DNS Servers: 1.1.1.1#one.one.one.one 8.8.8.8#dns.google
                      9.9.9.9#dns.quad9.net 1.0.0.1#one.one.one.one
                      8.8.4.4#dns.google 149.112.112.112#dns.quad9.net
                      2606:4700:4700::1111#one.one.one.one
                      2001:4860:4860::8888#dns.google 2620:fe::fe#dns.quad9.net
                      2606:4700:4700::1001#one.one.one.one
                      2001:4860:4860::8844#dns.google 2620:fe::9#dns.quad9.net
          DNS Domain: ~.

Link 2 (enp6s0)
    Current Scopes: DNS LLMNR/IPv4 LLMNR/IPv6 mDNS/IPv4 mDNS/IPv6
         Protocols: +DefaultRoute +LLMNR +mDNS +DNSOverTLS DNSSEC=no/unsupported
Current DNS Server: 181.213.132.2
       DNS Servers: 181.213.132.2 181.213.132.3 2804:14d:1:0:181:213:132:2
                    2804:14d:1:0:181:213:132:3
     Default Route: yes
## DNS lookup
nixos.org: 75.2.60.5                                        -- link: enp6s0
           99.83.231.61                                     -- link: enp6s0

-- Information acquired via protocol DNS in 179.9ms.
-- Data is authenticated: no; Data was acquired via local or encrypted transport: yes
-- Data from: network
## IPv6 clash
547
## Failed units
  UNIT LOAD ACTIVE SUB DESCRIPTION

0 loaded units listed.
  UNIT               LOAD   ACTIVE SUB    DESCRIPTION
● protonplus.service loaded failed failed ProtonPlus

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

1 loaded units listed.
## Old profile paths
/home/dareggon/.config/systemd/user/protonplus.service:ExecStart=/home/dareggon/.n/bin/protonplus update all
## Errors this boot
[   15.110710] nexus NetworkManager[735]: <error> [1795272668.0384] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60508sec pref 46108sec lifetime 8-7[46109,60509] dev 2 src dhcp
[   26.150976] nexus systemd-coredump[1287]: Process 1061 (.Hyprland-wrapp) of user 993 dumped core.
                                             
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
                                             Stack trace of thread 1061:
                                             #0  0x00007d45abf627b1 _ZN10Aquamarine11CDRMBackend22flushAsyncCommitEventsEv (libaquamarine.so.14 + 0xe07b1)
                                             #1  0x00007d45abf62a4b _ZN10Aquamarine11CDRMBackend17cancelAsyncOutputEPNS_10CDRMOutputEb (libaquamarine.so.14 + 0xe0a4b)
                                             #2  0x00007d45abf63bf7 _ZN10Aquamarine13SDRMConnector10disconnectEv (libaquamarine.so.14 + 0xe1bf7)
                                             #3  0x00007d45abf64837 _ZN10Aquamarine11CDRMBackendD2Ev (libaquamarine.so.14 + 0xe2837)
                                             #4  0x00007d45abf878f9 _ZN9Hyprutils6Memory14CSharedPointerIN10Aquamarine11CDRMBackendEE7_deleteEPv (libaquamarine.so.14 + 0x1058f9)
                                             #5  0x00007d45abf1aa9a _ZN10Aquamarine8CBackendD2Ev (libaquamarine.so.14 + 0x98a9a)
                                             #6  0x00007d45abf21436 _ZN9Hyprutils6Memory14CSharedPointerIN10Aquamarine8CBackendEE7_deleteEPv (libaquamarine.so.14 + 0x9f436)
                                             #7  0x00005a40d59a0952 _ZN9Hyprutils6Memory14CSharedPointerIN10Aquamarine8CBackendEED2Ev (.Hyprland-wrapped + 0x41b952)
                                             #8  0x00007d45a9244ee9 __cxa_finalize (libc.so.6 + 0x44ee9)
                                             #9  0x00007d45abef9d87 __do_global_dtors_aux (libaquamarine.so.14 + 0x77d87)
                                             #10 0x00007d45ac899022 _dl_call_fini (ld-linux-x86-64.so.2 + 0x2022)
                                             #11 0x00007d45ac89d2ee _dl_fini (ld-linux-x86-64.so.2 + 0x62ee)
                                             #12 0x00007d45a92454af __run_exit_handlers (libc.so.6 + 0x454af)
                                             #13 0x00007d45a924558e exit (libc.so.6 + 0x4558e)
                                             #14 0x00007d45a922b398 __libc_start_call_main (libc.so.6 + 0x2b398)
                                             #15 0x00007d45a922b4a8 __libc_start_main@@GLIBC_2.34 (libc.so.6 + 0x2b4a8)
                                             #16 0x00005a40d596e9e5 _start (.Hyprland-wrapped + 0x3e99e5)
                                             
                                             Stack trace of thread 1120:
                                             #0  0x00007d45a93295ed syscall (libc.so.6 + 0x1295ed)
                                             #1  0x00007d45ab331a57 g_cond_wait (libglib-2.0.so.0 + 0x9ea57)
                                             #2  0x00007d45ab2bd45c g_async_queue_pop_intern_unlocked (libglib-2.0.so.0 + 0x2a45c)
                                             #3  0x00007d45ab2bd981 g_async_queue_pop (libglib-2.0.so.0 + 0x2a981)
                                             #4  0x00007d45a91f1b68 fc_thread_func (libpangoft2-1.0.so.0 + 0xeb68)
                                             #5  0x00007d45ab33220e g_thread_proxy (libglib-2.0.so.0 + 0x9f20e)
                                             #6  0x00007d45a929f751 start_thread (libc.so.6 + 0x9f751)
                                             #7  0x00007d45a932ba4c __clone3 (libc.so.6 + 0x12ba4c)
                                             ELF object binary architecture: AMD x86-64
[   29.538892] nexus steam-runtime-steam-remote[1996]: E: Steam is not running: No such device or address
[   41.971947] nexus NetworkManager[735]: <error> [1795272694.8996] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60481sec pref 46081sec lifetime 34-34[46081,60481] dev 2 src dhcp
[   72.604488] nexus NetworkManager[735]: <error> [1795272725.5322] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60450sec pref 46050sec lifetime 65-64[46051,60451] dev 2 src dhcp
[   91.938130] nexus (protonplus)[5359]: protonplus.service: Failed at step EXEC spawning /home/dareggon/.nix-profile/bin/protonplus: No such file or directory
[   91.941724] nexus systemd[1344]: Failed to start ProtonPlus.
[  102.480257] nexus NetworkManager[735]: <error> [1795272755.4079] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60420sec pref 46020sec lifetime 95-94[46021,60421] dev 2 src dhcp
[  133.007791] nexus NetworkManager[735]: <error> [1795272785.9355] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60389sec pref 45989sec lifetime 126-124[45991,60391] dev 2 src dhcp
[  162.800832] nexus NetworkManager[735]: <error> [1795272815.7285] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60360sec pref 45960sec lifetime 155-154[45961,60361] dev 2 src dhcp
[  191.988284] nexus NetworkManager[735]: <error> [1795272844.9160] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60331sec pref 45931sec lifetime 184-183[45932,60332] dev 2 src dhcp
[  219.329573] nexus NetworkManager[735]: <error> [1795272872.2573] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60303sec pref 45903sec lifetime 212-211[45904,60304] dev 2 src dhcp
[  252.603747] nexus NetworkManager[735]: <error> [1795272905.5314] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60270sec pref 45870sec lifetime 245-244[45871,60271] dev 2 src dhcp
[  282.912086] nexus NetworkManager[735]: <error> [1795272935.8398] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60240sec pref 45840sec lifetime 275-274[45841,60241] dev 2 src dhcp
[  312.094242] nexus NetworkManager[735]: <error> [1795272965.0219] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60210sec pref 45810sec lifetime 305-304[45811,60211] dev 2 src dhcp
[  342.731025] nexus NetworkManager[735]: <error> [1795272995.6587] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60180sec pref 45780sec lifetime 335-334[45781,60181] dev 2 src dhcp
[  372.720115] nexus NetworkManager[735]: <error> [1795273025.6478] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60150sec pref 45750sec lifetime 365-364[45751,60151] dev 2 src dhcp
[  402.410046] nexus NetworkManager[735]: <error> [1795273055.3377] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60120sec pref 45720sec lifetime 395-394[45721,60121] dev 2 src dhcp
[  432.720978] nexus NetworkManager[735]: <error> [1795273085.6487] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60090sec pref 45690sec lifetime 425-424[45691,60091] dev 2 src dhcp
[  462.318822] nexus NetworkManager[735]: <error> [1795273115.2465] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 60060sec pref 45660sec lifetime 455-454[45661,60061] dev 2 src dhcp
[  512.488866] nexus NetworkManager[735]: <error> [1795273165.4166] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 60010sec pref 45610sec lifetime 505-504[45611,60011] dev 2 src dhcp
[  542.081460] nexus NetworkManager[735]: <error> [1795273195.0091] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59980sec pref 45580sec lifetime 535-534[45581,59981] dev 2 src dhcp
[  572.800441] nexus NetworkManager[735]: <error> [1795273225.7281] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59950sec pref 45550sec lifetime 565-564[45551,59951] dev 2 src dhcp
[  602.188883] nexus NetworkManager[735]: <error> [1795273255.1166] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59920sec pref 45520sec lifetime 595-594[45521,59921] dev 2 src dhcp
[  652.269012] nexus NetworkManager[735]: <error> [1795273305.1967] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59870sec pref 45470sec lifetime 645-644[45471,59871] dev 2 src dhcp
[  682.684382] nexus NetworkManager[735]: <error> [1795273335.6121] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59840sec pref 45440sec lifetime 675-674[45441,59841] dev 2 src dhcp
[  712.471913] nexus NetworkManager[735]: <error> [1795273365.3996] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59810sec pref 45410sec lifetime 705-704[45411,59811] dev 2 src dhcp
[  742.089414] nexus NetworkManager[735]: <error> [1795273395.0171] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59780sec pref 45380sec lifetime 735-734[45381,59781] dev 2 src dhcp
[  772.989890] nexus NetworkManager[735]: <error> [1795273425.9176] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59750sec pref 45350sec lifetime 765-764[45351,59751] dev 2 src dhcp
[  822.140685] nexus NetworkManager[735]: <error> [1795273475.0684] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59700sec pref 45300sec lifetime 815-814[45301,59701] dev 2 src dhcp
[  852.044303] nexus NetworkManager[735]: <error> [1795273504.9720] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59671sec pref 45271sec lifetime 845-844[45272,59672] dev 2 src dhcp
[ 1162.107493] nexus NetworkManager[735]: <error> [1795273815.0352] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 59360sec pref 44960sec lifetime 1155-1154[44961,59361] dev 2 src dhcp
[ 1192.826256] nexus NetworkManager[735]: <error> [1795273845.7539] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 59330sec pref 44930sec lifetime 1185-1184[44931,59331] dev 2 src dhcp
[ 1222.727125] nexus NetworkManager[735]: <error> [1795273875.6548] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 59300sec pref 44900sec lifetime 1215-1214[44901,59301] dev 2 src dhcp
[ 1252.115940] nexus NetworkManager[735]: <error> [1795273905.0436] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 59270sec pref 44870sec lifetime 1245-1244[44871,59271] dev 2 src dhcp
[ 1282.939574] nexus NetworkManager[735]: <error> [1795273935.8673] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 59240sec pref 44840sec lifetime 1275-1274[44841,59241] dev 2 src dhcp
[ 1327.890893] nexus NetworkManager[735]: <error> [1795273980.8186] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 59196sec pref 44796sec lifetime 1320-1320[44796,59196] dev 2 src dhcp
[ 1358.209232] nexus NetworkManager[735]: <error> [1795274011.1369] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 59165sec pref 44765sec lifetime 1351-1350[44766,59166] dev 2 src dhcp
[ 1502.585238] nexus NetworkManager[735]: <error> [1795274155.5129] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 59020sec pref 44620sec lifetime 1495-1494[44621,59021] dev 2 src dhcp
[ 1532.587873] nexus NetworkManager[735]: <error> [1795274185.5156] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 58990sec pref 44590sec lifetime 1525-1524[44591,58991] dev 2 src dhcp
[ 1842.141528] nexus NetworkManager[735]: <error> [1795274495.0692] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 58680sec pref 44280sec lifetime 1835-1834[44281,58681] dev 2 src dhcp
[ 1982.632950] nexus NetworkManager[735]: <error> [1795274635.5606] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 58540sec pref 44140sec lifetime 1975-1974[44141,58541] dev 2 src dhcp
[ 2292.818897] nexus NetworkManager[735]: <error> [1795274945.7466] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 58230sec pref 43830sec lifetime 2285-2284[43831,58231] dev 2 src dhcp
[ 2323.028445] nexus NetworkManager[735]: <error> [1795274975.9561] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 58199sec pref 43799sec lifetime 2316-2314[43801,58201] dev 2 src dhcp
[ 3182.080648] nexus NetworkManager[735]: <error> [1795275835.0083] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57340sec pref 42940sec lifetime 3175-3174[42941,57341] dev 2 src dhcp
[ 3212.699512] nexus NetworkManager[735]: <error> [1795275865.6272] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57310sec pref 42910sec lifetime 3205-3204[42911,57311] dev 2 src dhcp
[ 3242.096170] nexus NetworkManager[735]: <error> [1795275895.0239] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57280sec pref 42880sec lifetime 3235-3234[42881,57281] dev 2 src dhcp
[ 3271.989727] nexus NetworkManager[735]: <error> [1795275924.9174] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57251sec pref 42851sec lifetime 3264-3264[42851,57251] dev 2 src dhcp
[ 3301.997671] nexus NetworkManager[735]: <error> [1795275954.9253] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57221sec pref 42821sec lifetime 3294-3294[42821,57221] dev 2 src dhcp
[ 3331.996304] nexus NetworkManager[735]: <error> [1795275984.9240] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57191sec pref 42791sec lifetime 3324-3324[42791,57191] dev 2 src dhcp
[ 3362.511340] nexus NetworkManager[735]: <error> [1795276015.4390] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57160sec pref 42760sec lifetime 3355-3354[42761,57161] dev 2 src dhcp
[ 3392.417640] nexus NetworkManager[735]: <error> [1795276045.3453] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57130sec pref 42730sec lifetime 3385-3384[42731,57131] dev 2 src dhcp
[ 3422.424172] nexus NetworkManager[735]: <error> [1795276075.3519] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57100sec pref 42700sec lifetime 3415-3414[42701,57101] dev 2 src dhcp
[ 3452.726123] nexus NetworkManager[735]: <error> [1795276105.6538] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57070sec pref 42670sec lifetime 3445-3444[42671,57071] dev 2 src dhcp
[ 3502.398270] nexus NetworkManager[735]: <error> [1795276155.3260] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 57020sec pref 42620sec lifetime 3495-3494[42621,57021] dev 2 src dhcp
[ 3533.007722] nexus NetworkManager[735]: <error> [1795276185.9354] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 56989sec pref 42589sec lifetime 3526-3524[42591,56991] dev 2 src dhcp
[ 3562.607483] nexus NetworkManager[735]: <error> [1795276215.5352] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 56960sec pref 42560sec lifetime 3555-3554[42561,56961] dev 2 src dhcp
[ 3592.093734] nexus NetworkManager[735]: <error> [1795276245.0214] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 56930sec pref 42530sec lifetime 3585-3584[42531,56931] dev 2 src dhcp
[ 3672.682527] nexus NetworkManager[735]: <error> [1795276325.6102] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56850sec pref 42450sec lifetime 3665-3664[42451,56851] dev 2 src dhcp
[ 3702.685393] nexus NetworkManager[735]: <error> [1795276355.6131] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56820sec pref 42420sec lifetime 3695-3694[42421,56821] dev 2 src dhcp
[ 3732.997219] nexus NetworkManager[735]: <error> [1795276385.9249] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56790sec pref 42390sec lifetime 3725-3724[42391,56791] dev 2 src dhcp
[ 3762.590219] nexus NetworkManager[735]: <error> [1795276415.5179] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56760sec pref 42360sec lifetime 3755-3754[42361,56761] dev 2 src dhcp
[ 3792.184791] nexus NetworkManager[735]: <error> [1795276445.1125] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56730sec pref 42330sec lifetime 3785-3784[42331,56731] dev 2 src dhcp
[ 3822.802870] nexus NetworkManager[735]: <error> [1795276475.7306] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56700sec pref 42300sec lifetime 3815-3814[42301,56701] dev 2 src dhcp
[ 3872.465571] nexus NetworkManager[735]: <error> [1795276525.3933] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56650sec pref 42250sec lifetime 3865-3864[42251,56651] dev 2 src dhcp
[ 3902.986686] nexus NetworkManager[735]: <error> [1795276555.9144] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56620sec pref 42220sec lifetime 3895-3894[42221,56621] dev 2 src dhcp
[ 3932.499048] nexus NetworkManager[735]: <error> [1795276585.4267] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 56590sec pref 42190sec lifetime 3925-3924[42191,56591] dev 2 src dhcp
[ 4692.808166] nexus NetworkManager[735]: <error> [1795277345.7358] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55830sec pref 41430sec lifetime 4685-4684[41431,55831] dev 2 src dhcp
[ 4722.414579] nexus NetworkManager[735]: <error> [1795277375.3422] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55800sec pref 41400sec lifetime 4715-4714[41401,55801] dev 2 src dhcp
[ 4751.482829] nexus NetworkManager[735]: <error> [1795277404.4105] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55772sec pref 41372sec lifetime 4744-4744[41372,55772] dev 2 src dhcp
[ 4862.588219] nexus NetworkManager[735]: <error> [1795277515.5159] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 55660sec pref 41260sec lifetime 4855-4854[41261,55661] dev 2 src dhcp
[ 4892.592555] nexus NetworkManager[735]: <error> [1795277545.5202] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 55630sec pref 41230sec lifetime 4885-4884[41231,55631] dev 2 src dhcp
[ 5172.660690] nexus NetworkManager[735]: <error> [1795277825.5884] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55350sec pref 40950sec lifetime 5165-5164[40951,55351] dev 2 src dhcp
[ 5202.361851] nexus NetworkManager[735]: <error> [1795277855.2895] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55320sec pref 40920sec lifetime 5195-5194[40921,55321] dev 2 src dhcp
[ 5232.770699] nexus NetworkManager[735]: <error> [1795277885.6984] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55290sec pref 40890sec lifetime 5225-5224[40891,55291] dev 2 src dhcp
[ 5261.238286] nexus NetworkManager[735]: <error> [1795277914.1660] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55262sec pref 40862sec lifetime 5254-5253[40863,55263] dev 2 src dhcp
[ 5292.389239] nexus NetworkManager[735]: <error> [1795277945.3169] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55231sec pref 40831sec lifetime 5285-5284[40832,55232] dev 2 src dhcp
[ 5342.645185] nexus NetworkManager[735]: <error> [1795277995.5729] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 55180sec pref 40780sec lifetime 5335-5334[40781,55181] dev 2 src dhcp
[ 5512.732091] nexus NetworkManager[735]: <error> [1795278165.6598] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 55010sec pref 40610sec lifetime 5505-5504[40611,55011] dev 2 src dhcp
[ 5541.301749] nexus NetworkManager[735]: <error> [1795278194.2294] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54982sec pref 40582sec lifetime 5534-5534[40582,54982] dev 2 src dhcp
[ 5572.742254] nexus NetworkManager[735]: <error> [1795278225.6699] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54950sec pref 40550sec lifetime 5565-5564[40551,54951] dev 2 src dhcp
[ 5602.230093] nexus NetworkManager[735]: <error> [1795278255.1578] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54920sec pref 40520sec lifetime 5595-5594[40521,54921] dev 2 src dhcp
[ 5653.024497] nexus NetworkManager[735]: <error> [1795278305.9522] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 54869sec pref 40469sec lifetime 5646-5644[40471,54871] dev 2 src dhcp
[ 5683.025415] nexus NetworkManager[735]: <error> [1795278335.9530] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 54839sec pref 40439sec lifetime 5676-5674[40441,54841] dev 2 src dhcp
[ 5712.112218] nexus NetworkManager[735]: <error> [1795278365.0399] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 54810sec pref 40410sec lifetime 5705-5704[40411,54811] dev 2 src dhcp
[ 6302.152797] nexus NetworkManager[735]: <error> [1795278955.0805] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54220sec pref 39820sec lifetime 6295-6294[39821,54221] dev 2 src dhcp
[ 6332.864974] nexus NetworkManager[735]: <error> [1795278985.7926] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54190sec pref 39790sec lifetime 6325-6324[39791,54191] dev 2 src dhcp
[ 6362.761693] nexus NetworkManager[735]: <error> [1795279015.6894] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54160sec pref 39760sec lifetime 6355-6354[39761,54161] dev 2 src dhcp
[ 6391.740571] nexus NetworkManager[735]: <error> [1795279044.6683] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54132sec pref 39732sec lifetime 6384-6383[39733,54133] dev 2 src dhcp
[ 6422.766727] nexus NetworkManager[735]: <error> [1795279075.6944] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54100sec pref 39700sec lifetime 6415-6414[39701,54101] dev 2 src dhcp
[ 6472.328562] nexus NetworkManager[735]: <error> [1795279125.2562] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54051sec pref 39651sec lifetime 6465-6464[39652,54052] dev 2 src dhcp
[ 6502.844540] nexus NetworkManager[735]: <error> [1795279155.7722] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 54020sec pref 39620sec lifetime 6495-6494[39621,54021] dev 2 src dhcp
[ 6530.798939] nexus NetworkManager[735]: <error> [1795279183.7266] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53993sec pref 39593sec lifetime 6523-6523[39593,53993] dev 2 src dhcp
[ 6781.989175] nexus NetworkManager[735]: <error> [1795279434.9169] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 53741sec pref 39341sec lifetime 6774-6774[39341,53741] dev 2 src dhcp
[ 6812.194773] nexus NetworkManager[735]: <error> [1795279465.1224] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 53710sec pref 39310sec lifetime 6805-6804[39311,53711] dev 2 src dhcp
[ 6842.511480] nexus NetworkManager[735]: <error> [1795279495.4392] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 53680sec pref 39280sec lifetime 6835-6834[39281,53681] dev 2 src dhcp
[ 6872.610835] nexus NetworkManager[735]: <error> [1795279525.5385] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 53650sec pref 39250sec lifetime 6865-6864[39251,53651] dev 2 src dhcp
[ 6902.232947] nexus NetworkManager[735]: <error> [1795279555.1606] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 53620sec pref 39220sec lifetime 6895-6894[39221,53621] dev 2 src dhcp
[ 6948.285289] nexus NetworkManager[735]: <error> [1795279601.2130] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53575sec pref 39175sec lifetime 6941-6940[39176,53576] dev 2 src dhcp
[ 6982.079766] nexus NetworkManager[735]: <error> [1795279635.0075] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53540sec pref 39140sec lifetime 6975-6974[39141,53541] dev 2 src dhcp
[ 7012.388681] nexus NetworkManager[735]: <error> [1795279665.3164] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53510sec pref 39110sec lifetime 7005-7004[39111,53511] dev 2 src dhcp
[ 7042.699778] nexus NetworkManager[735]: <error> [1795279695.6275] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53480sec pref 39080sec lifetime 7035-7034[39081,53481] dev 2 src dhcp
[ 7072.815574] nexus NetworkManager[735]: <error> [1795279725.7433] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53450sec pref 39050sec lifetime 7065-7064[39051,53451] dev 2 src dhcp
[ 7122.673919] nexus NetworkManager[735]: <error> [1795279775.6016] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53400sec pref 39000sec lifetime 7115-7114[39001,53401] dev 2 src dhcp
[ 7152.882552] nexus NetworkManager[735]: <error> [1795279805.8102] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53370sec pref 38970sec lifetime 7145-7144[38971,53371] dev 2 src dhcp
[ 7182.174371] nexus NetworkManager[735]: <error> [1795279835.1020] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 53340sec pref 38940sec lifetime 7175-7174[38941,53341] dev 2 src dhcp
[ 7572.737712] nexus NetworkManager[735]: <error> [1795280225.6654] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52950sec pref 38550sec lifetime 7565-7564[38551,52951] dev 2 src dhcp
[ 7602.319643] nexus NetworkManager[735]: <error> [1795280255.2473] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52920sec pref 38520sec lifetime 7595-7594[38521,52921] dev 2 src dhcp
[ 7632.736381] nexus NetworkManager[735]: <error> [1795280285.6641] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52890sec pref 38490sec lifetime 7625-7624[38491,52891] dev 2 src dhcp
[ 7662.122019] nexus NetworkManager[735]: <error> [1795280315.0497] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52860sec pref 38460sec lifetime 7655-7654[38461,52861] dev 2 src dhcp
[ 7692.635624] nexus NetworkManager[735]: <error> [1795280345.5633] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52830sec pref 38430sec lifetime 7685-7684[38431,52831] dev 2 src dhcp
[ 7740.867555] nexus NetworkManager[735]: <error> [1795280393.7952] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52783sec pref 38383sec lifetime 7733-7733[38383,52783] dev 2 src dhcp
[ 7772.103722] nexus NetworkManager[735]: <error> [1795280425.0314] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52750sec pref 38350sec lifetime 7765-7764[38351,52751] dev 2 src dhcp
[ 7802.921523] nexus NetworkManager[735]: <error> [1795280455.8492] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52720sec pref 38320sec lifetime 7795-7794[38321,52721] dev 2 src dhcp
[ 7832.616802] nexus NetworkManager[735]: <error> [1795280485.5445] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52690sec pref 38290sec lifetime 7825-7824[38291,52691] dev 2 src dhcp
[ 7862.927211] nexus NetworkManager[735]: <error> [1795280515.8549] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52660sec pref 38260sec lifetime 7855-7854[38261,52661] dev 2 src dhcp
[ 7912.706083] nexus NetworkManager[735]: <error> [1795280565.6338] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52610sec pref 38210sec lifetime 7905-7904[38211,52611] dev 2 src dhcp
[ 7942.698449] nexus NetworkManager[735]: <error> [1795280595.6261] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52580sec pref 38180sec lifetime 7935-7934[38181,52581] dev 2 src dhcp
[ 7972.188845] nexus NetworkManager[735]: <error> [1795280625.1165] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52550sec pref 38150sec lifetime 7965-7964[38151,52551] dev 2 src dhcp
[ 8002.396866] nexus NetworkManager[735]: <error> [1795280655.3245] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 52520sec pref 38120sec lifetime 7995-7994[38121,52521] dev 2 src dhcp
[ 8051.652143] nexus NetworkManager[735]: <error> [1795280704.5798] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52472sec pref 38072sec lifetime 8044-8043[38073,52473] dev 2 src dhcp
[ 8082.987265] nexus NetworkManager[735]: <error> [1795280735.9150] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52440sec pref 38040sec lifetime 8075-8074[38041,52441] dev 2 src dhcp
[ 8112.887364] nexus NetworkManager[735]: <error> [1795280765.8151] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52410sec pref 38010sec lifetime 8105-8104[38011,52411] dev 2 src dhcp
[ 8142.589579] nexus NetworkManager[735]: <error> [1795280795.5173] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52380sec pref 37980sec lifetime 8135-8134[37981,52381] dev 2 src dhcp
[ 8172.279790] nexus NetworkManager[735]: <error> [1795280825.2075] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52350sec pref 37950sec lifetime 8165-8164[37951,52351] dev 2 src dhcp
[ 8221.644600] nexus NetworkManager[735]: <error> [1795280874.5723] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 52301sec pref 37901sec lifetime 8214-8213[37902,52302] dev 2 src dhcp
[ 8872.199998] nexus NetworkManager[735]: <error> [1795281525.1277] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 51650sec pref 37250sec lifetime 8865-8864[37251,51651] dev 2 src dhcp
[ 8902.005309] nexus NetworkManager[735]: <error> [1795281554.9330] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 51620sec pref 37220sec lifetime 8895-8894[37221,51621] dev 2 src dhcp
[ 8931.593570] nexus NetworkManager[735]: <error> [1795281584.5213] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 51592sec pref 37192sec lifetime 8924-8923[37193,51593] dev 2 src dhcp
[ 8962.831982] nexus NetworkManager[735]: <error> [1795281615.7597] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 51560sec pref 37160sec lifetime 8955-8954[37161,51561] dev 2 src dhcp
[ 9492.649456] nexus NetworkManager[735]: <error> [1795282145.5771] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 51030sec pref 36630sec lifetime 9485-9484[36631,51031] dev 2 src dhcp
[ 9522.345886] nexus NetworkManager[735]: <error> [1795282175.2736] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 51000sec pref 36600sec lifetime 9515-9514[36601,51001] dev 2 src dhcp
[ 9552.350156] nexus NetworkManager[735]: <error> [1795282205.2778] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 50970sec pref 36570sec lifetime 9545-9544[36571,50971] dev 2 src dhcp
[ 9662.226738] nexus NetworkManager[735]: <error> [1795282315.1544] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 50860sec pref 36460sec lifetime 9655-9654[36461,50861] dev 2 src dhcp
[ 9692.230931] nexus NetworkManager[735]: <error> [1795282345.1586] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 50830sec pref 36430sec lifetime 9685-9684[36431,50831] dev 2 src dhcp
[ 9722.745475] nexus NetworkManager[735]: <error> [1795282375.6732] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 50800sec pref 36400sec lifetime 9715-9714[36401,50801] dev 2 src dhcp
[ 9752.543950] nexus NetworkManager[735]: <error> [1795282405.4716] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 50770sec pref 36370sec lifetime 9745-9744[36371,50771] dev 2 src dhcp
[ 9973.016401] nexus NetworkManager[735]: <error> [1795282625.9441] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 50549sec pref 36149sec lifetime 9966-9964[36151,50551] dev 2 src dhcp
[10002.407528] nexus NetworkManager[735]: <error> [1795282655.3352] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 50520sec pref 36120sec lifetime 9995-9994[36121,50521] dev 2 src dhcp
[10032.513464] nexus NetworkManager[735]: <error> [1795282685.4411] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 50490sec pref 36090sec lifetime 10025-10024[36091,50491] dev 2 src dhcp
[10062.829532] nexus NetworkManager[735]: <error> [1795282715.7572] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 50460sec pref 36060sec lifetime 10055-10054[36061,50461] dev 2 src dhcp
[10092.213070] nexus NetworkManager[735]: <error> [1795282745.1407] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 50430sec pref 36030sec lifetime 10085-10084[36031,50431] dev 2 src dhcp
[10282.372421] nexus NetworkManager[735]: <error> [1795282935.3001] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 86244sec pref 71844sec lifetime 10275-10274[71845,86245] dev 2 src dhcp
[10312.274599] nexus NetworkManager[735]: <error> [1795282965.2023] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 86214sec pref 71814sec lifetime 10305-10304[71815,86215] dev 2 src dhcp
[10343.200849] nexus NetworkManager[735]: <error> [1795282996.1285] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 86183sec pref 71783sec lifetime 10336-10334[71785,86185] dev 2 src dhcp
[10372.989244] nexus NetworkManager[735]: <error> [1795283025.9169] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 86154sec pref 71754sec lifetime 10365-10364[71755,86155] dev 2 src dhcp
[10402.174241] nexus NetworkManager[735]: <error> [1795283055.1019] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 86124sec pref 71724sec lifetime 10395-10394[71725,86125] dev 2 src dhcp
[10452.042439] nexus NetworkManager[735]: <error> [1795283104.9701] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 86074sec pref 71674sec lifetime 10445-10444[71675,86075] dev 2 src dhcp
[10482.666649] nexus NetworkManager[735]: <error> [1795283135.5943] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 86044sec pref 71644sec lifetime 10475-10474[71645,86045] dev 2 src dhcp
[10512.048871] nexus NetworkManager[735]: <error> [1795283164.9765] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 86014sec pref 71614sec lifetime 10505-10504[71615,86015] dev 2 src dhcp
[10542.564523] nexus NetworkManager[735]: <error> [1795283195.4922] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85984sec pref 71584sec lifetime 10535-10534[71585,85985] dev 2 src dhcp
[10572.771774] nexus NetworkManager[735]: <error> [1795283225.6995] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85954sec pref 71554sec lifetime 10565-10564[71555,85955] dev 2 src dhcp
[10622.949046] nexus NetworkManager[735]: <error> [1795283275.8767] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 85904sec pref 71504sec lifetime 10615-10614[71505,85905] dev 2 src dhcp
[10757.201341] nexus NetworkManager[735]: <error> [1795283410.1290] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85770sec pref 71370sec lifetime 10750-10749[71371,85771] dev 2 src dhcp
[10791.295960] nexus NetworkManager[735]: <error> [1795283444.2236] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85736sec pref 71336sec lifetime 10784-10783[71337,85737] dev 2 src dhcp
[10820.991654] nexus NetworkManager[735]: <error> [1795283473.9193] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85707sec pref 71307sec lifetime 10813-10813[71307,85707] dev 2 src dhcp
[10852.939316] nexus NetworkManager[735]: <error> [1795283505.8670] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85674sec pref 71274sec lifetime 10845-10844[71275,85675] dev 2 src dhcp
[10882.533737] nexus NetworkManager[735]: <error> [1795283535.4614] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85644sec pref 71244sec lifetime 10875-10874[71245,85645] dev 2 src dhcp
[10932.505499] nexus NetworkManager[735]: <error> [1795283585.4332] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85594sec pref 71194sec lifetime 10925-10924[71195,85595] dev 2 src dhcp
[10961.604783] nexus NetworkManager[735]: <error> [1795283614.5325] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85566sec pref 71166sec lifetime 10954-10954[71166,85566] dev 2 src dhcp
[10992.921551] nexus NetworkManager[735]: <error> [1795283645.8492] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85534sec pref 71134sec lifetime 10985-10984[71135,85535] dev 2 src dhcp
[11022.414497] nexus NetworkManager[735]: <error> [1795283675.3422] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85504sec pref 71104sec lifetime 11015-11014[71105,85505] dev 2 src dhcp
[11052.825805] nexus NetworkManager[735]: <error> [1795283705.7535] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85474sec pref 71074sec lifetime 11045-11044[71075,85475] dev 2 src dhcp
[11071.879623] nexus pipewire[1634]: pw.node: (bluez_input.5C_37_2E_6D_B5_A1.0-78) idle -> error (Received error event)
[11071.879692] nexus pipewire[1634]: pw.node: (bluez_output.5C_37_2E_6D_B5_A1.1-86) running -> error (Received error event)
[11071.923727] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.923848] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.923863] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.923875] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.923886] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.923897] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.923909] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.923919] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.923929] nexus kernel: Bluetooth: hci0: corrupted SCO packet
[11071.930021] nexus kernel: Bluetooth: hci0: SCO packet for unknown connection handle 2304
[11071.930104] nexus kernel: Bluetooth: hci0: SCO packet for unknown connection handle 2304
[11071.930127] nexus kernel: Bluetooth: hci0: SCO packet for unknown connection handle 2304
[11102.183154] nexus kernel: Bluetooth: hci0: SCO packet for unknown connection handle 2304
[11102.183555] nexus NetworkManager[735]: <error> [1795283755.1112] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 85424sec pref 71024sec lifetime 11095-11094[71025,85425] dev 2 src dhcp
[11242.481430] nexus NetworkManager[735]: <error> [1795283895.4091] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85284sec pref 70884sec lifetime 11235-11234[70885,85285] dev 2 src dhcp
[11272.273307] nexus NetworkManager[735]: <error> [1795283925.2010] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85254sec pref 70854sec lifetime 11265-11264[70855,85255] dev 2 src dhcp
[11302.180102] nexus NetworkManager[735]: <error> [1795283955.1078] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85224sec pref 70824sec lifetime 11295-11294[70825,85225] dev 2 src dhcp
[11330.741322] nexus NetworkManager[735]: <error> [1795283983.6690] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85197sec pref 70797sec lifetime 11323-11323[70797,85197] dev 2 src dhcp
[11362.102056] nexus NetworkManager[735]: <error> [1795284015.0297] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 85164sec pref 70764sec lifetime 11355-11354[70765,85165] dev 2 src dhcp
[11412.149853] nexus NetworkManager[735]: <error> [1795284065.0775] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 85114sec pref 70714sec lifetime 11405-11404[70715,85115] dev 2 src dhcp
[12006.044885] nexus pipewire-pulse[1643]: mod.protocol-pulse: 0x5785d2b24b80: card 75 port 0 profiles inconsistent (1 < 2)
[12006.044899] nexus pipewire-pulse[1643]: mod.protocol-pulse: 0x5785d2b24b80: card 75 port 1 profiles inconsistent (1 < 3)
[12006.044908] nexus pipewire-pulse[1643]: mod.protocol-pulse: 0x5785d2b24b80: card 75 port 2 profiles inconsistent (1 < 2)
[12006.075218] nexus bluetoothd[736]: src/profile.c:ext_io_disconnected() Unable to get io data for Hands-Free Voice gateway: getpeername: Transport endpoint is not connected (107)
[12032.394437] nexus NetworkManager[735]: <error> [1795284685.3221] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84494sec pref 70094sec lifetime 12025-12024[70095,84495] dev 2 src dhcp
[12062.702385] nexus NetworkManager[735]: <error> [1795284715.6301] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84464sec pref 70064sec lifetime 12055-12054[70065,84465] dev 2 src dhcp
[12092.610989] nexus NetworkManager[735]: <error> [1795284745.5387] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84434sec pref 70034sec lifetime 12085-12084[70035,84435] dev 2 src dhcp
[12122.095388] nexus NetworkManager[735]: <error> [1795284775.0231] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84405sec pref 70005sec lifetime 12115-12114[70006,84406] dev 2 src dhcp
[12152.917390] nexus NetworkManager[735]: <error> [1795284805.8451] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84375sec pref 69975sec lifetime 12145-12144[69976,84376] dev 2 src dhcp
[12202.090483] nexus NetworkManager[735]: <error> [1795284855.0182] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 84324sec pref 69924sec lifetime 12195-12194[69925,84325] dev 2 src dhcp
[12232.894893] nexus NetworkManager[735]: <error> [1795284885.8226] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 84294sec pref 69894sec lifetime 12225-12224[69895,84295] dev 2 src dhcp
[12372.565499] nexus NetworkManager[735]: <error> [1795285025.4932] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84154sec pref 69754sec lifetime 12365-12364[69755,84155] dev 2 src dhcp
[12402.057758] nexus NetworkManager[735]: <error> [1795285054.9854] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84124sec pref 69724sec lifetime 12395-12394[69725,84125] dev 2 src dhcp
[12432.776666] nexus NetworkManager[735]: <error> [1795285085.7044] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84094sec pref 69694sec lifetime 12425-12424[69695,84095] dev 2 src dhcp
[12462.266575] nexus NetworkManager[735]: <error> [1795285115.1943] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84064sec pref 69664sec lifetime 12455-12454[69665,84065] dev 2 src dhcp
[12492.883854] nexus NetworkManager[735]: <error> [1795285145.8115] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 84034sec pref 69634sec lifetime 12485-12484[69635,84035] dev 2 src dhcp
[12542.957700] nexus NetworkManager[735]: <error> [1795285195.8854] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 83984sec pref 69584sec lifetime 12535-12534[69585,83985] dev 2 src dhcp
[12572.662471] nexus NetworkManager[735]: <error> [1795285225.5902] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 83954sec pref 69554sec lifetime 12565-12564[69555,83955] dev 2 src dhcp
[12677.004417] nexus NetworkManager[735]: <error> [1795285329.9321] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83850sec pref 69450sec lifetime 12670-12669[69451,83851] dev 2 src dhcp
[12712.533436] nexus NetworkManager[735]: <error> [1795285365.4611] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83814sec pref 69414sec lifetime 12705-12704[69415,83815] dev 2 src dhcp
[12742.841517] nexus NetworkManager[735]: <error> [1795285395.7692] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83784sec pref 69384sec lifetime 12735-12734[69385,83785] dev 2 src dhcp
[12772.844962] nexus NetworkManager[735]: <error> [1795285425.7726] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83754sec pref 69354sec lifetime 12765-12764[69355,83755] dev 2 src dhcp
[12802.131622] nexus NetworkManager[735]: <error> [1795285455.0593] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83724sec pref 69324sec lifetime 12795-12794[69325,83725] dev 2 src dhcp
[12852.921536] nexus NetworkManager[735]: <error> [1795285505.8492] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83674sec pref 69274sec lifetime 12845-12844[69275,83675] dev 2 src dhcp
[13022.106912] nexus NetworkManager[735]: <error> [1795285675.0346] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 83504sec pref 69104sec lifetime 13015-13014[69105,83505] dev 2 src dhcp
[13051.988493] nexus NetworkManager[735]: <error> [1795285704.9162] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 83475sec pref 69075sec lifetime 13044-13044[69075,83475] dev 2 src dhcp
[13082.194622] nexus NetworkManager[735]: <error> [1795285735.1223] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 83444sec pref 69044sec lifetime 13075-13074[69045,83445] dev 2 src dhcp
[13157.151726] nexus NetworkManager[735]: <error> [1795285810.0794] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83369sec pref 68969sec lifetime 13150-13149[68970,83370] dev 2 src dhcp
[13191.558693] nexus NetworkManager[735]: <error> [1795285844.4864] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83336sec pref 68936sec lifetime 13184-13183[68937,83337] dev 2 src dhcp
[13220.947360] nexus NetworkManager[735]: <error> [1795285873.8750] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83306sec pref 68906sec lifetime 13213-13213[68906,83306] dev 2 src dhcp
[13250.847851] nexus NetworkManager[735]: <error> [1795285903.7755] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83277sec pref 68877sec lifetime 13243-13243[68877,83277] dev 2 src dhcp
[13282.291260] nexus NetworkManager[735]: <error> [1795285935.2189] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1003/128 lft 83244sec pref 68844sec lifetime 13275-13274[68845,83245] dev 2 src dhcp
[13332.974269] nexus NetworkManager[735]: <error> [1795285985.9020] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 83194sec pref 68794sec lifetime 13325-13324[68795,83195] dev 2 src dhcp
[13362.158791] nexus NetworkManager[735]: <error> [1795286015.0865] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 83164sec pref 68764sec lifetime 13355-13354[68765,83165] dev 2 src dhcp
[13392.468138] nexus NetworkManager[735]: <error> [1795286045.3958] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1004/128 lft 83134sec pref 68734sec lifetime 13385-13384[68735,83135] dev 2 src dhcp
[13581.937435] nexus NetworkManager[735]: <error> [1795286234.8651] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1007/128 lft 82945sec pref 68545sec lifetime 13574-13574[68545,82945] dev 2 src dhcp
[13612.266775] nexus NetworkManager[735]: <error> [1795286265.1945] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1007/128 lft 82914sec pref 68514sec lifetime 13605-13604[68515,82915] dev 2 src dhcp
[13886.739066] nexus NetworkManager[735]: <error> [1795286539.6668] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1006/128 lft 82641sec pref 68241sec lifetime 13879-13879[68241,82641] dev 2 src dhcp
[13922.114522] nexus NetworkManager[735]: <error> [1795286575.0422] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1006/128 lft 82604sec pref 68204sec lifetime 13915-13914[68205,82605] dev 2 src dhcp
[13952.358942] nexus NetworkManager[735]: <error> [1795286605.2866] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1006/128 lft 82575sec pref 68175sec lifetime 13945-13944[68176,82576] dev 2 src dhcp
[13982.569194] nexus NetworkManager[735]: <error> [1795286635.4969] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1006/128 lft 82544sec pref 68144sec lifetime 13975-13974[68145,82545] dev 2 src dhcp
[14012.705920] nexus NetworkManager[735]: <error> [1795286665.6336] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1006/128 lft 82514sec pref 68114sec lifetime 14005-14004[68115,82515] dev 2 src dhcp
[14056.866373] nexus NetworkManager[735]: <error> [1795286709.7941] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1006/128 lft 82471sec pref 68071sec lifetime 14049-14049[68071,82471] dev 2 src dhcp
[14085.115059] nexus NetworkManager[735]: <error> [1795286738.0427] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1006/128 lft 82441sec pref 68041sec lifetime 14078-14077[68042,82442] dev 2 src dhcp
[14115.234300] nexus NetworkManager[735]: <error> [1795286768.1620] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1006/128 lft 82412sec pref 68012sec lifetime 14108-14107[68013,82413] dev 2 src dhcp
[14221.975626] nexus NetworkManager[735]: <error> [1795286874.9033] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1008/128 lft 82305sec pref 67905sec lifetime 14214-14214[67905,82305] dev 2 src dhcp
[14251.751848] nexus NetworkManager[735]: <error> [1795286904.6795] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1008/128 lft 82275sec pref 67875sec lifetime 14244-14243[67876,82276] dev 2 src dhcp
[14282.365929] nexus NetworkManager[735]: <error> [1795286935.2936] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1008/128 lft 82244sec pref 67844sec lifetime 14275-14274[67845,82245] dev 2 src dhcp
[14392.557622] nexus NetworkManager[735]: <error> [1795287045.4853] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100a/128 lft 82134sec pref 67734sec lifetime 14385-14384[67735,82135] dev 2 src dhcp
[14422.442021] nexus NetworkManager[735]: <error> [1795287075.3697] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100a/128 lft 82104sec pref 67704sec lifetime 14415-14414[67705,82105] dev 2 src dhcp
[14450.146878] nexus NetworkManager[735]: <error> [1795287103.0746] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100a/128 lft 82077sec pref 67677sec lifetime 14443-14442[67678,82078] dev 2 src dhcp
[14482.354497] nexus NetworkManager[735]: <error> [1795287135.2822] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100a/128 lft 82044sec pref 67644sec lifetime 14475-14474[67645,82045] dev 2 src dhcp
[14528.374710] nexus NetworkManager[735]: <error> [1795287181.3024] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100c/128 lft 81999sec pref 67599sec lifetime 14521-14520[67600,82000] dev 2 src dhcp
[14561.904920] nexus NetworkManager[735]: <error> [1795287214.8326] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100c/128 lft 81966sec pref 67566sec lifetime 14554-14554[67566,81966] dev 2 src dhcp
[14591.952316] nexus NetworkManager[735]: <error> [1795287244.8800] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100c/128 lft 81935sec pref 67535sec lifetime 14584-14584[67535,81935] dev 2 src dhcp
[14642.043064] nexus NetworkManager[735]: <error> [1795287294.9707] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100c/128 lft 81884sec pref 67484sec lifetime 14635-14634[67485,81885] dev 2 src dhcp
[14672.384500] nexus NetworkManager[735]: <error> [1795287325.3122] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::100c/128 lft 81854sec pref 67454sec lifetime 14665-14664[67455,81855] dev 2 src dhcp
[17212.905631] nexus NetworkManager[735]: <error> [1795289865.8333] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1005/128 lft 79314sec pref 64914sec lifetime 17205-17204[64915,79315] dev 2 src dhcp
[17242.353384] nexus NetworkManager[735]: <error> [1795289895.2811] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1005/128 lft 79284sec pref 64884sec lifetime 17235-17234[64885,79285] dev 2 src dhcp
[17272.045816] nexus NetworkManager[735]: <error> [1795289924.9735] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1005/128 lft 79254sec pref 64854sec lifetime 17265-17264[64855,79255] dev 2 src dhcp
[17302.754761] nexus NetworkManager[735]: <error> [1795289955.6824] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1005/128 lft 79224sec pref 64824sec lifetime 17295-17294[64825,79225] dev 2 src dhcp
[17332.051693] nexus NetworkManager[735]: <error> [1795289984.9794] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1005/128 lft 79194sec pref 64794sec lifetime 17325-17324[64795,79195] dev 2 src dhcp
[17362.657738] nexus NetworkManager[735]: <error> [1795290015.5854] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1005/128 lft 79164sec pref 64764sec lifetime 17355-17354[64765,79165] dev 2 src dhcp
[17392.257290] nexus NetworkManager[735]: <error> [1795290045.1850] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1005/128 lft 79134sec pref 64734sec lifetime 17385-17384[64735,79135] dev 2 src dhcp
[17421.794564] nexus NetworkManager[735]: <error> [1795290074.7222] dhcp6 (enp6s0): DAD failed for address: 2804:14d:5482:945e::1005/128 lft 79106sec pref 64706sec lifetime 17414-17413[64707,79107] dev 2 src dhcp
