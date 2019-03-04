import bs4
from bs4 import BeautifulSoup as soup
from urllib.request import urlopen as uReq
import re

my_url = "https://www.vpnbook.com/"
Client = uReq(my_url)

html_page = Client.read()
Client.close()


soup_page = soup(html_page,"html.parser")
#name =soup_page.find_all('strong')

collectid = soup_page.find(id="openvpn")

'''
name = collectid.find_all("strong")
listnames = []
for name1 in name:
    listnames.append(name1) 

print(listnames[-2])
#print(collectid.prettify())
'''

name = collectid.find_all("img")
text = str(name)
text=re.findall(r'"([^"]*)"', text)
url1 ="https://www.vpnbook.com/" + text[0]
print(url1)
