<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Student Management</title>
    </head>

    <body>

        <script type="text/javascript">

            function doAjax() {
                $.ajax({
                    type: 'GET',
                    url: "http://localhost:8095/CRUDWebAppMavenized/student/test",
                    dataType: "text",
                    success: renderList
                });
            }
            function renderList(data) {
                $("#te").val(data);
            }
        </script>

        <h1>Students Data</h1>
        <form:form action="student.do" method="POST" commandName="student">

            <table>
                <tr>
                    <td>Student ID</td>
                    <td><form:input path="studentId" /></td>
                </tr>
                <tr>
                    <td>First name</td>
                    <td><form:input path="firstname" /></td>
                </tr>
                <tr>
                    <td>Last name</td>
                    <td><form:input path="lastname" /></td>
                </tr>
                <tr>
                    <td>Year Level</td>
                    <td><form:input path="yearLevel" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="action" value="Add" />
                        <input type="submit" name="action" value="Edit" />
                        <input type="submit" name="action" value="Delete" />
                        <input type="submit" name="action" value="Search" />

                    </td>
                </tr>
            </table>
        </form:form>


        <br>

        <div id="display">

        </div>

        <table border="1">
            <th>ID</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Year level</th>
            <c:forEach items="${studentList}" var="student">
                <tr>
                    <td>${student.studentId}</td>
                    <td>${student.firstname}</td>
                    <td>${student.lastname}</td>
                    <td>${student.yearLevel}</td>
                </tr>
            </c:forEach>
        </table>
                  
        <input type="submit" id="test" value="test" onclick="doAjax()"/>
        <input type="text" id="te"/>
            
            
        <form id="new" action="/map">
            <input type="text" id="names" name="names"/>
            <input type="submit" id="sub" name="sub"   />
            
        </form>
    </body>
</html>