package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
		try {
			String sql = "INSERT INTO RM94253.TB_USUARIO "
					+ " (NOME, EMAIL,CPF,CELULAR,DATA_NASCIMENTO,FOTO,SENHA,DATA_CRIACAO,ULTIMO_ACESSO) "
					+ " VALUES "
					+ "(?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
			stm.setString(1, object.getName());
			stm.setString(2, object.getEmail());
			stm.setString(3, object.getCpf());
			stm.setString(4, object.getPhone());
			stm.setString(5, object.getBirthDate().format(DateTimeFormatter.ofPattern("dd/MM/YYY")));
			stm.setString(6, object.getPhoto());
			stm.setString(7, object.getPassword());
			stm.setString(8, object.getCreationDate().format(DateTimeFormatter.ofPattern("dd/MM/YYY")));
			stm.setString(9, object.getLastAccess().format(DateTimeFormatter.ofPattern("dd/MM/YYY")));
			
			int res = stm.executeUpdate();
			
			if (res != 0) {
				System.out.println("Usuario criado com sucesso");
			} else {
				throw new RuntimeException("Erro ao criar usuario ");
			}
			
			
		}catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("UsuarioDAO.create = " + ex.getMessage());
		}

		
	}

	@Override
	public List<User> read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(User object) {
		try {
			String sql = "UPDATE RM94253.TB_USUARIO "
					+ "SET NOME = ?, "
					+ "EMAIL = ?, "
					+ "CPF = ?, "
					+ "CELULAR = ?, "
					+ "DATA_NASCIMENTO = ?, "
					+ "FOTO = ?, "
					+ "SENHA = ? "
					+ "WHERE ID_USUARIO = ?";
			
			PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
			stm.setString(1, object.getName());
			stm.setString(2, object.getEmail());
			stm.setString(3, object.getCpf());
			stm.setString(4, object.getPhone());
			stm.setString(5, object.getBirthDate().format(DateTimeFormatter.ofPattern("dd/MM/YYY")));
			stm.setString(6, object.getPhoto());
			stm.setString(7, object.getPassword());
			stm.setInt(8, 1);
			
			int res = stm.executeUpdate();
			
			if (res != 0) {
				System.out.println("Usuario atualizado com sucesso");
			} else {
				throw new RuntimeException("Erro ao atualizar usuario ");
			}
			
			
		}catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("UsuarioDAO.update = " + ex.getMessage());
		}
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
			
			String sql2 = "SELECT * "
					+ "FROM RM94253.TB_ENDERECO "
					+ "WHERE ID_USUARIO = ? ";
		
			PreparedStatement stm2 = dataSource.getConnection().prepareStatement(sql2);
			
			ResultSet rs2;
			
			System.out.println("111111111111111");

			User user = new User();
			
			if(rs.next()) {

				stm2.setString(1, rs.getString("ID_USUARIO"));			
				rs2 = stm2.executeQuery();
				
				System.out.println("222222222222");
				
				user.setId(rs.getInt("ID_USUARIO"));
				user.setName(rs.getString("NOME"));
//				user.setGender(rs.getString("GENERO"));
				user.setEmail(rs.getString("EMAIL"));
				user.setCpf(rs.getString("CPF"));
				user.setPhone(rs.getString("CELULAR"));
				user.setBirthDate(rs.getDate("DATA_NASCIMENTO").toLocalDate());
				user.setPhoto(rs.getString("FOTO"));
				user.setPassword(rs.getString("SENHA"));
				user.setCreationDate(rs.getDate("DATA_CRIACAO").toLocalDate());
				user.setLastAccess(rs.getDate("ULTIMO_ACESSO").toLocalDate());
				
				System.out.println(String.valueOf(user.getId()));
				System.out.println(user.getName());
				System.out.println(user.getEmail());
				System.out.println(user.getPassword());
				System.out.println(user.getPhoto());
				System.out.println(user.getBirthDate());

				if(rs2.next()) {

					Address address = new Address();
					address.setId(rs2.getInt("ID_ENDERECO"));
					address.setPostalCode(rs2.getString("CEP"));
					address.setState(rs2.getString("UF"));
					address.setCity(rs2.getString("CIDADE"));
					address.setNeighborhood(rs2.getString("BAIRRO"));
					address.setPublicArea(rs2.getString("LOGRADOURO"));
					address.setNumber(rs2.getInt("NUMERO"));
					address.setAdditionalInfo(rs2.getString("COMPLEMENTO"));
					address.setId(rs2.getInt("ID_USUARIO"));//				
					user.setAddress(address);
				}
					
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
