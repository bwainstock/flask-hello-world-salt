nginx:
  pkg.installed: []
  service.running:
    - enable: True
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://helloworld-nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
