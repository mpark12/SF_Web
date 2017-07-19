package main.controller;

import java.net.URLEncoder;
import java.util.List;

import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlAnchor;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;

public class WebScraper {

	public static void main(String[] args) {

		String searchQuery = "basketball";
		String baseUrl = "http://www.adidas.com/us/";
		WebClient client = new WebClient();
		client.getOptions().setCssEnabled(false);
		client.getOptions().setJavaScriptEnabled(false);
		
		try {
			
			String searchUrl = baseUrl + URLEncoder.encode(searchQuery, "UTF-8") + "-shoes";
			HtmlPage page = client.getPage(searchUrl);
			
			List<HtmlElement> items = page.getByXPath("//div[@class='product-tile']");
			if(items.isEmpty()){
				System.out.println("No items found!");
			}else{
				for(HtmlElement htmlItem:items){
					HtmlAnchor itemAnchor = ((HtmlAnchor) htmlItem.getFirstByXPath(".//div[3]/div[4]/div[3]/a"));
					String itemUrl = itemAnchor.getHrefAttribute();
					HtmlElement spanTitle = ((HtmlElement) htmlItem.getFirstByXPath(".//span[@class='title']"));
					HtmlElement spanSubtitle = ((HtmlElement) htmlItem.getFirstByXPath(".//span[@class='subtitle']"));
					HtmlElement spanPrice = ((HtmlElement) htmlItem.getFirstByXPath(".//div[3]/div[4]/div[4]/div[1]/span[@class='salesprice']"));
					//*[@id="product-BY4469"]/div[3]/div[4]/div[4]/div[1]					
					System.out.println(String.format("Name : %s Refine : %s Price : %s Url : %s", spanTitle, spanSubtitle, spanPrice, itemUrl));
				}
			}
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
