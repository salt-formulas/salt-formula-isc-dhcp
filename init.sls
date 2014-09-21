
include:
{%- if pillar.isc_dhcp.server.enabled %}
- isc_dhcp.server
{%- endif %}
