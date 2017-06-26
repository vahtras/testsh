index.html: talk.md
	python refreeze/freeze.py

test:
	python -m doctest talk.md

RANDOM_PORT=`python -c 'import random; print(int(5000+ 5000*random.random()))'`

slideshow:
	PORT=$(RANDOM_PORT) python refreeze/flask_app.py
