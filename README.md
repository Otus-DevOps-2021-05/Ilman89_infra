Distributor ID: Ubuntu
Description:    Ubuntu 18.04.5 LTS
Release:        18.04
Codename:       bionic
db version v3.6.3
git version: 9586e557d54ef70f9ca4b43c26892cd55257e1a5
OpenSSL version: OpenSSL 1.1.1  11 Sep 2018
allocator: tcmalloc
modules: none
build environment:
    distarch: x86_64
    target_arch: x86_64
bastion_IP = 84.201.158.121
someinternalhost_IP = 10.128.0.16

yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=startup_script.sh \
  --ssh-key ~/.ssh/appuser.pub

testapp_IP = 178.154.206.76
testapp_port = 9292

Packer 
1)Install;
2)Create bake;
3)deploy ip = 84.201.135.216 port = 9292;
4)pullrequest

Ansible-1
Make inventory
Invenory.yml
Ansible_playbook

Ansible-2
One playbook
Multiply
Many
