<%--
  Created by IntelliJ IDEA.
  User: Gallas
  Date: 08/05/2023
  Time: 02:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mise à jour d'un étudiant</title>
</head>
<body>
<h1>Mise à jour d'un étudiant</h1>
<c:if test="${not empty errorMessage}">
    <div style="color: red;">${errorMessage}</div>
</c:if>
<form action="update" method="post">
    <p>
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" value="${etudiant.nom}" required>
    </p>
    <p>
        <label for="email">Email :</label>
        <input type="email" id="email" name="email" value="${etudiant.email}" required>
    </p>
    <p>
        <label for="classe">Classe :</label>
        <input type="text" id="classe" name="classe" value="${etudiant.classe}" required>
    </p>
    <input type="hidden" name="id" value="${etudiant.id}">
    <input type="submit" value="Mettre à jour">
</form>
</body>
</html>

