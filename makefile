default:
	cat makefile

.SILENT:

clean:
	rm 1065.txt.utf-8 raven_lines.txt number_of_*.txt 
	echo "All cleaned up"

all:	pg1065.txt raven_lines.txt number_of_Raven.txt number_of_RAVEN.txt number_of_raven.txt 
	echo "Number of lines of Raven is = "
	cat number_of_Raven.txt
	echo "Number of lines of RAVEN is = "
	cat number_of_RAVEN.txt
	echo "Number of lines of raven is = "
	cat number_of_raven.txt

.PHONY: process_raven


pg1065.txt:
	wget https://www.gutenberg.org/ebooks/1065.txt.utf-8

raven_lines.txt:
	grep -i 'raven' 1065.txt.utf-8 > raven_lines.txt
	echo "created raven_lines.txt file"

number_of_Raven.txt:
	grep 'Raven' raven_lines.txt | wc -l > number_of_Raven.txt

number_of_RAVEN.txt:
	grep 'RAVEN' raven_lines.txt | wc -l > number_of_RAVEN.txt

number_of_raven.txt:
	grep 'raven' raven_lines.txt | wc -l > number_of_raven.txt

process_raven:
	wget https://www.gutenberg.org/ebooks/1065.txt.utf-8 
	echo "copied the 1065 Raven text file" 
