<%--
  Created by IntelliJ IDEA.
  User: Alex.Titov
  Date: 19.08.2015
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title></title>
    <link href="../../resources/css/style.css" rel="stylesheet"/>
    <script src="../../resources/js/closeForm.js"></script>
    <!-- <link href="../../resources/style.css" rel="stylesheet"/> -->
    <script src="../../resources/js/checkEmptyFieldsUser.js"></script>
</head>
<body>
  <div>
  <h3>Add new User</h3>
  <form:form commandName="user" method="POST" onsubmit="return checkAllEmpty()">
       <table>

          <div>
          <tr>
             <td>
               <label>FIO</label>
             </td>
             <td>
               <input path="fio" class="text-field-add-user" type="text" name="fio" id="fio"/>
             </td>
          </tr>
          </div>


     </table>
      <div class="div-add-user-buttons">
         <button class="button-add-user" type="submit">Add</button>

      <!-- <input type="button" onclick="close()" value="cancel"/> -->
          <button class="button-close-addform" name="cancel" onclick="closeIt()" type="button">Close</button>
      </div>

  </form:form>
  </div>

</body>
</html>
