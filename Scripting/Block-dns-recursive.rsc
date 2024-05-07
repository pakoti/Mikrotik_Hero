# Block Open Recursive DNS

/interface list add name=WAN
/interface list member
add list=WAN interface="ether to ISP"

/ip firewall filter
add chain=input dst-port=53 in-interface-list=WAN protocol=tcp action=drop comment="Block Open Recursive DNS"
add chain=input dst-port=53 in-interface-list=WAN protocol=udp action=drop