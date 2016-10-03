git: git
python: python34
virtualenv:
{% if grains['os'] == 'CentOS' %}
  python-virtualenv
{% elif grains['os'] == 'RedHat' %}
  python-virtualenv
{% elif grains['os'] == 'Amazon' %}
  python34-virtualenv
{% endif %}
