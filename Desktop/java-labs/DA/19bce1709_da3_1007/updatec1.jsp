<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table {
 
    margin-left: auto;
     margin-right: auto;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
h1,h2
{  color: powderblue;
text-align:center
   
}

body {background-color: MediumVioletRed;
text-align: center;}

th {
  background-color: powderblue;
  color: black;
}
tr
{background-color: white;
color: balck;


}
form
{
 display: inline-block;
 }
.inputfield .input{
width: 40%;
height:10px;
outline: none;
border: 1px solid #d5dbd9; font-size: 15px;
padding: 8px 10px; border-radius: 3px; transition: all 0.3s ease;
}

label
{
width: 200px;
color: white;
margin-right: 10px;
font-size: 14px; }
}
.inputfield .btn
{
width: 100%;
padding: 8px 10px; font-size: 15px;
border: 0px; background: #b0e0e6 ; color: #fff;
cursor: pointer; border-radius: 3px; outline: none;
}

}

</style>
<title>FORM</title>
</head>
<body>
<form action="update" method="post">
<h1>TABLE</h1>
<br>
<br>
<h2>COMPANY TABLE</h2>
<br>

 <TABLE>
      <TR>
      <TH>Company ID</TH>
      <TH>Company Name</TH>
      <TH>City</TH>
      </TR>
 <%Iterator itr;%>
<% List data= (List)request.getAttribute("data");
for (itr=data.iterator(); itr.hasNext(); )
{
%>
<tr>
<td width="168"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>
</tr>
<%}%>
</TABLE>
<br>
<br>
<div class="inputfield">
<label>Enter the company ID of the record to be modified</label>
<input type="text" class="input" size=65 name="CID" >
</div>


<br>
<br>

<div class="inputfield">
<input type="submit" style=" width: 30%;
padding: 8px 10px; font-size: 15px;
border: 0px; background: #b0e0e6 ; color: #fff;
cursor: pointer; border-radius: 3px; outline: none; "value="Modify" class="btn"> 
</div>

</form>
      
</body>
</html>