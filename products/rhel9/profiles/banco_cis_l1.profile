documentation_complete: true

title: 'Baseline del Banco (CIS Server L1 + controles internos)'

description: |-
    CIS Red Hat Enterprise Linux 9 Benchmark, nivel 1 servidor, mas los
    controles internos del banco que ningun benchmark externo incluye. El
    control central es la presencia y actividad del agente EDR corporativo
    (Condor EDR).

extends: cis_server_l1

selections:
    # Control central del banco: agente EDR corporativo instalado y activo.
    - package_condor_edr_installed
    - service_condor_edr_enabled
    # Hardening mas duro que CIS L1 (adicional al benchmark, seguro en vivo).
    - kernel_module_usb-storage_disabled
    - sysctl_kernel_dmesg_restrict
    - sysctl_kernel_kptr_restrict
    - disable_users_coredumps
    # Banner legal en MOTD (control tipico de banca)
    - banner_etc_motd
    - motd_banner_text=cis_default
    - motd_banner_contents=cis_default
