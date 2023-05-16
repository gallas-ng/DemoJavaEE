<%--
  Created by IntelliJ IDEA.
  User: Gallas
  Date: 08/05/2023
  Time: 02:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des étudiants</title>
</head>
<body>
<h1>Liste des étudiants</h1>
<table>
    <tr>
        <th>Nom</th>
        <th>Email</th>
        <th>Classe</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="etudiant" items="${etudiants}">
        <tr>
            <td>${etudiant.nom}</td>
            <td>${etudiant.email}</td>
            <td>${etudiant.classe}</td>
            <td>
                <a href="Edit.jsp?id=${etudiant.id}">Modifier</a>
                <a href="delete.jsp?id=${etudiant.id}">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="Ajout.jsp">Ajouter un étudiant</a>
</body>
</html>

