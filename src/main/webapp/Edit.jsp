<%--
  Created by IntelliJ IDEA.
  User: Gallas
  Date: 08/05/2023
  Time: 02:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mise à jour d'un étudiant</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 style="font-family: 'Bauhaus 93'">Mise à jour d'un étudiant</h1>
    <c:if test="${not empty errorMessage}">
        <div style="color: red;">${errorMessage}</div>
    </c:if>
    <div class="col-md-8">
        <form action="etudiant?action=edit" method="post">
            <div class="mb-3">
                <label for="nom" class="form-label">Nom :</label>
                <input type="text" class="form-control" id="nom" name="nom" value="<c:out value='${etudiant.nom}' />" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email :</label>
                <input type="email" class="form-control" id="email" name="email" value="<c:out value='${etudiant.email}' />" required>
            </div>
            <div class="mb-3">
                <label for="classe" class="form-label">Classe :</label>
                <input type="text" class="form-control" id="classe" name="classe" value="<c:out value='${etudiant.classe}' />" required>
            </div>
            <input type="hidden" name="id" id="id" value="<c:out value='${etudiant.id}' />">
            <button type="submit" class="btn btn-primary">Mettre à jour</button>
        </form>
    </div>
</div>
</body>
</html>

