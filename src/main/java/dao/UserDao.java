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
						+ "FROM T_USUARIO tu "
						+ "INNER JOIN T_CIDADE tc ON tu.ID_CIDADE = tc.ID "
						+ "WHERE tu.EMAIL = ? "
						+ "AND tu.SENHA = ? ";
			
			PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
			
			stm.setString(1, email);
			stm.setString(2, senha);
			
			// ResultSet é o retorno da query
			
			ResultSet rs = stm.executeQuery();
			
			if(rs.next()) {
				
				User user = new User();
				
				user.setId(rs.getInt("ID"));
				user.setName(rs.getString("NOME"));
				user.setGender(rs.getString("GENERO"));
				user.setEmail(rs.getString("EMAIL"));
				user.setPassword(rs.getString("SENHA"));
				user.setPhoto(rs.getString("FOTO"));
				user.setBirthDate(rs.getDate("DT_NASCIMENTO").toLocalDate());
				
				Address address = new Address();
				address.setId(rs.getInt("ID"));
				address.setCity(rs.getString("CIDADE"));
				address.setState(rs.getString("ESTADO"));
				address.setCountry(rs.getString("PAIS"));
				
				user.setAddress(address);
				
			} else {
				return null;
			}
			
//			String email = 'gulliver@traveller.com';
//			String senha = '789456';
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("UserDao.GETBYEMAILSENHA = " + e.getMessage());
		}
		
		return null;
	}

	public DataSource getDataSource() {
		return dataSource;
	}

}
