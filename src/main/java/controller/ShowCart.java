package controller;

import model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Cart", value = "/cart")
public class ShowCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "showCart":
                showCart(request, response);
                break;
        }
    }

    private void showCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        request.setAttribute("order", order);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/userWeb/cart.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}