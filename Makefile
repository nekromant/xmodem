tests:
	PYTHONPATH=. python test/test.py test/test.py
	PYTHONPATH=. python test/test-recv.py
	PYTHONPATH=. python test/test-send.py

upload:
	python setup.py sdist bdist bdist_egg bdist_rpm upload
	python setup.py build_sphinx upload_sphinx
