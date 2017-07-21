package main.controller;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlAnchor;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;

import main.service.Main_Service;
import main.vo.Inquiry;
import main.vo.Item;
import main.vo.Signup;

@Controller
@RequestMapping("/main.do")
public class Main_Ctrl {
	@Autowired(required=false)
	public Main_Service service;
	
	@RequestMapping(params="method=main")
	public String start(){
		
		return "main/main.jsp";
	}
	
	@RequestMapping(params="method=inquiry")
	public String insert(Inquiry ins){
		System.out.println(ins.getName());
		System.out.println(ins.getEmail());
		System.out.println(ins.getContent());
		service.insertInquiry(ins);
		return "redirect:/main.do?method=main";
	}
	
	@RequestMapping(params="method=signup")
	public String signup(){
		
		return "main/signup.jsp";
	}
	
	@RequestMapping(params="method=signupProc")
	public String newmember(Signup ins){
		System.out.println(ins.getName());
		System.out.println(ins.getEmail());
		System.out.println(ins.getPassword());
		service.signUp(ins);
		return "redirect:/main.do?method=main";
	}
	
	@RequestMapping(params="method=basketball")
	public String basketball(){
		
		return "redirect:/main.do?method=scraper";
	}
	
	@RequestMapping(params="method=running")
	public String running(){
		
		return "pages/running.jsp";
	}
	
	@RequestMapping(params="method=scraper")
	public String webScraper(HttpServletRequest request){
		
		String searchQuery = "basketball";
		String baseUrl = "http://www.adidas.com/us/";
		WebClient client = new WebClient();
		client.getOptions().setCssEnabled(false);
		client.getOptions().setJavaScriptEnabled(false);
				
		JSONArray itemList = new JSONArray();
		
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
					String itemTitle = spanTitle.asText();
					HtmlElement spanSubtitle = ((HtmlElement) htmlItem.getFirstByXPath(".//span[@class='subtitle']"));
					String itemSubtitle = spanSubtitle.asText();
					HtmlElement spanPrice = ((HtmlElement) htmlItem.getFirstByXPath(".//div[3]/div[4]/div[4]/div[1]/span[@class='salesprice']"));
					String itemPrice = spanPrice==null ? "On Sale" : spanPrice.asText();
									
				//	System.out.println(String.format("Name : %s Refine : %s Price : %s Url : %s", itemTitle, itemSubtitle, itemPrice, itemUrl));
				
					Item item = new Item();
					item.setTitle(itemTitle);
					item.setSubtitle(itemSubtitle);
					item.setPrice(itemPrice);
					item.setUrl(itemUrl);
					
					ObjectMapper mapper = new ObjectMapper();
					String jsonString = mapper.writeValueAsString(item);
					
					System.out.println(jsonString);
					
					itemList.put(jsonString);									
					
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		System.out.println(itemList);
		
		request.setAttribute("itemList", itemList);
		
		return "pages/"+searchQuery+".jsp";
	}
}
