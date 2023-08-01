package service.service;

import model.User;
import service.iService.IServiceCRUD;

import java.sql.Connection;
import java.util.List;

public class UserService implements IServiceCRUD<User> {
    Connection connection = ConnectionToMySQL.getConnection();

    @Override
    public void add(User user) {

    }

    @Override
    public void edit(int id, User user) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<User> getAll() {
        return null;
    }
}
