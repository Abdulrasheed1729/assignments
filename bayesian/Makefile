PROJECTNAME = main
BUILDDIR = build

.PHONY: all clean beamer

all: $(BUILDDIR)/$(PROJECTNAME).pdf

$(BUILDDIR)/$(PROJECTNAME).pdf: $(PROJECTNAME).tex
	mkdir -p $(BUILDDIR)
	latexmk -pdf -synctex=1 -verbose -shell-escape -bibtex -pvc -interaction=nonstopmode -file-line-error -output-directory=$(BUILDDIR) $<

clean:
	latexmk -output-directory=$(BUILDDIR) -c
	-rm -rf $(BUILDDIR)

## For dev
beamer:
	latexmk tex/beamer.tex -bibtex -pvc -f