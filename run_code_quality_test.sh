#!/usr/bin/env bash

export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/dist-packages:/usr/local/lib/python2.7/dist-packages

. ~/.virtualenvs/python2.7/bin/activate

rm -rf pep8.log pyflakes.log

pep8 --max-line-length=120 pystache > pep8.log || true
pyflakes pystache > pyflakes.log || true
