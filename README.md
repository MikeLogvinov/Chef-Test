Software
- Ubuntu Operating System 12
- vagrant_1.6.5_x86_64 (Omnibus plugin)
- Chef Development Kit
- chef-client
- Vertualbox 4.3

Settings
- sudo dpkg -i vagrant_1.6.5_x86_64.deb
- vagrant plugin install vagrant-omnibus
- sudo apt-get install vertualbox-4.3
- vagrant init
- Vagrantfile Editing (https://github.com/MikeLogvinov/Chef-Test)
- vagrant up

Check result user@system:~/chef-repo$curl 127.0.0.1:2222 
Answer "SSH-2.0-OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.3", the virtual machine is running.

Chef
I used https://manage.chef.io/login
- On the server manage.chef.io you should download "starter" and copy it to the "chef-working" directory for the to start action, for example, "chef-repo".
- Go to the working directory user@system:~ cd chef-repo
- Download all necessary "coockbooks" (see https://github.com/MikeLogvinov/Chef-Test) into directory user@system:~ cd chef-repo/cookbooks
- Upload cookbooks "user@system:~/chef-repo$ cookbook upload -a" on the server

Run commands
- user@system:~/chef-repo$ knife role from file ~/chef-repo/roles/Mysql.json
- user@system:~/chef-repo$ knife role from file ~/chef-repo/roles/Jboss.json
- user@system:~/chef-repo$ knife environment from file ~/chef-repo/environments/development.json

Start to configure Mysql
- user@system:~/chef-repo$ knife bootstrap 127.0.0.1:2222 --ssh-user vagrant --ssh-password vagrant --sudo --use-sudo-password --node-name tstsrv --run- list 'role [Mysql]'

Run setup for Jboss
- user@system:~/chef-repo$ knife bootstrap 127.0.0.1:2222 --ssh-user vagrant --ssh-password vagrant --sudo --use-sudo-password --node-name tstsrv --run- list 'role [JBOSS]'

According url http://127.0.0.1:8000/guestbookapp/ should be "guestbookapp" content, in my case, the error "javax.naming.NameNotFoundException: MySqlGBDS not bound"