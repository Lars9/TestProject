<%--
  Created by IntelliJ IDEA.
  User: Александр
  Date: 19.08.15
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link href="../../resources/css/style.css" rel="stylesheet"/>
    <script src="../../resources/js/pagination.js"></script>
    <script src="../../resources/js/checkChekboxs.js"></script>
    <script src="../../resources/js/cancelSearch.js"></script>
    <script src="../../resources/js/checkContactsCheckboxes.js"></script>

</head>
<body>
      <table class="table-out" id="tablepaging" name="table1">
          <tr class="tr-table-out">
              <th>FIO</th>
              <th>
                  <label class="">For marked users:</label>
                  <button class="button-delete-marked" name="deletemark" onclick="check()">
                      delete
                  </button>
              </th>
              <th colspan="3">
                  <button class="button-add" name="add" onclick="location.href='/add'">
                      <img src="../../resources/images/add.png"/>
                      Add new User
                  </button>
              </th>
              <th>Contacts</th>
              <th>
                  <label class="">For marked contacts:</label>
                  <button class="button-delete-marked" name="deletemark" onclick="checkContactsCheckboxes()">
                      delete
                  </button>
              </th>
          </tr>
          <c:forEach var="user" items="${users}">
              <tr class="tr-table-out">
                  <td>${user.fio}</td>
                  <td class="td-checkbox">
                      <input type="checkbox" id="${user.id}" name="ch"  />
                  </td>
                  <td>
                      <button class="button-add-contact" name="addContact" onclick="location.href = '/addContact/${user.id}'">
                          Add contact
                      </button>
                  </td>
                  <td>
                      <button class="button-update" name="update" onclick="location.href = '/update/${user.id}'">
                          Edit
                      </button>
                  </td>
                  <td class="tr3">
                      <button class="button-delete" name="delete" onclick="location.href = '/remove/${user.id}'">
                          Delete
                      </button>
                  </td>
                   <td>
                       <table>
                              <c:forEach var="contact" items="${user.contacts}">
                                  <tr class="tr2">
                                      <td> ${contact.phone}</td>
                                  </tr>
                              </c:forEach>

                            </tr>
                       </table>

                  </td>
                  <td>
                      <table>
                          <c:forEach var="contact" items="${user.contacts}">
                             <tr>
                                 <td>
                                     <input type="checkbox" id="${contact.id}" name="ch1"  />
                                 </td>
                                <td>
                                   <button class="button-update" name="update" onclick="location.href = '/updateContact/${contact.id}'">
                                       Edit
                                   </button>
                                </td>
                                <td>
                                   <button class="button-delete" name="delete" onclick="location.href = '/removeContact/${contact.id}'">
                                       Delete
                                   </button>
                                </td>
                             </tr>
                          </c:forEach>
                      </table>
                  </td>
              </tr>
          </c:forEach>
      </table>


   <div id="pageNavPosition" style="padding-top: 20px" align="center">

      <script type="text/javascript">
         var pager = new Pager('tablepaging', 5);
         pager.id='pager';
         pager.init();
         pager.showPageNav('pager', 'pageNavPosition');
         pager.showPage(1);

      </script>
   </div>

   </body>
</html>