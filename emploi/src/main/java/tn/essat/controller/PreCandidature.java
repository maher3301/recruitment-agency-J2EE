package tn.essat.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.essat.dao.GestionImp;
import tn.essat.dao.IGestion;
import tn.essat.model.Candidature;
import tn.essat.model.Offre;
import tn.essat.model.Utilisateur;

/**
 * Servlet implementation class PreCandidature
 */
public class PreCandidature extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PreCandidature() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		Utilisateur u=(Utilisateur) session.getAttribute("user");
		
		if(u==null) {
			session.setAttribute("erreur", "Please, Log in first !!");
			session.setAttribute("type", "danger");
			request.getRequestDispatcher("connexion.jsp").forward(request, response);
		}
		
		IGestion dao= new GestionImp();
		/* methode 1 to supprime un condidature relation : candidats_offre.jsp <-> PreCandidature.java
		String idDeleted = request.getParameter("idDel");
		if (idDeleted != null) {
			int idDel=Integer.parseInt(idDeleted);
			dao.deleteCandidature(idDeleted);
		}*/
		int id = Integer.parseInt(request.getParameter("id"));
		Offre o = dao.getOffreById(id);
		List<Candidature> c = dao.getAllCandidaturesByOffre(id);
		
		request.setAttribute("selectedOffre", o);
		request.setAttribute("listC", c);
		
		request.getRequestDispatcher("candidats_offre.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}