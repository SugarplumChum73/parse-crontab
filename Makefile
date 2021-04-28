SHELL=/bin/bash

clean:
	-rm -f *.pyc crontab/*.pyc README.html MANIFEST
	-rm -rf build dist

install:
	python setup.py install

test:
	python2.6 -m tests.test_crontab
	python2.7 -m tests.test_crontab
	python3.3 -m tests.test_crontab
	python3.4 -m tests.test_crontab
	python3.5 -m tests.test_crontab
	python3.6 -m tests.test_crontab
	python3.7 -m tests.test_crontab
	python3.8 -m tests.test_crontab
	python3.9 -m tests.test_crontab

upload:
	python3.6 setup.py sdist upload
