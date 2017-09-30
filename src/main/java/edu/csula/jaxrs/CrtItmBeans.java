package edu.csula.jaxrs;

public class CrtItmBeans{
    private String id;
    private String contractorDesc;
    private double prices;
    private int quant;
    private double ttlCst;

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getDescription() {
        return contractorDesc;
    }
    public void setDescription(String contractorDesc) {
        this.contractorDesc = contractorDesc;
    }
    public double getUC() {
        return prices;
    }
    public void setUC(double prices) {
        this.prices = prices;
    }
    public int getQuant() {
        return quant;
    }
    public void setQuant(int quantity) {
        quant = quantity;
    }
    public double getTtl() {
        return ttlCst;
    }
    public void setTtl(double ttlCst) {
        this.ttlCst = ttlCst;
    }
}