<c:set var="usr" value="${sessionScope.user }"></c:set>
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
<div class="row" style="margin-top:10px;">
        <div class="col-12">
            <div class="card bg-info text-white">
                <div class="card-header">
                    <h4>Agence Emploi<font size="2pt" > </font></h4>
					<div class="text-right">						
						<h3>Bienvenue ${usr.nom } ${usr.prenom } (<a href="Logout">D�connexion</a>)</h3>						
					</div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer fixed-bottom py-3 bg-dark text-white">
    <!-- Pied de page avec des informations sur l'agence, les coordonn�es, etc. -->
    <div class="container text-center">
        <span>� Agence de recrutement de Maher - 2024. Tous droits reserves.</span>
    </div>
</footer>