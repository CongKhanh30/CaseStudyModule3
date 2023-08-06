package controller;

import model.Item;
import model.Order;
import model.Product;
import service.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "addToCartController", value = "/addToCart")
public class addToCartController extends HttpServlet {
    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "addToCart":
                addToCart(request, response);
                break;
        }
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int quantity = 1;
        int id;
        if (request.getParameter("productId") != null) {
            id = Integer.parseInt(request.getParameter("productId"));
            Product product = productService.findProductById(id);
            if (product != null) {
                if (request.getParameter("quantity") != null) {
                    quantity = Integer.parseInt(request.getParameter("quantity"));
                }

                HttpSession session = request.getSession();
                if (session.getAttribute("order") == null) {
                    Order order = new Order();
                    List<Item> itemList = new ArrayList<>();
                    Item item = new Item();
                    item.setQuantity(quantity);
                    item.setProduct(product);
                    item.setPrice(product.getPrice());
                    item.getTotalPrice();
                    itemList.add(item);
                    order.setItems(itemList);
                    session.setAttribute("order", order);
                } else {
                    Order order = (Order) session.getAttribute("order");
                    List<Item> itemList = order.getItems();
                    boolean check = false;
                    for (Item item : itemList) {
                        if (item.getProduct().getProductId() == product.getProductId()) {
                            item.setQuantity(item.getQuantity() + 1);
                            item.getTotalPrice();
                            check = true;
                        }
                    }
                    if (check == false) {
                        Item item = new Item();
                        item.setQuantity(quantity);
                        item.setProduct(product);
                        item.setPrice(product.getPrice());
                        item.getTotalPrice();
                        itemList.add(item);
                    }
                    session.setAttribute("order", order);
                }
            }
            response.sendRedirect("/home?action=getAll");
        } else {
            response.sendRedirect("/home?action=getAll");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}