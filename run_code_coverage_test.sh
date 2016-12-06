export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/dist-packages:/usr/local/lib/python2.7/dist-packages

. ~/.virtualenvs/python2.7/bin/activate

# PYTHONPATH=. python -m coverage run test.py

python -m coverage run test.py

python -m coverage xml -o coverage.xml
python -m coverage html -d coverage
