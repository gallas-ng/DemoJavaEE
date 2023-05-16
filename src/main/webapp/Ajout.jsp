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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            padding: 20px;
        }
        h1 {
            margin-bottom: 20px;
        }
        form {
            margin-bottom: 30px;
        }
        button {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 style="font-family: 'Bauhaus 93'">Ajouter un étudiant</h1>
    <div class="col-md-8">
        <form method="post" action="etudiant?action=new">
            <div class="mb-3">
                <label for="nom" class="form-label">Nom :</label>
                <input type="text" id="nom" name="nom" required class="form-control">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email :</label>
                <input type="email" id="email" name="email" required class="form-control">
            </div>
            <div class="mb-3">
                <label for="classe" class="form-label">Classe :</label>
                <input type="text" id="classe" name="classe" required class="form-control">
            </div>
            <button class="btn btn-primary" type="submit">Ajouter</button>
        </form>
    </div>
    <a class="btn btn-success" href="index.jsp">Retour</a>
</div>
</body>
</html>

