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
<title>DISPLAY</title>
</head>
<body>

<h2>EMPLOYEE TABLE</h2>
<br>

<TABLE >
      <TR>
      <TH>Employee ID</TH>
      <TH>Employee Name</TH>
      <TH>Company Id</TH>
      
      <TH>Department Name</TH>
       <TH>Designation</TH>
        <TH>Salary</TH>
      </TR>
 <%Iterator itr1;%>
<% List data= (List)request.getAttribute("data");
if(data!=null)

{
for (itr1=data.iterator(); itr1.hasNext(); )
{
%>
<tr>
<td width="168"><%=itr1.next()%></td>
<td width="168"><%=itr1.next()%></td>
<td width="168"><%=itr1.next()%></td>

<td width="168"><%=itr1.next()%></td>
<td width="168"><%=itr1.next()%></td>
<td width="168"><%=itr1.next()%></td>
</tr>
<%}}%>
</TABLE>
<br>
<br>

<br>

<br>
<br>

<form action="disprecs" method="post">

<div class="inputfield">
<label>Enter the company name</label>
<input type="text" class="input" size=65 name="cname" >
</div>
<br>
<br>
<br>

<div class="inputfield">
<input type="submit" style=" width: 30%;
padding: 8px 10px; font-size: 15px;
border: 0px; background: #b0e0e6 ; color: #fff;
cursor: pointer; border-radius: 3px; outline: none; "value="DISPLAY" class="btn"> 
</div>


</form>


      
</body>
</html>