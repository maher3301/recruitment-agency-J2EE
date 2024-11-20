<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
 
        .form-container {
            
            background-color: #007bff;
            color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
        }
        </style>
    <meta charset="UTF-8">
    <title>Connexion - Agence de recrutement</title>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet">
    <c:set var="err" value="${sessionScope.erreur}"></c:set>
    <c:set var="err_type" value="${sessionScope.type}"></c:set> 
</head>
<body>

<header>
    <!-- En-t�te avec le logo et le titre de l'agence -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Agence de recrutement</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <!-- Ajoutez ici des liens de navigation sp�cifiques � l'en-t�te si n�cessaire -->
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="container">
    <div class="row justify-content-center py-5">
        <div class="col-md-6">
            <div class="form-container">
                <h1 class="text-center">Connexion</h1>
                <form method="POST" action="Verif">
                    <div class="form-group">
                        <label>Username</label>
                        <input name="username" type="text" class="form-control" placeholder="Votre username">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input name="pass" type="password" class="form-control" placeholder="Votre Mot de passe">
                    </div>
                    <button type="submit" class="btn btn-success btn-block mb-4">Se Connecter</button>
                </form>
            </div>
        </div>
    </div>
</div>
<c:if test="${err != null}">
    <div class="alert-${err_type}">
        <p>${err}</p>
    </div>
</c:if>
<c:remove var="erreur" scope="session"/>
<c:remove var="type" scope="session"/>

<footer class="footer fixed-bottom py-3 bg-dark text-white">
    <!-- Pied de page avec des informations sur l'agence, les coordonn�es, etc. -->
    <div class="container text-center">
        <span>� Agence de recrutement Maher - 2024. Tous droits r�serv�s.</span>
    </div>
</footer>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
