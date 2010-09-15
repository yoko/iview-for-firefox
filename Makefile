XPIFILE=iview.xpi
SRC=content/iview.js content/iview.html
all:iview.xpi


$(XPIFILE): $(SRC) install.rdf
	zip -r $(XPIFILE) install.rdf chrome.manifest  content/*

clean:
	rm $(XPIFILE)
