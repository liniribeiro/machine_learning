
venv_name = venv_mlini3
root_dir = $(CURDIR)


test:
	echo $(root_dir)

create_new_venv:
	cd $(root_dir) && python3 -m venv $(venv_name)

activate_venv:
	cd $(root_dir) && source $(venv_name)/bin/activate


install_requirements:
	cd $(root_dir) && pip3 install -r requirements.txt

install_kernel:
	cd $(root_dir) && python -m ipykernel install --user --name $(venv_name) --display-name $(venv_name)


new_venv:
	make create_new_venv
	make activate_venv
	make install_requirements
	make install_kernel

