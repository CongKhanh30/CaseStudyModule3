package controller;

import model.User;
import service.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserController", value = "/user")
public class UserController extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "login":
                showFormLogin(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            case "register":
                showFormRegister(request, response);
                break;
        }
    }

    private void showFormLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/user/login.jsp");
        dispatcher.forward(request, response);
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/user?action=login");
    }

    private void showFormRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = userService.getAll();
        request.setAttribute("userList", userList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/user/register.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "login":
                login(request, response);
                break;
            case "register":
                register(request, response);
                break;
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean check = false;
        for (User user : userService.getAll()) {
            if (user.getUsername().equals(username)) {
                check = true;
                break;
            }
        }
        if (check) {
            String mess = "Tài khoản đã tồn tại";
            request.setAttribute("mess", mess);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/user/register.jsp");
            dispatcher.forward(request, response);
        } else {
            User user = new User(username, password);
            userService.add(user);

            response.sendRedirect("user?action=login");
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (userService.checkLogin(username, password)) {
            response.sendRedirect("/view/product/product.jsp");
        } else {
            response.sendRedirect("/user?action=login");
        }
    }
}