import bs4 as bs
import urllib.request
import fileinput

source = urllib.request.urlopen('https://www.edx.org/subjects').read()
soup = bs.BeautifulSoup(source,'lxml')

subject_block = soup.find(name="div", attrs={"id": "block-views-subjects-all"})

filename = "EDX.csv"
f = open(filename, "w")

all_subjects = subject_block.find(name="ul", attrs={"class": "subject-list"})

for link in all_subjects.find_all('a'):
	subject = link.text.rstrip()

	f.write(subject + '\n')

