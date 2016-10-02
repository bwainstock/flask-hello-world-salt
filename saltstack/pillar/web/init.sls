server:
  server_names:
    - web1
    - web2
    - haproxy

gunicorn:
  config: gunicorn.ini
