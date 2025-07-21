package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveNoteServlet
 */
@WebServlet(description = "save user form data", urlPatterns = { "/SaveNoteServlet" })
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {

			// fetch title and content
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Note note = new Note(title, content, new Date());

			//save this note to db via hibernate
			Session session = FactoryProvider.getSessionFactory().openSession();

			session.beginTransaction();

			session.persist(note);

			session.getTransaction().commit();

			session.close();

			FactoryProvider.closeFactory();

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:centre;'>Note was saved successfully</h1>");
			out.println("<h1 style='text-align:centre;'><a href='all_notes.jsp'>View all notes</a></h1>");

		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
