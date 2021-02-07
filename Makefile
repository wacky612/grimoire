export PATH := .venv/bin:$(PATH)

.PHONY: prepare area6

prepare: .venv

.venv:
	python -m venv .venv
	pip install ansible

area6:
	ansible-playbook -K --diff area6.yml

node304:
	ansible-playbook -K --diff node304.yml
