<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enregistrement des cordonnées </title>
</head>
<body bgcolor="orange" text="green">
<h2>Enregistrement des cordonnées effectué</h2>
<hr width="75%">
<p><b>Bonjour
<%= request.getParameter("titre") %>
<%= request.getParameter("prenom") %>
<%= request.getParameter("nom") %>

<% 
int age = Integer.parseInt(request.getParameter("age"));
String message = "Vous etes un";
if(age>0 && age<12) message+= " enfant";
if(age>=12 && age<18) message+= " adolescent";
if(age>=18 && age<60) message+= " adulte";
if(age>=60) message+="e personne du troisieme age";
%>

</b>
<p><%= message %>






</body>
</html>