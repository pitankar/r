# Set the Path of latex here
LATEX=pdflatex

all: *.tex
	@echo "Building the Resume ..."
	@$(LATEX) -synctex=1 -interaction=nonstopmode pi.tex >/dev/null
	@rm -rf *.log *.aux *.out *.gz
	@echo "Done! :)"

clean:
	@echo "Cleaning the Source ..."
	@rm -rf *.log *.aux *.pdf *.out *.gz
	@echo "Done! :)"
