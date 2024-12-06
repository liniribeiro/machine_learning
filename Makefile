create_new_venv:
	python3 -m venv venv_mlini

activate_venv:
	source venv_mlini/bin/activate

install_kernel:
	python -m ipykernel install --user --name venv_mlini --display-name 'venv_mlini_kernel'

install_requirements:
	pip3 install -r requirements.txt

enable_jupyter_extension:
	jupyter nbextension enable --py widgetsnbextension
