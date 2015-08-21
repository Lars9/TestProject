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
    <script src="../../resources/js/checkEmptyFieldsContact.js"></script>
</head>
<body>
<div>
    <h3>Add new contact</h3>
    <form:form commandName="user" method="POST" onsubmit="return checkAllEmptyContact()">
        <table>

            <div>
                <tr>
                    <td>
                        <label>Phone</label>
                    </td>
                    <td>
                        <input path="phone" class="text-field-add-user" type="text" name="phone" id="phone"/>
                    </td>
                </tr>
            </div>


        </table>
        <div class="div-add-user-buttons">
            <button class="button-add-user" type="submit">Add</button>
            <button class="button-close-addform" name="cancel" onclick="closeIt()" type="button">Close</button>
        </div>

    </form:form>
</div>

</body>
</html>
