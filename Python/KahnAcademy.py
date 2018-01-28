import bs4 as bs
import urllib.request
import fileinput

source = urllib.request.urlopen('https://www.khanacademy.org/').read()
soup = bs.BeautifulSoup(source,'lxml')

filename = "Kahn.csv"
f = open(filename, "w")

for link in soup.find_all('a'):


	f.write(link.get('href') + '\n')