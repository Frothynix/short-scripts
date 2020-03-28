#!/usr/bin/env python3
from bs4 import BeautifulSoup
import requests
import re

website = requests.get('https://www.worldometers.info/coronavirus/').text
soup = BeautifulSoup(website, features="html.parser")

stats = soup.title.contents[0]

print(stats)
