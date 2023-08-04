package service.service;

import model.Import;
import service.connect.ConnectionToMySQL;
import service.iService.IServiceCRUD;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

public class ImportService implements IServiceCRUD<Import> {
    Connection connection = ConnectionToMySQL.getConnection();

    @Override
    public void add(Import anImport) {

    }

    @Override
    public void edit(int id, Import anImport) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<Import> getAll() {
        List<Import> importList=new ArrayList<>();
        String sql="select import.*,user.username,product.productName from (import inner join user on import.userId = user.userId) inner join product on import.productId=product.productId order by importId;";

        return null;
    }
}
