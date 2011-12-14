<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My E-Basket</title>
</head>
<body>
<center>
<h1> E-Basket</h1>
</br>
</br>
<form method = "POST" action = "index.jsp">
<%! 
	double cP,sP,wP;

	//Get values from web.xml
	public void jspInit() {
	
		
		String cPrice = getServletContext().getInitParameter("CoffeePrice");
		String sPrice = getServletContext().getInitParameter("SugarPrice");
		String wPrice = getServletContext().getInitParameter("WaterPrice");
		
		cP = Double.parseDouble(cPrice);
		sP = Double.parseDouble(sPrice);
		wP = Double.parseDouble(wPrice);
		
		
		}
	

		%>
		<% 	
			HttpSession ses = request.getSession(); //Session Cookie
		
			String aP = request.getParameter("cp");
			String bP = request.getParameter("sp");
			String dP = request.getParameter("wp");
			
			//During jsp first run the parameter values are null
			//Using the != null allows us to avoid null pointer exception error
			//during first run
			//Also if a bracked is left empty it must be treated as 0
			//in order to avoid empty string exceptions
			
			double a,b,c; 
			if (aP != null && bP != null && dP != null){
				
				if(!aP.equals("")){
					a = Double.parseDouble(aP);
				}
				else {a = 0;}
				if(!bP.equals("")){
					b = Double.parseDouble(bP);
				}
				else {b=0;}
				
				if(!dP.equals("")){
					c = Double.parseDouble(dP);
				}
				else {c=0;}
			}
			else {a=0;b=0;c=0;}
			%>

<table border ="3">
<tr>
<td> Coffee   </td>
<td> ${initParam.CoffeePrice}</td>
<td> <center><input type = "text"name = "cp" size = "4"></input></center></td>
<td> <% double ad = a*cP; %> <%= ad %></td>
</tr><tr>
<td> Sugar    </td>
<td> ${initParam.SugarPrice}</td>
<td> <center><input type = "text" name = "sp" size = "4"></input></center></td>
<td> <% double bd = b*sP; %> <%= bd %></td>
</tr><tr>
<td> Water    </td>
<td> ${initParam.WaterPrice}</td>
<td> <center><input type = "text" name = "wp"size = "4"></input></center></td>
<td> <% double cd = c*wP; %><%= cd %></td>
</tr><tr>
<td> TOTAL    </td>
<td></td><td></td>
<td> <% double total = ad+bd+cd; %> <%= total %> </td>
</tr>
</table>

</br>

<input type = "SUBMIT" value ="Calulate Total"></input>
</br>
</br>
</br>
</br>
<input type = "button" value ="Get Source Code" onClick="window.location.href='http://nikiamil.comule.com/src2.rar'"></input>
<input type="button" value="View Report" onClick="window.location.href='http://nikiamil.wordpress.com/2011/12/14/project-3/'"></input>
</center>
</form>
</body>
</html>