package dao;

import java.sql.PreparedStatement;
import java.time.format.DateTimeFormatter;
import java.util.List;

import model.Address;

public class AddressDao implements DaoBase<Address> {
    
    private DataSource dataSource;
    
    public AddressDao(DataSource dataSource) {
        this.dataSource = dataSource;
    }

	@Override
	public void create(Address object) {
	    try {
            String sql = "INSERT INTO RM94253.TB_ENDERECO "
                    + " (CEP, UF,CIDADE,BAIRRO,LOGRADOURO,NUMERO,COMPLEMENTO,ID_USUARIO) "
                    + " VALUES "
                    + "(?, ?, ?, ?, ?, ?, ?, ?)";
            
            PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
            stm.setString(1, object.getPostalCode());
            stm.setString(2, object.getState());
            stm.setString(3, object.getCity());
            stm.setString(4, object.getNeighborhood());
            stm.setString(5, object.getPublicArea());
            stm.setString(6, String.valueOf(object.getNumber()));
            stm.setString(7, object.getAdditionalInfo());
            stm.setString(8, String.valueOf(object.getIdUser()));
            
            int res = stm.executeUpdate();
            
            if (res != 0) {
                System.out.println("Endereco criado com sucesso");
            } else {
                throw new RuntimeException("Erro ao criar endereco ");
            }
            
            
        }catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("EnderecoDAO.create = " + ex.getMessage());
        }
	}

	@Override
	public List<Address> read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Address object) {
	    try {
            String sql = "UPDATE RM94253.TB_ENDERECO "
                    + "SET CEP = ?, "
                    + "UF = ?, "
                    + "CIDADE = ?, "
                    + "BAIRRO  = ?, "
                    + "LOGRADOURO = ?, "
                    + "NUMERO = ?, "
                    + "COMPLEMENTO = ? "
                    + "WHERE ID_USUARIO = ? ";
            
            PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
            stm.setString(1, object.getPostalCode());
            stm.setString(2, object.getState());
            stm.setString(3, object.getCity());
            stm.setString(4, object.getNeighborhood());
            stm.setString(5, object.getPublicArea());
            stm.setInt(6, object.getNumber());
//          stm.setString(7, object.getPassword());
//          stm.setInt(8, object.getId());
            stm.setString(7, object.getAdditionalInfo());
            stm.setInt(8, object.getIdUser());
            
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
	public void delete(Address object) {
		// TODO Auto-generated method stub
		
	}

}
