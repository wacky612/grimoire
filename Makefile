.PHONY: area6 node304

area6:
	ansible-playbook -K --diff area6.yml

node304:
	ansible-playbook -K --diff node304.yml
