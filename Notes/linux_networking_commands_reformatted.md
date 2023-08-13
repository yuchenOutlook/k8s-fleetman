
# Top 20 Linux Networking Commands

#### 1. `ifconfig`
Display or configure network interfaces.

```bash
# Display information about all network interfaces
ifconfig

# Display information about a specific network interface (e.g., eth0)
ifconfig eth0

# Set a new IP address for a network interface
sudo ifconfig eth0 192.168.1.10
```

#### 2. `ping`
Send ICMP ECHO_REQUEST packets to network hosts.

```bash
# Ping a host to check connectivity
ping example.com

# Ping a host and send only 4 packets
ping -c 4 example.com
```

#### 3. `netstat`
Print network connections, routing tables, interface statistics, etc.

```bash
# List all open ports
netstat -tuln

# Display active TCP connections
netstat -t

# Display routing table
netstat -r
```

#### 4. `route`
Show or manipulate the IP routing table.

```bash
# Display the routing table
route -n

# Add a new route
sudo route add -net 192.168.1.0 netmask 255.255.255.0 gw 192.168.1.1
```

#### 5. `nslookup`
Query domain name servers.

```bash
# Query the IP address of a domain
nslookup example.com

# Query the mail exchange records for a domain
nslookup -query=mx example.com
```

#### 6. `dig`
DNS lookup utility.

```bash
# Perform a standard DNS lookup on a domain
dig example.com

# Query the name servers for a domain
dig example.com NS
```

#### 7. `traceroute`
Print the route packets trace to a network host.

```bash
# Trace the route to a specific host
traceroute example.com
```

#### 8. `telnet`
Communicate with another host using the TELNET protocol.

```bash
# Connect to a remote host on a specific port
telnet example.com 80
```

#### 9. `ssh`
OpenSSH SSH client (remote login program).

```bash
# SSH into a remote server
ssh username@remote_server

# SSH into a remote server using a specific port
ssh -p 2222 username@remote_server
```

#### 10. `scp`
Secure copy (remote file copy program).

```bash
# Copy a file to a remote server
scp file.txt username@remote_server:/path/to/destination/

# Copy a file from a remote server to the local machine
scp username@remote_server:/path/to/file.txt /local/destination/
```

#### 11. `wget`
Retrieve files from the web.

```bash
# Download a file from the web
wget http://example.com/file.zip

# Download a file and save it with a different name
wget -O newname.zip http://example.com/file.zip
```

#### 12. `curl`
Transfer data from or to a server.

```bash
# Fetch the content of a webpage
curl http://example.com

# Send a POST request with data
curl -X POST -d "key=value" http://example.com/post_endpoint
```

#### 13. `iptables`
Administer IP packet filter rules.

```bash
# List all rules in the filter table
sudo iptables -L

# Block all incoming traffic from a specific IP address
sudo iptables -A INPUT -s 192.168.1.10 -j DROP
```

#### 14. `hostname`
Show or set the system's hostname.

```bash
# Display the system's hostname
hostname

# Set the system's hostname to "newhostname"
sudo hostname newhostname
```

#### 15. `arp`
Manipulate the system ARP cache.

```bash
# Display the ARP cache
arp -n
```

#### 16. `iwconfig`
Configure a wireless network interface.

```bash
# Display information about all wireless interfaces
iwconfig
```

#### 17. `nmap`
Network exploration tool and security scanner.

```bash
# Scan a specific host
nmap example.com

# Scan a range of IPs
nmap 192.168.1.1-100
```

#### 18. `tcpdump`
Capture or filter network packets.

```bash
# Capture packets on a specific interface (e.g., eth0)
sudo tcpdump -i eth0

# Capture packets and save them to a file
sudo tcpdump -w /path/to/file.pcap
```

#### 19. `nc`
Arbitrary TCP and UDP connections and listens.

```bash
# Listen on a specific port (e.g., 1234)
nc -l 1234

# Connect to a remote server on a specific port
nc example.com 80
```

#### 20. `host`
DNS lookup utility.

```bash
# Find the IP address of a domain
host example.com
```
