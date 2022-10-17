package controller;

import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DataSource;
import dao.UserDao;
import model.Address;
import model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -173319121081412032L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		try {
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String page = "";
			
			User user = this.searchUser(email, password);
			
			if(user != null) {
				System.out.println("NOT NULL");
				request.getSession().setAttribute("User", user);
				request.getSession().setAttribute("Id", user.getId());
				
				System.out.println(request.getSession().getAttribute("Id"));
				page = "/user_data.jsp";
			} else {
				System.out.println("NULL");
				page = "/error.jsp";
				request.setAttribute("ErrorMessage", "Credenciais inválidas");
			}

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(page);
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
	        throw new ServletException("Login failed", e);
//			System.out.println("Erro chamando login servlet: " + e.getMessage());
		}
	}
	
	private User searchUser(String email, String password) throws SQLException {
//		if(email.equals("gulliver@traveller.com") && password.equals("123")) {
//			User result = new User();
//			
//			result.setName("Nome Sobrenome");
//			result.setEmail("email@email.com");
//			result.setPassword("123");
//			result.setBirthDate(LocalDate.of(2000, 1, 1));
//			result.setGender("1");
//			result.setPhoto(".\\assets\\images\\user.png");
//			result.setLasAccess(LocalDate.of(2022, 1, 1));
//			
//			Address address = new Address();
//			address.setCity("S�o Paulo");
//			address.setState("SP");
//			address.setCountry("Brasil");
//			
//			result.setAddress(address);
//			
//			return result;
//			
//		} else {
//			return null;
//		}
		
		DataSource dataSource = new DataSource();
		UserDao userDao = new UserDao(dataSource);
		User retorno = userDao.getByEmailSenha(email, password);
		
		dataSource.getConnection().close();
		
		System.out.println("PEGUEI USER DO DAOOOOOOOOOOOO");
		
		return retorno;
		
	}
	
}
