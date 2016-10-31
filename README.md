# Bookmill
# Proposal
This is a book milling application or website.


#BookMining

This individual project is to develop a mashup-based application or app by integrating Web APIs. 
 
#Introduction

I got the inspiration when I was looking up originals to improve my English. Nowadays a growing number of English-learners tend to read original books not only for handling examination, also for interests. Pitifully there has no specified website or application providing such sources or simply recommendation.  So I aim to develop a simple app called “BookMining”. It’s also possible that I might change another name later on. :p

#Specifications

Get recommendations from New York Times Best-sellers and USA Today Best-Selling Books ( or others )
Link with Douban Book Reviews, which is in Chinese, so that readers can quickly decide which book they prefer
Detailed information, such as ISBN, author name, labels, etc
Keyword searching
Price information, which I decide only display the price of ebook

#APIs

USA Today Best-Selling Books API ( XML )

New York Times Best Sellers API (JSON)

Google Books API

豆瓣Api V2 ( JSON )

Luzme API (XML)

feedbooks  free e-book
http://www.feedbooks.com/api

GoodReads
https://www.goodreads.com/api
book.show_by_isbn   —   Get the reviews for a book given an ISBN
Get the reviews for a book given an ISBN
Get an xml or json response that contains embed code for the iframe reviews widget that shows excerpts (first 300 characters) of the most popular reviews of a book for a given ISBN. The reviews are from all known editions of the book. 
URL: https://www.goodreads.com/book/isbn/ISBN?format=FORMAT    (sample url) 
HTTP method: GET 
Parameters: 
format: xml or json
callback: function to wrap JSON response if format=json
key: Developer key (required only for XML).
user_id: USER_ID (required only for JSON)
isbn: The ISBN of the book to lookup.
rating: Show only reviews with a particular rating (optional)

Example code for using json with callback:

            <script type="text/javascript">
            function myCallback(result) {
              alert('nb of reviews for book: ' + result.reviews.length);
            }
            var scriptTag = document.createElement('script');
            scriptTag.src = "https://www.goodreads.com/book/isbn/0441172717?callback=myCallback&format=json&user_id=USER_ID";
            document.getElementsByTagName('head')[0].appendChild(scriptTag);
            </script>
key: UOiW7hPGIzrS2aZttMlz2g


#豆瓣数据结构 通过isbn获取数据
get view-source:https://api.douban.com/v2/book/isbn/7505715666

{
	“rating":{
		“max":10,"numRaters":11024,"average":"9.2","min":0
		},
	“subtitle":"",
	“author":[
		“（法）圣埃克苏佩里"
		],
	“pubdate":"2000-9-1",
	“tags":[
		{“count":2864,"name":"小王子","title":"小王子"},
		{“count":2281,"name":"童话","title":"童话"},
		{“count":1398,"name":"圣埃克苏佩里","title":"圣埃克苏佩里"},
		{“count":1053,"name":"法国","title":"法国"},
		{“count":818,"name":"经典","title":"经典"},
		{“count":719,"name":"外国文学","title":"外国文学"},
		{“count":599,"name":"感动","title":"感动"},
		{“count":453,"name":"寓言","title":"寓言"}
		],
	“origin_title":"",
	“image":"https://img3.doubanio.com\/mpic\/s3294754.jpg",
	“binding":"平装",
	“translator":["胡雨苏"],
	“catalog":"序言：法兰西玫瑰\n小王子\n圣埃克苏佩里年表\n",
	“pages":"111",
	“images":{"small":"https://img3.doubanio.com\/spic\/s3294754.jpg",
	“large":"https://img3.doubanio.com\/lpic\/s3294754.jpg",
	“medium":"https://img3.doubanio.com\/mpic\/s3294754.jpg"},
	“alt":"https:\/\/book.douban.com\/subject\/1003078\/",
	“id":"1003078",
	“publisher":"中国友谊出版公司",
	“isbn10":"7505715666",
	“isbn13":"9787505715660",
	“title":"小王子",
	“url":"https:\/\/api.douban.com\/v2\/book\/1003078",
	“alt_title”:””,
	”author_intro”:”圣埃克苏佩里（1900－1944）1900年，.......。”,
	"summary":"小王子驾到！大家好，我是小王子，生活在B612星球，别看我是王子出生，我要做的事也不少，有时给花浇水，"
	“price":"19.8"
}

