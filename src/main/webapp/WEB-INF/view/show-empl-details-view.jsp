<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>

<body>

<h2>

    Employee name:    ${employee.name}
    <br>
    Employee surname:      ${employee.surname}
    <br>
    Employee salary: $      ${employee.salary}
    <br>
    Employee department:      ${employee.department}
    <br>
    Your car:          ${employee.carBrand}
    <br>
    Language(s):
    <ul>
        <c:forEach var="lang" items="${employee.languages}">
            <li>    ${lang}    </li>
        </c:forEach>
    </ul>
    <br>
    Phone number: ${employee.phoneNumber}
    <br>
    Email: ${employee.email}

</h2>

</body>


</html>