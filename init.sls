
include:
{%- if pillar.foreman.server.enabled %}
- foreman.server
{%- endif %}
{%- if pillar.foreman.smart_proxy.enabled %}
- foreman.smart_proxy
{%- endif %}
