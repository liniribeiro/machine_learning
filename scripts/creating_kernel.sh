# Install Jupyter
#pip3 install ipykernel==6.29.5


# Create a environment as Jupyter Kernel

python -m ipykernel install --name ml_lini_3 --display-name "ml_lini_3" --prefix /Users/alini/Documents/lini-repo/jupyter_kernels/

# After that, we should add the kernel into pycharm at file > settings> preferences > Python interpreter
# If you didnt found the interpreter, go to the kernel json file and identify the address of the kernel