## Before you begin

I've decided to go more visual about exploring the dataset and presenting findings. To reproduce the results I prepared Docker environment ready to run with a single command. Sorry but I didn't optimize the image so it's quite heavy. The image is based on Tensorflow with Jupyter.

The following commands will build an image then start a container (with --rm and 8888 port).

```
make build
make run
```

Then please open a page `http://your_docker_ip:8888/notebooks/notebooks/overview.ipynb` and navigate the notebooks.