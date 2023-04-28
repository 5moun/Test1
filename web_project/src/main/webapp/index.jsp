<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>


<title>formulaire</title>
<meta charset="UTF-8">
</head>
<body bgcolor = "orange" text = "yellow">

<h2>Enregistrement de vos cordonnées</h2><hr>
<form method =  "get" action="exemple.jsp">
<h3>Civilit&ecute; :
<select name = civilite>
<option>Monsieur</option>
<option>Madame</option>
<option>Mademoiselle</option>
</select></h3>

<h3>Nom : <input type ="text"  name ="nom" size="24" ></h3>
<h3>Pr&eacute; nom : <input type="text" name="prenom"></h3>
<h3>Age : <input type="text" name="age" size="5"></h3>
<hr/><input type="submit" value="Envoyer le formulaire">
<input type="reset" value="Tout effacer">

</form>
</body>
</html>