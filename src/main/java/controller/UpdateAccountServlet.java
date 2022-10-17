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

@WebServlet("/update_account")
public class UpdateAccountServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -173319121081412032L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		try {

			User user = new User();

			user.setId((int) request.getSession().getAttribute("Id"));
			user.setName(request.getParameter("nome"));
			user.setEmail(request.getParameter("email"));
			user.setCpf(request.getParameter("cpf"));
			user.setPhone(request.getParameter("telefone"));
			user.setBirthDate(LocalDate.parse(request.getParameter("data_nascimento")));
			user.setPhoto(request.getParameter("foto"));
//			user.setPassword(request.getParameter("senha"));
			
			Address address = new Address();

			DataSource dataSource = new DataSource();
			
			UserDao userDao = new UserDao(dataSource);
			userDao.update(user);

			dataSource.getConnection().close();

			
		} catch (Exception e) {
	        throw new ServletException("Login failed", e);
//			System.out.println("Erro chamando login servlet: " + e.getMessage());
		}
	}
	
	private User updateUser(String email, String password) throws SQLException {
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
