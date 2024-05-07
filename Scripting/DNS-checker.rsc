# Define the list of servers to ping
:local servers {"1.1.1.1";"4.2.2.4"}

# Initialize variables to store lowest latency and corresponding server
:local lowestlatency 999999; # Initialize with a high value
:local lowestlatencyserver "";

# Ping each server and find the lowest latency
:foreach server in=$servers do={
    :put ("Pinging $server...")
    :local result [/tool flood-ping $server count=3 as-value]
    :local latency ($result->"avg-rtt")
    :put ("Latency for $server: $latency ms")
    
    # Check if the current latency is lower than the lowest latency encountered so far
    :if ($latency < $lowestlatency) do={
        :set lowestlatency $latency
        :set lowestlatencyserver $server
    }
}

# Output the server with the lowest latency
:put ("Server with lowest latency: $lowestlatencyserver with latency $lowestlatency ms")