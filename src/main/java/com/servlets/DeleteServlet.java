package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.hibernate.Session;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			
			//delete data for the above OK
			
			Session s = FactoryProvider.getSessionFactory().openSession();
			
			Note note = s.find(Note.class, noteId);
			
			s.beginTransaction();
			
			s.remove(note);
			
			s.getTransaction().commit();
			
			s.close();
			
			
			FactoryProvider.closeFactory();
			
			response.sendRedirect("all_notes.jsp");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
