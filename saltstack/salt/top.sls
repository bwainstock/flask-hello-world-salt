base:
  '*':
    - common

  'web*':
    - app
    - gunicorn
    - nginx

  'haproxy*':
    - haproxy
