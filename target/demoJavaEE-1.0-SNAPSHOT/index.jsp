<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container align-items-center justify-content-center">

<h1 class="justify-content-center" style="font-family: 'Bauhaus 93'"><%= "Hello from Gallas!" %>
</h1>
<br/>
<div class="card col-md-6">
    <div class="card-header">
        <a class="btn btn-outline-primary" href="etudiant">liste des Etudiants</a>
    </div>
    <div class="card-body">
        <a class="btn btn-outline-success" href="hello-servlet">Hello Servlet</a>
    </div>
</div>
</div>
</body>
</html>
