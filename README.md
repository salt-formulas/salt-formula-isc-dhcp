
# ISC DHCP server


## Sample pillars

ISC DHCP server

    isc_dhcp:
      server:
        enabled: true
        omapi_port: 7911
        authoritative: true
        interfaces:
        - name: eth0
        - name: eth1
        domain_name: domain.com
        name_servers:
        - ns1.domain.com
        host:
          node1:
            mac: 00:11:22:33:44:55:66
            address: 192.168.0.1
            hostname: domain.com

## Read more

* http://chschneider.eu/linux/server/tftpd-hpa.shtml