BOBS := $(patsubst %.bob,%.svg,$(wildcard *.bob))

all: $(BOBS)

%.svg: %.bob
	svgbob < $< > $@

clean:
	$(RM) $(BOBS)

rebuild: clean all
