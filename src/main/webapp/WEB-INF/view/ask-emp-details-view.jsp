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
    <form:errors path="name"/>
    <br>
    <br>
    Surname <form:input path="surname" placeholder="surname"/>
    <form:errors path="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <br>
    <br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    </form:select>
    <br>
    <br>
    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    <br>
    Foreign Language(s):
    EN <form:checkbox path="languages" value="English"/>
    FR <form:checkbox path="languages" value="French"/>
    DE <form:checkbox path="languages" value="Deutch"/>
    <br>
    <br>
    <input type="submit" value="Ok"/>

</form:form>

</body>


</html>