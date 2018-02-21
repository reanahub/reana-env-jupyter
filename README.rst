===========================
 REANA Environment Jupyter
===========================

.. image:: https://img.shields.io/travis/reanahub/reana-env-jupyter.svg
   :target: https://travis-ci.org/reanahub/reana-env-jupyter

.. image:: https://badges.gitter.im/Join%20Chat.svg
   :target: https://gitter.im/reanahub/reana?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge

.. image:: https://img.shields.io/github/license/reanahub/reana-env-jupyter.svg
   :target: https://github.com/reanahub/reana-env-jupyter/blob/master/COPYING

About
=====

``reana-env-jupyter`` provides a container image with encapsulated runtime
execution environment for `Jupyter <https://jupyter.org/>`_ based data analyses.
It is basically an example how a user could encapsulate a Jupyter execution
environment using Jupyter 1.0 notebooks with IPython 5.0 kernel running on
CentOS7 platform.

``reana-env-jupyter`` was developed for use in the `REANA
<http://reana.readthedocs.io/>`_ reusable research data analysis platform.

Usage
=====

You can use ``reana-env-jupyter`` as a base image for containerising your own
Jupyter-based research data analyses. You can simply start your ``Dockerfile``
from this base image and add your custom code on top::

   FROM reanahub/reana-env-jupyterw
   ADD my-notebook.ipynb /code/
   [...]

Alternatively, you can simply use ``reana-env-jupyter`` provided "as is" and
mount your Jupyter code to the running container.

Examples
========

Here are several complete examples on how to use ``reana-env-jupyter`` environment
in your analyses:

- `reana-demo-worldpopulation <https://github.com/reanahub/reana-demo-worldpopulation>`_

Development
===========

If you would like to contribute to ``reana-env-jupyter`` development, you can
take advantage of provided ``Makefile``::

   $ make build  # build a new version of the container image
   $ make test   # test the built image
   $ make push   # push it to Docker Hub

More information
================

For more information about `REANA <http://reanahub.io/>`_ reusable research data
analysis platform, please see `its documentation
<http://reana.readthedocs.io/>`_.
