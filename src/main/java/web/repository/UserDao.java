package web.repository;

import web.model.User;

import java.util.List;

public interface UserDao {
    List<User> getAllUsers();
    void saveUser(User user);
    User getById(int id);
    void deleteUser(int id);
}
