haproxy:
  pkg.installed: []
  service.running:
    - enable: True
    - watch:
      - file: /etc/haproxy/haproxy.cfg

/etc/haproxy/haproxy.cfg:
  file.managed:
    - source: salt://helloworld-haproxy/config
    - template: jinja
