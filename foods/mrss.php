<?php

	include_once("includes/func/rss.inc.php");
	
	$myFeed	=	new RSSFeed();
	$myFeed->addChannel("XML.com",
						"XML.com features a rich mix of information and services for the XML community.",
						"en",
						"http://www.xml.com/xml/news.rss");
						
	$myFeed->addChannelImage("http://xml.com/universal/images/xml_tiny.gif","xml.com","http://www.xml.com");				
	$myFeed->addChannelLink("http://www.myurl.com");

	$myFeed->addFeedItem(	"Processing Inclusions with XSLT",
							"http://xml.com/pub/2000/08/09/xslt/xslt.html",
							"Processing document inclusions with general XML tools can be problematic. This article proposes a way of preserving inclusion information through SAX-based processing.");
							
	$myFeed->addFeedItem(	"Putting RDF to Work",
							"http://xml.com/pub/2000/08/09/rdfdb/index.html",
							"Tool and API support for the Resource Description Framework is slowly coming of age. Edd Dumbill takes a look at RDFDB, one of the most exciting new RDF toolkits.");
							
	$myFeed->releaseFeed();
?>