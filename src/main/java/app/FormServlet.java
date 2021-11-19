package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form")
public class FormServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		
		String language = req.getParameter("language");
		
		String[] skills = req.getParameterValues("skills");
		
		
		if(name.equals("")){
			throw new IllegalArgumentException("The fild name must be answered.");
		}
		
		if(language.equals("")) {
			throw new IllegalArgumentException("Pleasy, you need choose a language.");
		}
		
		if(skills.equals("")) {
			throw new IllegalArgumentException("You must to choose a skill.");
		}
		
		
		for(String sk : skills) {
		
			System.out.println(sk);
		}
		
		req.setAttribute("nameAttr", name);
		req.setAttribute("languageAttr", language);
		req.setAttribute("skillsAttr", skills);
		
		
		RequestDispatcher disp = req.getRequestDispatcher("form.jsp");
		
		disp.forward(req, resp);				
	}
}
