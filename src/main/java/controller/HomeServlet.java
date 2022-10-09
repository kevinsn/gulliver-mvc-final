 package controller;

import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Address;
import model.User;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -173319121081412032L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String page = "";
			
			User user = this.searchUser(email, password);
			
			if(user != null) {
				request.getSession().setAttribute("User", user);
				page = "/user_data.jsp";
			} else {
				page = "/error.jsp";
				request.setAttribute("ErrorMessage", "Credenciais inválidas");
			}

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(page);
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			System.out.println("Erro chamando login servlet: " + e.getMessage());
		}
	}
	
	private User searchUser(String email, String password) {
		if(email.equals("gulliver@traveller.com") && password.equals("123")) {
			User result = new User();
			
			result.setName("Nome sobrenome");
			result.setBirthDate(LocalDate.of(2000, 1, 1));
			result.setEmail("email@email.com");
			result.setGender("1");
			result.setPassword("123");
			result.setPhoto(".\\assets\\images\\user.png");
			result.setLasAccess(LocalDate.of(2022, 1, 1));
			
			Address address = new Address();
			address.setCity("S�o Paulo");
			address.setState("SP");
			address.setCountry("Brasil");
			
			result.setAddress(address);
			
			return result;
			
		} else {
			return null;
		}
	}
	
}
