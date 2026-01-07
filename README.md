# REANA Environment Jupyter

[![image](https://github.com/reanahub/reana-env-jupyter/workflows/CI/badge.svg)](https://github.com/reanahub/reana-env-jupyter/actions)
[![image](https://img.shields.io/badge/discourse-forum-blue.svg)](https://forum.reana.io)
[![image](https://img.shields.io/github/license/reanahub/reana-env-jupyter.svg)](https://github.com/reanahub/reana-env-jupyter/blob/master/LICENSE)

## About

`reana-env-jupyter` provides a container image with encapsulated runtime execution
environment for [Jupyter](https://jupyter.org/) notebook based data analyses. It is
basically an example how a user could encapsulate a notebook environment using Jupyter
notebooks with IPython kernel running on Ubuntu 24.04 platform. The container also
provides several convenient Python packages such as [Pandas](https://pandas.pydata.org/)
data analysis library or [Papermill](https://github.com/nteract/papermill) notebook
parametrisation and execution utility.

`reana-env-jupyter` was developed for use in the [REANA](http://www.reana.io/) reusable
and reproducible research data analysis platform.

## Usage

You can use `reana-env-jupyter` provided "as is" and simply mount your own Python code
and notebooks to the running container.

Alternatively, you can also use `reana-env-jupyter` as a base image for notebook-based
analyses. Just start your `Dockerfile` from this base image and add your own custom code
on top:

```
FROM docker.io/reanahub/reana-env-jupyter
ADD my-notebook.ipynb /code/
[...]
```

Here are several complete examples on how to use `reana-env-jupyter` environment in your
analyses:

- [reana-demo-worldpopulation](https://github.com/reanahub/reana-demo-worldpopulation)

## Development

If you would like to contribute to `reana-env-jupyter` development, you can take
advantage of the provided `Makefile`:

```
$ make build  # build a new version of the container image
$ make test   # test the built image
$ make push   # push it to Docker Hub
```

## More information

For more information about the REANA reusable analysis platform, please see the
[REANA project](http://www.reana.io) home page and the general
[REANA documentation](http://reana.readthedocs.io/) pages.
