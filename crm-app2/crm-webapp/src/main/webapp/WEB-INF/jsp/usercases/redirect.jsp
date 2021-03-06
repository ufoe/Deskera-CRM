/*
 * Copyright (C) 2012  Krawler Information Systems Pvt Ltd
 * All rights reserved.
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.krawler.common.util.URLUtil"%>
<%@page import="com.krawler.esp.web.resource.Links"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String url = URLUtil.getRequestPageURL(request, Links.UnprotectedLoginPageFull);
String suburl="";

if(request.getAttribute("changepassword")!=null){
	suburl="crm/Case/customeraction/changePasswordForm.do?mis_pass="+request.getAttribute("mis_pass");
	response.sendRedirect(url+suburl); 
}	

if(request.getAttribute("casedetails")!=null){
	suburl="crm/Case/customeraction/getDetails.do";
	if(request.getAttribute("caseid")!=null)
		suburl=suburl+"?caseid="+request.getAttribute("caseid").toString();
	response.sendRedirect(url+suburl); 
}	
if(request.getAttribute("caselist")!=null){
	suburl="crm/Case/customeraction/getCustomerCases.do";
	response.sendRedirect(url+suburl); 
}	
if(request.getAttribute("logout")!=null){
	suburl="caselogin.jsp";
	response.sendRedirect(url+suburl); 
}	


if(request.getAttribute("homepage")!=null){
	suburl="crm/Case/customeraction/getCustomerCases.do";
	if(request.getAttribute("success")!=null)
		suburl=suburl+"?pchanged=true";
	response.sendRedirect(url+suburl); 
}	



%>
</body>
</html>
