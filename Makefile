all:
	wget https://github.com/Laidout/laidout/releases/download/0.096/laidout-ubuntu14.04_0.096_amd64.deb
	dpkg -x laidout-ubuntu14.04_0.096_amd64.deb .

install:
	find .
	cp -a usr $(DESTDIR)
	install -m755 wrapper.sh $(DESTDIR)
	(cd $(DESTDIR)/usr/lib/; ln -s libGraphicsMagick++-Q16.so.12 libGraphicsMagick++.so.3)
