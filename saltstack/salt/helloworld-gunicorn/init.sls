/etc/systemd/system/gunicorn.service:
  file.managed:
    - source: salt://helloworld-gunicorn/gunicorn.service
    - user: root
    - group: root
    - mode: 755
    - template: jinja

/etc/systemd/system/gunicorn.socket:
  file.managed:
    - source: salt://helloworld-gunicorn/gunicorn.socket
    - user: root
    - group: root
    - mode: 755
    - template: jinja

gunicorn:
  service.running:
    - enable: True
    - watch: 
      - file: /etc/systemd/system/gunicorn.service
      - git: flask-hello-world

httpd_can_network_connect:
  selinux.boolean:
    - value: True
    - persist: True
