base:
  'helloworld-*':
    - helloworld-common

  'helloworld-web*':
    - helloworld-app
    - helloworld-gunicorn
    - helloworld-nginx

  'helloworld-haproxy*':
    - helloworld-haproxy
