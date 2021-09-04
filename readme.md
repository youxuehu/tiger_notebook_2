#### 打包whl

    python setup.py bdist_wheel --universal

#### 安装whl

    python install xxx.whl --force-reinstall

#### 发布命令

    python setup.py sdist bdist_wheel upload -r pypi

#### 安装命令

    pip install aistudio_notebook==1.1 -i https://pypi.python.org/pypi

#### Dockerfile build

    docker build . -t docker-image/miniconda:tiger_dev20210818
    
#### Dockerfile run

    docker run -p 8888:8888 --restart always -it -d docker-image/miniconda:tiger_dev20210818
    
    
    jupyter notebook --allow-root
    jupyter notebook --generate-config
    
    c.NotebookApp.ip="*"
    