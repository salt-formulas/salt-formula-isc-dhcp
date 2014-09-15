
# ISC DHCP server


## Sample pillars

ISC DHCP server

    isc_dhcp:
      server:
        enabled: true
        interfaces:
        - name: eth0
        - name: eth1

## Read more

* http://chschneider.eu/linux/server/tftpd-hpa.shtml