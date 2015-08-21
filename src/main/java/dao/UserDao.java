package dao;

import model.User;
import java.util.List;

/**
 * Created by Alex.Titov on 16.08.2015.
 */

public interface UserDao {
    public void addUser(User user);
    public void updateUser(User user);
    public void deleteUser(int id);
    public User getUser(int id);
    public List<User> getUsers();
}
