package model;

public class Product {
    private int productId;
    private String productName;
    private Brand brand;
    private Category category;
    private String detail;
    private int quantity;
    private double price;

    public Product(String productName, Brand brand, Category category, String detail, int quantity, double price) {
        this.productName = productName;
        this.brand = brand;
        this.category = category;
        this.detail = detail;
        this.quantity = quantity;
        this.price = price;
    }

    public Product(int productId, String productName, Brand brand, Category category, String detail, int quantity, double price) {
        this.productId = productId;
        this.productName = productName;
        this.brand = brand;
        this.category = category;
        this.detail = detail;
        this.quantity = quantity;
        this.price = price;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
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

    public void setPrice(double price) {
        this.price = price;
    }
}
