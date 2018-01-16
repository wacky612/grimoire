export PATH := .venv/bin:$(PATH)

.PHONY: prepare area6 x201

prepare: .venv

.venv:
	python -m venv .venv
	pip install ansible

area6:
	ansible-playbook -K area6.yml

x201:
	ansible-playbook -K x201.yml
