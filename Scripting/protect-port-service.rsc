

# Protect Port Service from Internet

/interface list add name=WAN
/interface list member 
add list=WAN interface="ether to ISP"
/ip firewall filter
add action=drop chain=input dst-port=21,22,23,8291,80,8728,8729 in-interface-list=WAN protocol=tcp comment="Protect Port Service from Internet"
add action=drop chain=input dst-port=21,22,23,8291,80,8728,8729 in-interface-list=WAN protocol=udp
