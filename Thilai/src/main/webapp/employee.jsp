<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 26/06/2023
  Time: 7:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Employee</title>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="#" class="navbar-brand"> Employee Management App </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Employees</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${employee != null}">
            <form action="update" method="post">
                </c:if>
                <c:if test="${employee == null}">
                <form action="insert" method="post">
                    </c:if>

                    <caption>
                        <h2>
                            <c:if test="${employee != null}">
                                Edit Employee
                            </c:if>
                            <c:if test="${employee == null}">
                                Add New Employee
                            </c:if>
                        </h2>
                    </caption>

                    <c:if test="${employee != null}">
                        <input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
                    </c:if>

                    <fieldset class="form-group">
                        <label>Full Name</label> <input type="text" value="<c:out value='${employee.full_name}' />" class="form-control" name="full_name" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Birthday</label> <input type="text" value="<c:out value='${employee.birthday}' />" class="form-control" name="birthday">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Address</label> <input type="text" value="<c:out value='${employee.address}' />" class="form-control" name="address">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Position</label> <input type="text" value="<c:out value='${employee.position}' />" class="form-control" name="position">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Department</label> <input type="text" value="<c:out value='${employee.department}' />" class="form-control" name="department">
                    </fieldset>

                    <button type="submit" class="btn btn-success">Save</button>
                    <button type="reset" class="btn btn-primary">Reset</button>
                </form>
        </div>
    </div>
</div>
</html>
