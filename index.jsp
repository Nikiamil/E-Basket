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

	

<jsp:useBean id="data" class ="user.Sbean" scope= "session">
<jsp:setProperty name = "data" property = "AP" value ="0"/>
<jsp:setProperty name = "data" property = "BP" value ="0"/>
<jsp:setProperty name = "data" property = "CP" value ="0"/>
</jsp:useBean>

<table border ="3">
<tr>
<td> Coffee   </td>
<td> ${initParam.CoffeePrice}</td>
<td> <center><input type = "text"name = "cp" size = "4"></input></center></td>
<jsp:setProperty name = "data" property = "AP" param ="cp"/>
<td><jsp:getProperty name = "data" property = "AP"/></td>
</tr><tr>
<td> Sugar    </td>
<td> ${initParam.SugarPrice}</td>
<td> <center><input type = "text" name = "sp" size = "4"></input></center></td>
<jsp:setProperty name = "data" property = "BP" param ="sp"/>
<td><jsp:getProperty name = "data" property = "BP"/> </td>
</tr><tr>
<td> Water    </td>
<td> ${initParam.WaterPrice}</td>
<td> <center><input type = "text" name = "wp"size = "4"></input></center></td>
<jsp:setProperty name = "data" property = "CP" param ="wp"/>
<td> <jsp:getProperty name = "data" property = "CP"/> </td>
</tr><tr>
<td> TOTAL    </td>
<td></td><td></td>
<td><jsp:getProperty name = "data" property = "total"/> </td>
</tr>
</table>




</br>

<input type = "SUBMIT" value ="Calulate Total"></input>
</br>
</br>
</br>
</br>
<input type = "button" value ="Get Source Code" onClick="window.location.href='http://nikiamil.comule.com/MainConversion.java'"></input>
<input type="button" value="View Report" onClick="window.location.href='http://nikiamil.comule.com/MainConversion.java'"></input>
</center>
</form>
</body>
</html>