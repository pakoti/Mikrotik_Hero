# Drop TRACEROUTE

/ip firewall filter
add action=drop chain=forward icmp-options=11:0 protocol=icmp comment="Drop TRACEROUTE"
add action=drop chain=forward icmp-options=3:3 protocol=icmp