package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/formulaire")
public class Formulaire extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
  
    public Formulaire() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
		PrintWriter Sortie = response.getWriter(); Sortie.println("<html>");
		
		Sortie.println("<head><title>Enregistrement coordonnées</title></head>");
		Sortie.println("<body bgcolor=purple text=white>");
		Sortie.println("<h2>Enregistrement de vos coordonnées effectué</h2>");
		Sortie.println("<hr width=75%");
		
		Sortie.print("<p><b>Bonjour "+ request.getParameter("civilite")+" ");
		Sortie.print(request.getParameter("prenom")+" ");
		Sortie.print(request.getParameter("nom")+".");
		
		int age = Integer.parseInt(request.getParameter("age"));
		String message ="Vous etes un ";
		if(age>0 && age<12)message += "enfant."; 
		if(age>=12 && age<18)message +="adolescent.";
		if(age>=18 && age<60)message += "adulte.";
		if(age>=60)message += "une personne du troisième age.";
		Sortie.println("<p>" + message +"</b></body></html>");
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
