# libvirtd

Installs libvirtd kvm 

## Sample playbook

```
- hosts: libvirtd
  become: true
  remote_user: ansible
  gather_facts: no
  roles:
    - libvirtd
```

See defaults/main.yml to add users to group libvirt
