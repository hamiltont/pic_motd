import feedparser
import random
import urllib
import os

def process_image(title, link):
  urllib.urlretrieve(link, "image.jpg")
  with open("title.txt", "w") as fp:
    fp.write(title)
  with open("link.txt", "w") as fp:
    fp.write(link)
  
def process_feed(rss_url):
  print 'Grabbing %s' % rss_url
  feed = feedparser.parse( rss_url )

  total = len(feed["items"])
  print 'Found %s items' % total

  max_tries = total * 2
  current = 0

  while current < max_tries:
    current = current + 1 
    selection = random.randrange(total)
    print 'Trying item %s' % selection
    item = feed["items"][selection]
    
    media = item["media_content"][0]
    if media["type"] != "image/jpeg":
      continue

    print "Found JPEG!"
    process_image(item["title"], media["url"])
    return
 
  raise Exception("Failed to find JPEG")

if __name__ == "__main__":
  process_feed(os.environ.get('IMGUR_RSS', 'http://feeds.feedburner.com/ImgurGallery?format=xml'))
