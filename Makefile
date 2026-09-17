PAGES = index papers grants services
HTML  = $(addsuffix .html, $(PAGES))
CONF  = mysite.conf
MENU  = MENU

.PHONY: all
all: $(HTML)

%.html: %.jemdoc $(CONF) $(MENU) jemdoc
	python3 ./jemdoc -c $(CONF) $<

.PHONY: clean
clean:
	rm -f $(HTML)
