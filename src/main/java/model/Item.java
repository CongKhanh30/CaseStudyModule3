package model;

public class Item{
    private int ItemId;
    private Product product;
    private int quantity;
    private double price;
    private double totalPrice;

    public Item() {
    }

    public Item(int itemId, Product product, int quantity, double price) {
        ItemId = itemId;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public int getItemId() {
        return ItemId;
    }

    public void setItemId(int itemId) {
        ItemId = itemId;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public double getTotalPrice() {
        return this.price * this.quantity;
    }
    public void setPrice(double price) {
        this.price = price;
    }
}
