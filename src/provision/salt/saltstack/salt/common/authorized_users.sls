# Example how can you include config.yaml in your provision scripts
{% import_yaml '/vagrant/config.yaml' as configs %}

common_authorized_users:
    user.present:
      - name: {{ configs.ssh_user }}

    ssh_auth.present:
      - user: {{ configs.ssh_user }}
      - names:
        - {{ configs.ssh_key }}
      - config: /%h/.ssh/authorized_keys

"/etc/sudoers.d/{{ configs.ssh_user }}":
      file.managed:
        - name: /etc/sudoers.d/{{ configs.ssh_user }}
        - mode: 440

"/etc/sudoers.d/{{ configs.ssh_user }}_append":
  file.append:
    - name: /etc/sudoers.d/{{ configs.ssh_user }}
    - text:
      - "{{ configs.ssh_user }} ALL=(ALL) NOPASSWD: ALL"
