
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title></title>
    <link href="../../resources/css/style.css" rel="stylesheet"/>
    <script src="../../resources/js/closeForm.js"></script>
    <script src="../../resources/js/checkEmptyFieldsContact.js"></script>
</head>
<body>
<h3>Edit contact</h3>

<form:form commandName="contact" method="POST" onsubmit="return checkAllEmptyContact()">
    <table>

        <tr>
            <td>
                <label>FIO</label>
            </td>
            <td>
                <input class="text-field-add-user" type="text" name="phone" id="phone" value="${contact.phone}"/>
            </td>
        </tr>


    </table>
    <div class="div-add-user-buttons">
        <button class="button-add-user" type="submit">Update</button>

        <!-- <input type="button" onclick="close()" value="cancel"/> -->
        <button class="button-close-addform" name="cancel" onclick="closeIt()" type="button">Close</button>
    </div>

</form:form>

</body>
</html>
