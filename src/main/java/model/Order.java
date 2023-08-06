package model;

import java.util.List;

public class Order {
    private int OderId;
    private User user;
    private List<Item> items;
    private int status;

    public Order() {
    }

    public Order(int oderId, User user, List<Item> items, int status) {
        OderId = oderId;
        this.user = user;
        this.items = items;
        this.status = status;
    }

    public int getOderId() {
        return OderId;
    }

    public void setOderId(int oderId) {
        OderId = oderId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
