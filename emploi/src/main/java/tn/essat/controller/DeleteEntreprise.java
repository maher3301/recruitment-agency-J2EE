package tn.essat.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.essat.dao.GestionImp;
import tn.essat.dao.IGestion;
import tn.essat.model.Utilisateur;

/**
 * Servlet implementation class DeleteEntreprise
 */
public class DeleteEntreprise extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteEntreprise() {
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
		
		int idDel=Integer.parseInt(request.getParameter("idDel"));
		dao.deleteEntreprise(idDel);
		
		request.getRequestDispatcher("PreEntreprise").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}