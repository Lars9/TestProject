package controllers;

import dao.ContactDao;
import dao.UserDao;
import model.Contact;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Александр on 16.08.15.
 */
@Controller
public class HomeController {

    @Autowired
    UserDao userDao;

    @Autowired
    ContactDao contactDao;

    // ----------User-------------
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String get(Model model){

        List<User> users = userDao.getUsers();
        model.addAttribute("users", users);
        return "form1";

    }

    @RequestMapping(value="/add", method = RequestMethod.GET)
    public String addN(Model model){


       User user = new User();
        model.addAttribute("user", user);
        return "addNewUser";
    }

    @RequestMapping(value="/add", method = RequestMethod.POST)
    public String addNew(@ModelAttribute User user){


        userDao.addUser(user);
        return "redirect:/";
    }

    //Update
    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String showUpdate(@PathVariable("id") int id, Model model){

        User user = userDao.getUser(id);
        //System.out.println("User: " + user);
        model.addAttribute("user", user);
        return "editUser";

    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    public String update(@ModelAttribute User user){

        //System.out.println("POST user: " + user);
        userDao.updateUser(user);
        return "redirect:/";
    }



    @RequestMapping(value = "/remove/{id}")
    public String remove(@PathVariable("id") String ids){

        System.out.println("IN REMOVE");
        String arrayIds[] = ids.split(",");
        System.out.println("ids: " + ids);
        if (arrayIds.length == 1){
            userDao.deleteUser(Integer.parseInt(arrayIds[0]));
        }
        else{
            for (int i = 0; i < arrayIds.length; i++){
                userDao.deleteUser(Integer.parseInt(arrayIds[i]));
            }
        }
        return "redirect:/";

    }

    // ----------Contact-------------
    @RequestMapping(value = "/updateContact/{id}", method = RequestMethod.GET)
    public String showUpdateContact(@PathVariable("id") int id, Model model){

        Contact contact = contactDao.getContact(id);
        System.out.println("Contact: " + contact);
        model.addAttribute("contact", contact);
        model.addAttribute("contactUser", contact.getUser());
        return "editContact";

    }

    @RequestMapping(value = "/updateContact/{id}", method = RequestMethod.POST)
    public String updateContact(@ModelAttribute Contact contact, @ModelAttribute User contactUser){

        System.out.println("POST contact: " + contact);
        contact.setUser(contactUser);
        contactDao.updateContact(contact);
        return "redirect:/";
    }

    @RequestMapping(value = "/removeContact/{id}")
    public String removeContact(@PathVariable("id") String ids){

        String arrayIds[] = ids.split(",");
        if (arrayIds.length == 1){
            contactDao.deleteContact(Integer.parseInt(arrayIds[0]));
        }
        else{
            for (int i = 0; i < arrayIds.length; i++){
                contactDao.deleteContact(Integer.parseInt(arrayIds[i]));
            }
        }
        return "redirect:/";

    }

    @RequestMapping(value="/addContact/{userId}", method = RequestMethod.GET)
    public String addContactPage(@PathVariable("userId") int userId, Model model){


        Contact contact = new Contact();
        contact.setUser(userDao.getUser(userId));
        model.addAttribute("contact", contact);
        return "addContact";
    }

    @RequestMapping(value="/addContact/{user.id}", method = RequestMethod.POST)
    public String addNewContact(@ModelAttribute Contact contact){

        contactDao.addContact(contact);
        return "redirect:/";
    }

}
