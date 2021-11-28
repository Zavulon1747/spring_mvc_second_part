<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>

<body>

<h2>

    Employee name:    ${employee.name}
    <br>
    Employee surname:      ${employee.surname}
    <br>
    Employee salary:      ${employee.salary}
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

</h2>

</body>


</html>