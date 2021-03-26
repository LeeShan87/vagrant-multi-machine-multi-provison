{% import_yaml '/vagrant/config.yaml' as configs %}

common_authorized_users:
    ssh_auth.present:
      - user: {{ configs.ssh_user }}
      - names:
        - {{ configs.ssh_key }}
      - config: /%h/.ssh/authorized_keys