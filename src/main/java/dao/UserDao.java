package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import model.Address;
import model.User;

public class UserDao implements DaoBase<User> {
	
	private DataSource dataSource;
	
	public UserDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void create(User object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(User object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(User object) {
		// TODO Auto-generated method stub
		
	}
	
	public User getByEmailSenha(String email, String senha) {
		// Conecto com o BD
		// Executo o comando SQL
		// Desconecto com o BD
		try {
			
			String sql = "SELECT * "
						+ "FROM RM94253.TB_USUARIO "
						+ "WHERE EMAIL = ? "
						+ "AND SENHA = ? ";
			
			PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
			
			stm.setString(1, email);
			stm.setString(2, senha);
			
			// ResultSet é o retorno da query
			
			ResultSet rs = stm.executeQuery();
			
			System.out.println("111111111111111");
			
			if(rs.next()) {
				
				System.out.println("222222222222");
				
				User user = new User();
				
				user.setId(rs.getInt("ID_CLIENTE"));
				user.setName(rs.getString("NOME"));
//				user.setGender(rs.getString("GENERO"));
				user.setEmail(rs.getString("EMAIL"));
				user.setPassword(rs.getString("SENHA"));
				user.setPhoto(rs.getString("FOTO"));
				user.setBirthDate(rs.getDate("DATA_NASCIMENTO").toLocalDate());
				
//				Address address = new Address();
//				address.setId(rs.getInt("ID"));
//				address.setCity(rs.getString("CIDADE"));
//				address.setState(rs.getString("ESTADO"));
//				address.setCountry(rs.getString("PAIS"));
				
//				user.setAddress(address);
				
				System.out.println(String.valueOf(user.getId()));
				System.out.println(user.getName());
				System.out.println(user.getEmail());
				System.out.println(user.getPassword());
				System.out.println(user.getPhoto());
				System.out.println(user.getBirthDate());
				
				return user;
				
			} else {
				System.out.println("SETEI NULL");
				return null;
			}
						
//			String email = 'gulliver@traveller.com';
//			String senha = '789456';
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("UserDao.GETBYEMAILSENHA = " + e.getMessage());
			return null;
		}
		
	}

	public DataSource getDataSource() {
		return dataSource;
	}

}
