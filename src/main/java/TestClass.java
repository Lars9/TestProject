import dao.ContactDao;
import dao.UserDao;
import model.Contact;
import model.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Александр on 16.08.15.
 */
public class TestClass {
    public static void main(String[] args){
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-app.xml");
        UserDao dao =(UserDao) context.getBean("userDao");
        ContactDao contactDao = (ContactDao)context.getBean("contactDao");

        User user = new User();
        user.setFio("Alexeev Nikita Sergeevich");
        // dao.addUser(user);

        User user1 = dao.getUser(2);
        System.out.println("user1: " + user1);
        user1.setFio("Monya");

        dao.updateUser(user1);
        System.out.println(dao.getUsers());
        System.out.println("User contacts: " + dao.getUser(1).getContacts());

        Contact contact = new Contact();
        contact.setId(5);
        contact.setPhone("3132423432424424");
        //contact.setEmail("email@.ru");
        contact.setUser(dao.getUser(3));
        contactDao.addContact(contact);

        System.out.println(contactDao.getContacts());


    }
}
