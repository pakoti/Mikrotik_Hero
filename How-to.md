# How to ...?
in this section i am collecting interesting FAQ.just simply search for what you are looking for.


# How to look for updates?

    system package update check-for-updates

and if you want to update

    system package update upgrade


## How to Mikrotik Factory Reset Guide
<ul>
<li>Disconnect the power cord from the unit.</li> 
<li>Hold the reset button and do not release.</li> 
<li>Plug the power cord in and wait until the ACT light starts flashing.</li> 
<li>Now release the button to clear configuration.</li> 
<li>Wait for a few minutes for the router to clear and restore the factory settings</li> 
</ul>

## How to monitor CPU usage in Mikrotik?

    /tool profile


## How to Traceroute an ip address?
enter following command and then type ip address

    /tool traceroute


## How to resolve a domain name in mikrotik shell:

    put [resolve google.com server 8.8.8.8]


## How to set ntp client using command line?
after this command you need to reboot the system.

    /system ntp client
    set enabled=yes server-dns-names=time.google.com,0.pool.ntp.org

