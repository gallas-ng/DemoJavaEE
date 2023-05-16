<%--
  Created by IntelliJ IDEA.
  User: Gallas
  Date: 08/05/2023
  Time: 02:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un étudiant</title>
</head>
<body>
<h1>Ajouter un étudiant</h1>
<form method="post" action="etudiant?action=new">
    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" required><br><br>
    <label for="email">Email :</label>
    <input type="email" id="email" name="email" required><br><br>
    <label for="classe">Classe :</label>
    <input type="text" id="classe" name="classe" required><br><br>
    <input type="submit" value="Ajouter">
</form>
<a href="index.jsp">Retour</a>
</body>
</html>

