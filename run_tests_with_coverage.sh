#!/usr/bin/env bash

export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/dist-packages:/usr/local/lib/python2.7/dist-packages

. ~/.virtualenvs/python2.7/bin/activate

rm -rf pep8.log pyflakes.log python_tests_xml

PYTHONPATH=. python -m coverage run test.py

python -m coverage xml -o coverage.xml
python -m coverage html -d coverage

./test.py

pep8 --max-line-length=120 pystache > pep8.log || true
pyflakes pystache > pyflakes.log || true
