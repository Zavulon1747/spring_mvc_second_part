<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>
    Dear guest, please, fill the field with your details.
</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name" placeholder="name"/>
    <br>
    <br>
    Surname <form:input path="surname" placeholder="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <br>
    <br>
    Department <form:input path="department"/>
    <br>
    <input type="submit" value="Ok"/>

</form:form>

</body>


</html>