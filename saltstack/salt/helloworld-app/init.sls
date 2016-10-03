git-python34-installed:
  pkg.installed: 
    - pkgs:
      - git
      - python34
      - python-virtualenv

flask-hello-world:
  git.latest:
    - name: https://github.com/bwainstock/flask-hello-world.git
    - target: {{ pillar['app_dir'] }}
    - force_reset: True
    - require:
      - pkg: git-python34-installed

/usr/share/nginx/app/env:
  virtualenv.managed:
    - requirements: {{ pillar['app_dir'] }}/requirements.txt
    - python: python3
    - require:
      - pkg: git-python34-installed

{{ pillar['app_dir'] }}:
  file.directory:
    - user: nginx
    - group: nginx
    - require:
      - git: flask-hello-world
      - pkg: nginx
