package dao;

import model.Contact;

import java.util.List;

/**
 * Created by Александр on 18.08.15.
 */
public interface ContactDao {
    public void addContact(Contact contact);
    public void updateContact(Contact contact);
    public void deleteContact(int id);
    public Contact getContact(int id);
    public List<Contact> getContacts();

}
