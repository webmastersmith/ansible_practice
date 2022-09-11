# ansible_practice
docker build -t ubuntu1 .
docker run -it --rm -dp 8080:80 -p 22:22 --name bob test1 /bin/bash
ssh -i .ssh/id_rsa root@localhost
ansible-playbook playbook.yaml

docker stop bob