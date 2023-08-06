package controller;

import model.Product;
import model.User;
import service.service.ProductService;
import service.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    private UserService userService = new UserService();
    private ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "getAll":
                showProductAll(request, response);
                break;
            case "getAllLogged":
                showFormgetAllLogged(request, response);
                break;
        }
    }

    private void showProductAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = productService.getAll();
        request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/userWeb/home.jsp");
        dispatcher.forward(request, response);
    }

    private void showFormgetAllLogged(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = productService.getAll();
        request.setAttribute("productList", productList);
        HttpSession session = request.getSession(false);
        User user = userService.getUser((int) session.getAttribute("userId"));
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/userWeb/homeLogged.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}