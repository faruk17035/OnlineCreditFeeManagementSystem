/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Faruk;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

/**
 *
 * @author Md Faruk Hosen
 */
public class SmsSend {
    
     public String smssend(String phone,String msg){
       String flag=""; 
        
        String token = "c1b80ba5daa79f2080b15e002c98dca4";

//Single or Multiple mobiles numbers separated by comma
String to = phone;

//Your message to send, Add URL encoding here.
String textmessage = msg;

URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;

//encode the message content
String encoded_message=URLEncoder.encode(textmessage);
String apiUrl="http://api.greenweb.com.bd/api.php?";

StringBuilder sgcPostContent= new StringBuilder(apiUrl);
sgcPostContent.append("token="+token);
sgcPostContent.append("&to="+to);
sgcPostContent.append("&message="+encoded_message);

apiUrl = sgcPostContent.toString();
try
{
    //prepare connection
    myURL = new URL(apiUrl);
    myURLConnection = myURL.openConnection();
    myURLConnection.connect();
    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
    //read the output
    String output;
    while ((output = reader.readLine()) != null)
    //print output
     System.out.println(output);
    //Close connection
    
    flag=output;
    reader.close();
}
catch (IOException e)
{
    e.printStackTrace();
}
  return flag;  
}
    
}
