
# ISC DHCP server


## Sample pillars

ISC DHCP server with defined host and subnet (client must use the same key)

.. code-block:: yaml

    isc_dhcp:
      server:
        enabled: true
        omapi_port: 7911
        omapi_key: iFdQ0kvpUo+3gzXGJTpjk7/dl9DI5SuDqMzasDUhBRGEg6VfNYUX+MAU14WoJJZDQbrvC4Pgsdfdsfdsfdsdf==
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
        subnet:
          testsubnet:
            range: 10.0.0.1 10.0.0.100
            netmask: 255.255.255.0
            network: 10.0.0.0
            pxeserver: 10.1.1.1

## Read more

* http://chschneider.eu/linux/server/tftpd-hpa.shtml
