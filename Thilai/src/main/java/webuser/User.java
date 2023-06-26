package webuser;

import employee.Employee;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class User extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeConnector employeeConnector;

    public void init() {
        employeeConnector = new EmployeeConnector();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/new":
                showNewForm(request, response);
                break;
            case "/insert":
                insertEmployee(request, response);
                break;
            case "/delete":
                deleteEmployee(request, response);
                break;
            case "/edit":
                showEditForm(request, response);
                break;
            case "/update":
                updateEmployee(request, response);
                break;
            case "/list":
                listEmployee(request, response);
                break;
            case "/delete-all":
                deleteAll(response);
                break;
            default:
                listEmployee(request, response);
                break;
        }
    }

    private void deleteAll(HttpServletResponse response) {
    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

    private void updateEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

    private void insertEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
    }


}
