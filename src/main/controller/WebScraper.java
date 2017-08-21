package main.controller;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlAnchor;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlImage;
import com.gargoylesoftware.htmlunit.html.HtmlPage;

import main.vo.Item;

public class WebScraper {

	public static void main(String[] args) {

		String searchQuery = "basketball";
		String baseUrl = "http://www.adidas.com/us/";
		WebClient client = new WebClient();
		client.getOptions().setCssEnabled(false);
		client.getOptions().setJavaScriptEnabled(false);
				
//		JSONArray itemList = new JSONArray();
		Item item = null;
		ArrayList<Item> itemList = new ArrayList<Item>();
		
		try {
			
			String searchUrl = baseUrl + URLEncoder.encode(searchQuery, "UTF-8") + "-shoes"+"?srule=newest-to-oldest";
			HtmlPage page = client.getPage(searchUrl);
						
			List<HtmlElement> items = page.getByXPath("//div[@class='product-tile']");
			if(items.isEmpty()){
				System.out.println("No items found!");
			}else{
				for(HtmlElement htmlItem:items){
					HtmlAnchor itemAnchor = ((HtmlAnchor) htmlItem.getFirstByXPath(".//div[3]/div[4]/div[3]/a"));
					String itemUrl = itemAnchor.getHrefAttribute();
					HtmlElement spanTitle = ((HtmlElement) htmlItem.getFirstByXPath(".//span[@class='title']"));
					String itemTitle = spanTitle.asText();
					HtmlElement spanSubtitle = ((HtmlElement) htmlItem.getFirstByXPath(".//span[@class='subtitle']"));
					String itemSubtitle = spanSubtitle.asText();
					HtmlElement spanPrice = ((HtmlElement) htmlItem.getFirstByXPath(".//div[3]/div[4]/div[4]/div[1]/span[@class='salesprice']"));
					String itemPrice = spanPrice==null ? "On Sale" : spanPrice.asText();
					HtmlElement imageSrc = ((HtmlElement) htmlItem.getFirstByXPath(".//div[3]/div[3]/a/img"));
					String itemImage = imageSrc.getAttribute("data-original");
				
				//	System.out.println(String.format("Name : %s Refine : %s Price : %s Url : %s", itemTitle, itemSubtitle, itemPrice, itemUrl));
				
					item = new Item();
					item.setTitle(itemTitle);
					item.setSubtitle(itemSubtitle);
					item.setPrice(itemPrice);
					item.setUrl(itemUrl);
					item.setSrc(itemImage);
					
					System.out.println(item.getUrl());
					
					itemList.add(item);
										
//					ObjectMapper mapper = new ObjectMapper();
//					String jsonString = mapper.writeValueAsString(item);
//					
//					System.out.println(jsonString);
//					
//					itemList.put(jsonString);									
					
					
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		request.setAttribute("itemList", itemList);

	}

}
