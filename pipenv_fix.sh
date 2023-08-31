pipenv_dir=$(pipenv --venv)
python_dir=$(ls $pipenv_dir/lib | head -1)

venv_lib_dir=$pipenv_dir/lib/$python_dir
conda_dir=$(which $python_dir)


echo "Deleting: $venv_lib_dir/lib-dynload/"
rm -rf $venv_lib_dir/lib-dynload/

echo "Creating symlink: ln -s $conda_dir/lib-dynload $venv_lib_dir/lib-dynload"
ln -s $conda_dir/lib-dynload $venv_lib_dir/lib-dynload

echo "Done"
