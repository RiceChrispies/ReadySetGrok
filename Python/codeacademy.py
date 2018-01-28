import bs4 as bs
import urllib.request
import fileinput
import re

source = urllib.request.urlopen('https://www.codecademy.com/learn/all').read()
soup = bs.BeautifulSoup(source,'lxml')

subject_block = soup.find(name="div", attrs={"class": "react-root"})

#Doesn't work yet
#all_subjects = subject_block.find(name="div", attrs={"data-reactid": ^\d$ })
#print(all_subjects)
