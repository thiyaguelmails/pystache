#!/usr/bin/env bash

. ~/.virtualenvs/python2.7/bin/activate

rm -f pep8.log pyflakes.log

PYTHONPATH=. python -m coverage run test.py

python -m coverage xml -o coverage.xml
python -m coverage html -d coverage

pep8 --max-line-length=120 pystache > pep8.log || true
pyflakes pystache > pyflakes.log || true
