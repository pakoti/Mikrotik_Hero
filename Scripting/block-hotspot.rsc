#block hotspoting from users

/ip firewall mangle
add chain=prerouting action=change-ttl new-ttl=increment:1 in-interface=<WAN>