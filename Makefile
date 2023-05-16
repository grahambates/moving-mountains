PROG=mountains
TIC=/Applications/tic80.app/Contents/MacOS/tic80
TICOPTS=--skip --fs=.
PAK=pakettic
TICTOOL=tic-tool
ALG=dlas
LEVEL=3
TARGET=256
PAKOPTS=-z$(LEVEL) -a$(ALG) -p -ccode --target-size=$(TARGET)

dist: $(PROG).tic

run:
	$(TIC) $(TICOPTS) $(PROG).lua

run-dist: dist
	$(TIC) $(TICOPTS) $(PROG).tic

analyze:
	$(TICTOOL) analyze $(PROG).tic

$(PROG).tic: $(PROG).lua
	$(PAK) $(PAKOPTS) $< -o $@

clean:
	$(RM) $(PROG).tic

.PHONY: run dist run-dist clean
