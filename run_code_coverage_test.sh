export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/dist-packages:/usr/local/lib/python2.7/dist-packages

. ~/.virtualenvs/python2.7/bin/activate

rm -f coverage.xml coverage clover.xml
# PYTHONPATH=. python -m coverage run test.py
python -m coverage run test.py

python -m coverage xml -o coverage.xml
# python -m coverage html -d coverage

cobertura-clover-transform coverage.xml > clover.xml
