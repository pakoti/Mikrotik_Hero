# MTCNA

## RouterBOARD products naming details

MikroTik product naming can be confusing at first glance, but all the product codes have a logical explanation and follow a code.
RouterBOARD products naming details

RouterBOARD (short version RB)

<board name> <board features>-<built-in wireless> <wireless card features>-<connector type>-<enclosure type>
Board Name

Currently, there can be three types of board names:

    3-symbol name
        1st symbol stands for series (this can either be a number or a letter)
        2nd digit for indicating the number of potential wired interfaces (Ethernet, SFP, SFP+)
        3rd digit for indicating the number of potential wireless interfaces (built-in and mPCI and mPCIe slots)

    Word - currently used names are: OmniTIK, Groove, SXT, SEXTANT, Metal, LHG, DynaDish, cAP, wAP, LDF, DISC, mANTBox, QRT, DynaDish, cAP, hAP, hEX. If the board has fundamental changes in hardware (such as completely different CPU) revision version will be added at the end

    Exceptional naming - 600, 800, 1000, 1100, 1200, 2011, 3011, 4011 boards are standalone representatives of the series or have more than 9 wired interfaces, so the name was simplified to full hundreds or development year.

Board Features

Board features follow immediately after board name section (no spaces or dashes), except when board name is a word, then board features are separated by space.

Currently used features (listed in the order they are used):

    U - USB
    P - power injection with a controller
    i - single port power injector without a controller
    A - more memory and (or) higher license level
    H - more powerful CPU
    G - Gigabit (may include "U","A","H", if not used with "L")
    L - Lite edition
    S - SFP port (legacy usage - SwitchOS devices)
    e - PCIe interface extension card
    x<N> - where N is number of CPU cores ( x2, x16, x36, etc)
    R - MiniPCI or mini PCIe slot

Built-in wireless details

If the board has built-in wireless, then all its features are represented in the following format:

<band><power_per_chain><protocol><number_of_chains>

    band
        5 - 5Ghz
        2 - 2.4Ghz
        52 - dual-band 5Ghz and 2.4Ghz

    power per chain
        (not used) - "Normal" - <23dBm at 6Mbps 802.11a; <24dBm at 6Mbps 802.11g
        H - "High" - 23-24dBm at 6Mbps 802.11a; 24-27dBm at 6Mbps 802.11g
        HP - "High Power" - 25-26dBm 6Mbps 802.11a; 28-29dBm at 6Mbps 802.11g
        SHP - "Super High Power" - 27+dBm at 6Mbps 802.11a; 30+dBm at 6Mbps 802.11g

    protocol
        (not used) - for cards with only 802.11a/b/g support
        n - for cards with 802.11n support
        ac - for cards with 802.11ac support

    number_of_chains
        (not used) - single chain
        D - dual chain
        T - triple chain

    connector type
        (not used) - only one connector option on the model
        MMCX - MMCX connector type
        u.FL - u.FL connector type

Enclosure type

    (not used) - the main type of enclosure for a product
    BU - board unit (no enclosure) - for a situation when a board-only option is required, but the main product already comes in the case
    RM - rack-mount enclosure
    IN - indoor enclosure
    EM - extended memory
    LM - lite memory
    BE - black edition case
    TC - Tower (vertical) case
    PC - PassiveCooling enclosure (for CCR)
    TC - Tower (vertical) Case enclosure (for hEX, hAP and other home routers.)
    OUT - outdoor enclosure

More Specific types OUT enclosures are:

    SA - sector antenna enclosure (for SXT)
    HG - high gain antenna enclosure (for SXT)
    BB - Basebox enclosure (for RB911)
    NB - NetBox enclosure (for RB911)
    NM - NetMetal enclosure (for RB911)
    QRT - QRT enclosure (for RB911)
    SX - Sextant enclosure (for RB911,RB711)
    PB - PowerBOX enclosure (for RB750P, RB950P)

Example

Let's decode RB912UAG-5HPnD naming

    RB (RouterBOARD)
    912 - 9th series board with 1 wired (ethernet) interface and two wireless interfaces (built-in and mini PCIe)
    UAG - has a USB port, more memory, and gigabit ethernet port
    5HPnD - has built-in 5GHz high power dual chain wireless card with 802.11n support.

CloudCoreRouter naming details

CloudCoreRouter (short version CCR) naming consists of:

<4 digit number>-<list of ports>-<enclosure type>

    4 digit number
        1st digit stands for series
        2nd (reserved)
        3rd-4th digit indicates the number of total CPU cores on the device

    list of ports
        -<n>G number of 1G Ethernet ports
        -<n>P number of 1G Ethernet ports with PoE-out
        -<n>C number of combo 1G Ethernet/SFP ports
        -<n>S number of 1G SFP ports
        -<n>G+ number of 2.5G Ethernet ports
        -<n>P+ number of 2.5G Ethernet ports with PoE-out
        -<n>C+ number of combo 10G Ethernet/SFP+ ports
        -<n>S+ number of 10G SFP+ ports
        -<n>XG number of 5G/10G Ethernet ports
        -<n>XP number of 5G/10G Ethernet ports with PoE-out
        -<n>XC number of combo 10G/25G SFP+ ports
        -<n>XS number of 25G SFP+ ports
        -<n>Q+ number of 40G QSFP+ ports
        -<n>XQ number of 100G QSFP+ ports

    enclosure type - same as for RouterBOARD products.

CloudRouterSwitch and CloudSmartSwitch naming details

CloudRouterSwitch (short version CRS, RouterOS device) CloudSmartSwitch (short version CSS, SwOS device) naming consists of:

<3 digit number>-<list of ports>-<built-in wireless card>-<enclosure type>

    3 digit number
        1st digit stands for series
        2nd-3rd digit - total number of wired interfaces (Ethernet, SFP, SFP+)

    list of ports
        -<n>F number of 100M Ethernet ports
        -<n>Fi number of 100M Ethernet ports with PoE-out injector
        -<n>Fp number of 100M Ethernet ports with controlled PoE-out
        -<n>Fr number of 100M Ethernet ports with Reverse PoE (PoE-in)
        -<n>G number of 1G Ethernet ports
        -<n>P number of 1G Ethernet ports with PoE-out
        -<n>C number of combo 1G Ethernet/SFP ports
        -<n>S number of 1G SFP ports
        -<n>G+ number of 2.5G Ethernet ports
        -<n>P+ number of 2.5G Ethernet ports with PoE-out
        -<n>C+ number of combo 10G Ethernet/SFP ports
        -<n>S+ number of 10G SFP+ ports
        -<n>XG number of 5G/10G Ethernet ports
        -<n>XP number of 5G/10G Ethernet ports with PoE-out
        -<n>XC number of combo 10G/25G SFP+ ports
        -<n>XS number of 25G SFP+ ports
        -<n>Q+ number of 40G QSFP+ ports
        -<n>XQ number of 100G QSFP+ ports

    built-in wireless card - same as for RouterBOARD products.

    enclosure type - same as for RouterBOARD products


## what is NetInstall?
its a great tool to install RouterOS in mikrotik devices.
























## resources
<a href="https://help.mikrotik.com/docs/display/ROS/Product+Naming">products naming details</a>