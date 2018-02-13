package util;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;
import java.util.Map;
import java.net.URLEncoder;
import java.net.URLDecoder;
import java.io.IOException;

public class CookieBox {
	
	private Map<String,Cookie> cookieMap 
	= new java.util.HashMap<String, Cookie>();
	
	public CookieBox(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(int i=0; i<cookies.length ; i++) {
				cookieMap.put(cookies[i].getName(), cookies[i]);
				
			}			
			
		}
	}
	public static Cookie createCookie(String name, String value) throws IOException{
		
	}
}
