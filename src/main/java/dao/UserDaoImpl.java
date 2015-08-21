package dao;


import model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Alex.Titov on 16.08.2015.
 */

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<User> getUsers() {
        return sessionFactory.getCurrentSession().createQuery("SELECT c FROM User c").list();
    }

    @Override
    public User getUser(int id) {

        return (User)sessionFactory.getCurrentSession().get(User.class, id);
    }

    @Override
    public void deleteUser(int id) {

        sessionFactory.getCurrentSession().delete(sessionFactory.getCurrentSession().get(User.class, id));
    }

    @Override
    public void addUser(User user) {

        sessionFactory.getCurrentSession().save(user);

    }

    @Override
    public void updateUser(User user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);

    }
}
