package dao;

import model.Contact;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Александр on 18.08.15.
 */
@Repository
@Transactional
public class ContactDaoImpl implements ContactDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Contact> getContacts() {

        return sessionFactory.getCurrentSession().createQuery("SELECT c from Contact c").list() ;
    }

    @Override
    public Contact getContact(int id) {
        return (Contact) sessionFactory.getCurrentSession().get(Contact.class, id);
    }

    @Override
    public void deleteContact(int id) {
        sessionFactory.getCurrentSession().delete(sessionFactory.getCurrentSession().load(Contact.class, id));
    }

    @Override
    public void updateContact(Contact contact) {
        sessionFactory.getCurrentSession().saveOrUpdate(contact);
    }

    @Override
    public void addContact(Contact contact) {
        sessionFactory.getCurrentSession().save(contact);
    }
}
