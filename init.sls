
include:
{%- if pillar.isc_dhcp.server.enabled %}
- isc_dhcp.server
{%- endif %}
{%- if pillar.isc_dhcp.smart_proxy.enabled %}
- isc_dhcp.smart_proxy
{%- endif %}
