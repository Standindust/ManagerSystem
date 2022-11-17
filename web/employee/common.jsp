<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="employees.*" %>
<%@ page import="java.util.Properties" %>
<%@ page errorPage="errorpage.jsp" %>
<%!
   public String convert(String s){
    try{
     	return new String(s.getBytes("UTF-8"),"UTF-8");
    }catch(Exception e){return null;}
   }
%>