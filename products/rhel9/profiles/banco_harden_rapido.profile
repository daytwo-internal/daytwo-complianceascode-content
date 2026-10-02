documentation_complete: true

title: 'Hardening rapido (banco, demo en vivo)'

description: |-
    Subconjunto minimo y watchable de hardening para mostrar la politica
    aplicandose EN VIVO en minutos (no el CIS L1 completo, que tarda ~16 min por
    host). Solo reglas de alto impacto y observables en el host.

selections:
    # Permisos de archivos sensibles
    - file_permissions_etc_shadow
    # SSH
    - sshd_disable_root_login
    - sshd_disable_empty_passwords
    # Kernel
    - sysctl_kernel_dmesg_restrict
    - kernel_module_usb-storage_disabled
    - disable_users_coredumps
