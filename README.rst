
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

Documentation and Bugs
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use Github issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-isc-dhcp/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

You can also join salt-formulas-users team and subscribe to mailing list:

    https://launchpad.net/~salt-formulas-users

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

    https://github.com/salt-formulas/salt-formula-isc-dhcp

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net
