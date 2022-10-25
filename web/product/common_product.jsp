<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*" %>
<%@ page import="product.*" %>
<%@ page import="java.util.Properties" %>
<%@ page errorPage="errorpage.jsp" %>


<%!
   public String convert(String s){
    try{
     	return new String(s.getBytes("GB2312"),"GB2312");
    }catch(Exception e){return null;}
   }
%>
