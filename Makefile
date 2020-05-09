NAME := UNiQuE-3.18-X00P

DATE := $(shell date "+%Y%m%d-%H%M")

ZIP := $(NAME)-$(DATE).zip

EXCLUDE := Makefile *.git* *.jar* *placeholder* *.md*

normal: $(ZIP)

$(ZIP):
	echo "Creating ZIP: $(ZIP)"
	zip -r9 "$@" . -x $(EXCLUDE)
	echo "Done creating ZIP: $(ZIP)"


clean:
	rm -vf *.zip*
	rm -vf *.gz-dtb
	rm -vf modules/vendor/lib/modules/*.ko
	echo "Cleaning Done."


