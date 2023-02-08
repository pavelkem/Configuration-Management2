ansible -i ./ans_hosts web -m file -a "dest=~/opsschool mode=755 state=directory"
ansible -i ./ans_hosts web -m file -a "dest=~/opsschool/ansible mode=755 state=directory"
ansible -i ./ans_hosts web -m file -a "dest=/etc/opsschool mode=755 state=directory" -become

ansible -i ./ans_hosts web -m user -a "name=opsschool home=/opsschool state=present" -become