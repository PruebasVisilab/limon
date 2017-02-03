#!/usr/bin/make -f
# -*- mode:makefile -*-

help:
	echo "make help       	- Imprime esta ayuda"
	echo "make push       	- Sube cambios al repositorio"
	echo "make pull	      	- Actualiza el repositorio"
	echo "make credentials	- Guarda las credenciales de git"

push: clean
	git add * -f
	git commit -m "Commit desde Makefile"
	git push origin master

pull:
	git pull

credentials:
	git config --global credential.helper 'cache --timeout 3600'

clean:
	$(RM) *~
