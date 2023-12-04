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
<title>TABLES</title>
</head>
<body>
<form action="delrecs" method="post">
<h1>TABLES</h1>
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
<label>Enter the company ID of the record to be deleted</label>
<input type="text" class="input" size=65 name="cid" >
</div>
<br>
<br>
<br>
<br>

<h2>EMPLOYEE TABLE</h2>
<br>

<TABLE >
      <TR>
      <TH>Employee ID</TH>
      <TH>Employee Name</TH>
      <TH>Company ID</TH>
      <TH>Department Name</TH>
       <TH>Designation</TH>
        <TH>Salary</TH>
      </TR>
 <%Iterator itr1;%>
<% List data1= (List)request.getAttribute("data1");
for (itr1=data1.iterator(); itr1.hasNext(); )
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
<%}%>
</TABLE>
<br>
<br>
<div class="inputfield">
<label>Enter the employee ID of the record to be deleted</label>
<input type="text" class="input" size=65 name="eid" >
</div>
<br>
<br>
<br>
<br>

<h2>MANAGER TABLE</h2>
<TABLE ">
      <TR>
      <TH>Manager ID</TH>
      <TH>Manager Name</TH>
      <TH>Company ID</TH>
      <TH>No of Indoor Projects`</TH>
       <TH>Outdoor Project Area</TH>
       
      </TR>
 <%Iterator itr2;%>
<% List data2= (List)request.getAttribute("data2");
for (itr2=data2.iterator(); itr2.hasNext(); )
{
%>
<tr>
<td width="168"><%=itr2.next()%></td>
<td width="168"><%=itr2.next()%></td>
<td width="168"><%=itr2.next()%></td>
<td width="168"><%=itr2.next()%></td>
<td width="168"><%=itr2.next()%></td>

</tr>
<%}%>
</TABLE>


<br>
<br>

<div class="inputfield">
<label>Enter the manager ID of the record to be deleted</label>
<input type="text" class="input" size=65 name="mid" >
</div>

<br>
<br>
<br>
<br>

<div class="inputfield">
<input type="submit" style=" width: 30%;
padding: 8px 10px; font-size: 15px;
border: 0px; background: #b0e0e6 ; color: #fff;
cursor: pointer; border-radius: 3px; outline: none; "value="Delete" class="btn"> 
</div>

</form>
      
</body>
</html>