===========================
 REANA Environment Jupyter
===========================

.. image:: https://img.shields.io/travis/reanahub/reana-env-jupyter.svg
   :target: https://travis-ci.org/reanahub/reana-env-jupyter

.. image:: https://badges.gitter.im/Join%20Chat.svg
   :target: https://gitter.im/reanahub/reana?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge

.. image:: https://img.shields.io/github/license/reanahub/reana-env-jupyter.svg
   :target: https://github.com/reanahub/reana-env-jupyter/blob/master/LICENSE

About
=====

``reana-env-jupyter`` provides a container image with encapsulated runtime
execution environment for `Jupyter <https://jupyter.org/>`_ notebook based data
analyses. It is basically an example how a user could encapsulate a notebook
environment using Jupyter 1.0 notebooks with IPython 5.0 kernel running on
CentOS7 platform. The container also provides several convenient Python packages
such as `Pandas <https://pandas.pydata.org/>`_ data analysis library or
`Papermill <https://github.com/nteract/papermill>`_ notebook parametrisation and
execution uitlity.

``reana-env-jupyter`` was developed for use in the `REANA
<http://www.reana.io/>`_ reusable and reproducible research data analysis
platform.

Usage
=====

You can use ``reana-env-jupyter`` provided "as is" and simply mount your own
Python code and notebooks to the running container.

Alternatively, you can also use ``reana-env-jupyter`` as a base image for
notebook-based analyses. Just start your ``Dockerfile`` from this base image and
add your own custom code on top::

   FROM reanahub/reana-env-jupyter
   ADD my-notebook.ipynb /code/
   [...]

Here are several complete examples on how to use ``reana-env-jupyter``
environment in your analyses:

- `reana-demo-worldpopulation <https://github.com/reanahub/reana-demo-worldpopulation>`_

Development
===========

If you would like to contribute to ``reana-env-jupyter`` development, you can
take advantage of the provided ``Makefile``::

   $ make build  # build a new version of the container image
   $ make test   # test the built image
   $ make push   # push it to Docker Hub

More information
================

For more information about the REANA reusable analysis platform, please see the
`REANA project <http://www.reana.io>`_ home page and the general `REANA
documentation <http://reana.readthedocs.io/>`_ pages.

Contributors
============

The list of contributors in alphabetical order:

- `Tibor Simko <https://orcid.org/0000-0001-7202-5803>`_ <tibor.simko@cern.ch>
