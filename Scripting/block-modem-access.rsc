
# Block ACCESS MODEM

/ip firewall address-list
add address=192.168.1.1 list=IP-MODEM
add address=192.168.2.1 list=IP-MODEM
/ip firewall filter
add action=drop chain=forward dst-address-list=IP-MODEM dst-port=21-23,80,443 protocol=tcp comment="MODEM PROTECTED"
add action=drop chain=output dst-address-list=IP-MODEM dst-port=21-23,80,443 protocol=tcp