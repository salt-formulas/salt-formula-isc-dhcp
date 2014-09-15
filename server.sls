{%- from "isc_dhcp/map.jinja" import server with context %}
{%- if server.enabled %}

isc_dhcp_packages:
  pkg.installed:
  - pkgs: {{ server.pkgs }}

{{ server.config.defaults_config }}:
  file.managed:
  - makedirs: True
  - source: 'salt://isc_dhcp/files/defaults.{{ salt['grains.get']('os_family')) }}'
  - template: jinja
  - mode: 644
  - require:
   - pkg: isc_dhcp_packages
  - watch_in:
    - service: isc_dhcp_service

{%- if server.dhcpd_config is defined %}

{{ server.config.dhcpd.path }}:
  file.managed:
  - source: salt://isc_dhcp/files/dhcpd.conf
  - template: jinja
  - mode: 644
  - require:
    - pkg: isc_dhcp_packages
  - watch_in:
    - service: isc_dhcp_service

{%- endif %}

{%- if server.hosts_config is defined %}

{{ server.hosts_config }}:
  file.managed:
  - source: salt://isc_dhcp/files/dhcpd.hosts
  - template: jinja
  - mode: 644
  - require:
    - pkg: isc_dhcp_packages
  - watch_in:
    - service: isc_dhcp_service

{%- endif %}

{%- if server.subnets_config is defined %}

{{ server.subnets_config }}:
  file.managed:
  - source: salt://isc_dhcp/files/dhcpd.subnets
  - template: jinja
  - mode: 644
  - require:
    - pkg: isc_dhcp_packages
  - watch_in:
    - service: isc_dhcp_service

{%- endif %}

isc_dhcp_service:
  service.running:
  - name: {{ server.service }}
  - enable: true

{%- endif %}