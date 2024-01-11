Last 50 lines of the output from my deployment command:

```
ok: [89.208.223.22]

TASK [geerlingguy.docker : Ensure handlers are notified now to avoid firewall conflicts.] ***

TASK [geerlingguy.docker : include_tasks] **************************************
skipping: [89.208.223.22]

TASK [geerlingguy.docker : Get docker group info using getent.] ****************
skipping: [89.208.223.22]

TASK [geerlingguy.docker : Check if there are any users to add to the docker group.] ***
skipping: [89.208.223.22]

TASK [geerlingguy.docker : include_tasks] **************************************
skipping: [89.208.223.22]

TASK [docker : include_tasks] **************************************************
included: /home/acceptasis/devops/core-course-labs/ansible/roles/docker/tasks/install_compose.yml for 89.208.223.22

TASK [geerlingguy.pip : Get python3 version installed] *************************
skipping: [89.208.223.22]

TASK [geerlingguy.pip : Remove EXTERNALLY-MANAGED] *****************************
skipping: [89.208.223.22]

TASK [geerlingguy.pip : Ensure Pip is installed.] ******************************
ok: [89.208.223.22]

TASK [geerlingguy.pip : Ensure pip_install_packages are installed.] ************
ok: [89.208.223.22] => (item={'name': 'docker==6.1.3'})
ok: [89.208.223.22] => (item={'name': 'docker-compose'})

TASK [web_app : Install application] *******************************************
included: /home/acceptasis/devops/core-course-labs/ansible/roles/web_app/tasks/run.yml for 89.208.223.22

TASK [web_app : Create a directory if it does not exist] ***********************
changed: [89.208.223.22]

TASK [web_app : Create docker-compose] *****************************************
changed: [89.208.223.22]

TASK [web_app : Run app] *******************************************************
changed: [89.208.223.22]

TASK [web_app : Wipe appliction] ***********************************************
skipping: [89.208.223.22]

PLAY RECAP *********************************************************************
89.208.223.22              : ok=19   changed=4    unreachable=0    failed=0    skipped=16   rescued=0    ignored=0   
```
