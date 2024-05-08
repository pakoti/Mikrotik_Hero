# How to ...?
in this section i am collecting interesting FAQ.just simply search for what you are looking for.


## How to look for updates?

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
just type this command in the terminal or goto tool profile.
    /tool profile


## How to reset password in mikrotik?
we have official way to restore password in mikrotik.if you try to reset mikrotik all configurations will be deleted.


## How to Traceroute an ip address?
enter following command and then type ip address

    /tool traceroute


## How to resolve a domain name in mikrotik shell:

    put [resolve google.com server 8.8.8.8]


## How to set ntp client using command line?
after this command you need to reboot the system.

    /system ntp client
    set enabled=yes server-dns-names=time.google.com,0.pool.ntp.org


## how to get out of safe mode?
just <code>[ctrl+x]</code> in command line.

## how to recover forgotten passwords in RouterOS?
There is no password recovery procedure in mikrotik devices.you will need to re-flash the board using NetInstall.

## how to shutdown mikrotik router board?
log onto the router and click on "System > Shutdown" or
    /system shutdown


## how to turn ON mikrotik router board?
disconnect it from power, completely, then reconnect a power source to it


## how to downgrade RouterOS version?
Drag and drop lower version then got to <code>System</code>--> <code>Package List</code>



## how to upgradee RouterOS version?
<p>1. Drag and drop Upper version then reboot </p>
<p>2. <code>System</code>--> <code>Package List</code> --><code>check for updates</code> </p>

## how to reset a RouterOS device

<p>1.run the command <code>/system reset-configuration</code>from command line interface </p>
<p>2.do it from <code>System</code> --> <code>Reset Configuration </code>menu in the graphical user interface</p>


## how to do load balancing and Link Redundancy in mikrotik?

<ul>
<li>Configuring Mikrotik</li>
<li>Configuring Mangle</li>
<li>Configuring Policy-based routing</li>
<li>Configuring NAT</li>
</ul>

## How to add an interface to dhcp client interfaces?

/ip dhcp-client add interface=ether1 disabled=no
<p>and to see if its working:

    ip dhcp-client> print detail

</p>