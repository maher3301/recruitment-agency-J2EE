<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="bootstrap4/css/bootstrap.min.css"  rel="stylesheet" >
    <script type="text/javascript" src="bootstrap4/js/jquery.min.js" ></script>
    <script type="text/javascript" src="bootstrap4/js/bootstrap.min.js" ></script>
    <link href="fontawesome/css/all.css" rel="stylesheet">

</head>
<body>
<div class="container-fluid">

	<%@include file="entete.jsp" %>   

    <div class="row" style="margin-top:10px;">
        
		<div class="col-3">
		    <div class="list-group">
		        <a href="PreOffre" class="list-group-item list-group-item-action">
		            <span class="fa fa-th-large"></span>
		            <b>Liste des Offres d'emploi</b>
		        </a>
		
		        <a href="PreEntreprise" class="list-group-item list-group-item-action active">
		            <span class="fa fa-th-large"></span>
		            <b>Liste des Entreprises</b>
		        </a>
		    </div>
		</div>

        <div class="col-9" >            
                <div class="card text-white">
                    <div class="card-header bg-success"> <h5>Liste des entreprises </h5></div>
					<div class="card-body">
					 
					
					 
                    <table class="table table-hover table-bordered">
                        <thead class="thead-light">
                          <tr><th>Titre Entreprise</th><th>Domaine</th><th>Ville</th> <th></th>
						  </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${liste}" var="e">
                            <tr>				
								
                                <td>${e.titre}</td>   
								<td>${e.domaine}</td> 
								<td>${e.ville}</td> 															
								<td>
									<c:if test="${usr.role==\"admin\" }">
										<a href="DeleteEntreprise?idDel=${e.id}" class="btn btn-danger">DELETE</a>
									</c:if>								
								</td>								
                            </tr>
                            </c:forEach>
							
                        </tbody>

                    </table>

             </div>


            </div>


        </div>

    </div>

</div>


</body>
</html>