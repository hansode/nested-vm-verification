SHELL=/bin/bash

TARGETS=build reload clean status

all: $(TARGETS)

build:
	time vagrant up --provider vmware_workstation

reload:
	time vagrant reload

clean:
	time vagrant destroy -f

status:
	vagrant status

.PHONY: $(TARGETS)
