package model;


import java.sql.Date;

public class Import {
    private int importId;
    private User user;
    private Product product;
    private int quantityImport;
    private Date dateImport;

    public Import(int importId, User user, Product product, int quantityImport, Date dateImport) {
        this.importId = importId;
        this.user = user;
        this.product = product;
        this.quantityImport = quantityImport;
        this.dateImport = dateImport;
    }

    public int getImportId() {
        return importId;
    }

    public void setImportId(int importId) {
        this.importId = importId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantityImport() {
        return quantityImport;
    }

    public void setQuantityImport(int quantityImport) {
        this.quantityImport = quantityImport;
    }

    public Date getDateImport() {
        return dateImport;
    }

    public void setDateImport(Date dateImport) {
        this.dateImport = dateImport;
    }
}
