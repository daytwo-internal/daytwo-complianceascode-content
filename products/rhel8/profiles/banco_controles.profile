documentation_complete: true

title: 'Controles internos del banco (sin base CIS)'

description: |-
    Los controles propios del banco, sin la base CIS: agente EDR (Condor EDR),
    banner legal en MOTD, integridad de archivos (AIDE), remocion de paquetes
    prohibidos, permisos de archivos sensibles y hardening de kernel. Sirve para
    la remediacion rapida en vivo y para generar los ejemplos de bash/ansible
    que muestran la misma politica aplicada con distinta madurez.

selections:
    # Agente EDR corporativo (el control marquesina)
    - package_condor_edr_installed
    - service_condor_edr_enabled
    # Banner legal en /etc/motd
    - banner_etc_motd
    - motd_banner_text=cis_default
    - motd_banner_contents=cis_default
    # Integridad de archivos (AIDE): muy pedido en banca
    - package_aide_installed
    - aide_periodic_cron_checking
    # Remocion de paquetes prohibidos
    - package_telnet-server_removed
    - package_rsh-server_removed
    - package_tftp-server_removed
    # Permisos de archivos sensibles
    - file_permissions_etc_shadow
    - file_permissions_etc_gshadow
    - file_permissions_sshd_config
    # Hardening de kernel
    - kernel_module_usb-storage_disabled
    - sysctl_kernel_dmesg_restrict
    - disable_users_coredumps
