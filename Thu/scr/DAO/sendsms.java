package DAO;

import java.net.*;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.google.gson.JsonParser;

import java.io.*; 



public class sendsms {

	final String APIKey="626E8A50F2403EC37C180C417EFC1D";//Dang ky tai khoan tai esms.vn de lay Key
	final String SecretKey="11D2C6FD4191FF8A6AF86FEA8C07F3";
	private String message;
	private String phone;
	
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String execute() {

		return "SUCCESS";

	}
	
	
	
	public String sendGetXML() throws IOException {

		String url = "http://rest.esms.vn/MainService.svc/xml/SendMultipleMessage_V4_get?ApiKey=" + URLEncoder.encode(APIKey, "UTF-8") + "&SecretKey=" + URLEncoder.encode(SecretKey, "UTF-8")+ "&SmsType=8&Phone=" + URLEncoder.encode(phone, "UTF-8") + "&Content=" + URLEncoder.encode(message, "UTF-8");
		String codeResult = "";
		URL obj;
		try {
			obj = new URL(url);
		
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();
			//you need to encode ONLY the values of the parameters
	            
			con.setRequestMethod("GET");
	 
			
			int responseCode = con.getResponseCode();
			System.out.println("\nSending 'GET' request to URL : " + url);
			System.out.println("Response Code : " + responseCode);
			if(responseCode==200)//Đã gọi URL thành công, tuy nhiên bạn phải tự kiểm tra CodeResult xem tin nhắn có gửi thành công không, vì có thể tài khoản bạn không đủ tiền thì sẽ thất bại
			{
				//Check CodeResult from response
			}
			//Đọc Response
			BufferedReader in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();
	 
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
 
			//print result
			System.out.println(response.toString());
			Document document = loadXMLFromString(response.toString());
			document.getDocumentElement().normalize();
			System.out.println("Root element :" 
		            + document.getDocumentElement().getNodeName());
			Node node = document.getElementsByTagName("CodeResult").item(0);
			codeResult = node.getTextContent();
	        System.out.println("CodeResult: " + node.getTextContent());
	        node = document.getElementsByTagName("SMSID").item(0);
	        if(node != null) {
	        	System.out.println("SMSID: " + node.getTextContent());
	        } else {
	        	node = document.getElementsByTagName("ErrorMessage").item(0);
	        	System.out.println("ErrorMessage: " + node.getTextContent());
	        }
		//document.getElementsByTagName("CountRegenerate").item(0).va
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return codeResult;

	}
	
	public String sendGetJSON() throws IOException {

		String url = "http://rest.esms.vn/MainService.svc/json/SendMultipleMessage_V4_get?ApiKey=" + URLEncoder.encode(APIKey, "UTF-8") + "&SecretKey=" + URLEncoder.encode(SecretKey, "UTF-8") + "&SmsType=8&Phone=" + URLEncoder.encode(phone, "UTF-8") + "&Content=" + URLEncoder.encode(message, "UTF-8");
		 
		URL obj;
		try {
			obj = new URL(url);
		
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();
			//you need to encode ONLY the values of the parameters
	            
			con.setRequestMethod("GET");
			con.setRequestProperty("Accept", "application/json");
			
			int responseCode = con.getResponseCode();
			System.out.println("\nSending 'GET' request to URL : " + url);
			System.out.println("Response Code : " + responseCode);
			if(responseCode==200)//Đã gọi URL thành công, tuy nhiên bạn phải tự kiểm tra CodeResult xem tin nhắn có gửi thành công không, vì có thể tài khoản bạn không đủ tiền thì sẽ thất bại
			{
				//Check CodeResult from response
			}
			//Đọc Response
			BufferedReader in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();
	 
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
 
			//print result
			JSONObject json = (JSONObject)new JSONParser().parse(response.toString());
			System.out.println("CodeResult=" + json.get("CodeResult"));
			System.out.println("SMSID=" + json.get("SMSID"));
			System.out.println("ErrorMessage=" + json.get("ErrorMessage"));
		//document.getElementsByTagName("CountRegenerate").item(0).va
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "SUCCESS";

	}
	
	public Document loadXMLFromString(String xml) throws Exception
	{
	    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	    DocumentBuilder builder = factory.newDocumentBuilder();
	    InputSource is = new InputSource(new StringReader(xml));
	    return builder.parse(is);
	}
 


   

}
