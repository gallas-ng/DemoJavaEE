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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            padding: 20px;
        }
        h1 {
            margin-bottom: 20px;
        }
        .table {
            margin-bottom: 20px;
        }
        .btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h1 style="font-family: 'Bauhaus 93'">Liste des étudiants</h1>
<div class="container">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Nom</th>
            <th>Email</th>
            <th>Classe</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="etudiant" items="${etudiants}">
            <tr>
                <td>${etudiant.nom}</td>
                <td>${etudiant.email}</td>
                <td>${etudiant.classe}</td>
                <td>
                    <a href="etudiant?action=edit&id=<c:out value='${etudiant.id}' />" class="btn btn-primary">Modifier</a>
                    <a href="etudiant?action=delete&id=<c:out value='${etudiant.id}' />" class="btn btn-danger">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="Ajout.jsp" class="btn btn-primary">Ajouter un étudiant</a>
</div>
</body>
</html>

