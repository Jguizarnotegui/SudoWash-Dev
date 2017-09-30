package edu.csula.jaxrs;
import java.util.ArrayList;


public class BeansForCart {
    private ArrayList crtItems = new ArrayList();
    private double dbOrdTtl ;
  
    public int getitemCnt() {
        return crtItems.size();
    }
  
    public void delCrtItem(String indices) {
        int iniceItem = 0;
        try {
            iniceItem = Integer.parseInt(indices);
            crtItems.remove(iniceItem - 1);
            OrderTtl();
        } catch(NumberFormatException nf) {
            System.out.println("Error while deleting cart item: "+nf.getMessage());
            nf.printStackTrace();
        }
    }
  
    public void alterCart(String indices, String quants) {
        double ttlCst = 0.0;
        double prices = 0.0;
        int quant = 0;
        int iniceItem = 0;
        CrtItmBeans crtItm = null;
        try {
            iniceItem = Integer.parseInt(indices);
            quant = Integer.parseInt(quants);
            if(quant>0) {
                crtItm = (CrtItmBeans)crtItems.get(iniceItem-1);
                prices = crtItm.getUC();
                ttlCst = prices*quant;
                crtItm.setQuant(quant);
                crtItm.setTtl(ttlCst);
                OrderTtl();
            }
        } catch (NumberFormatException nf) {
        System.out.println("Error while updating cart: "+nf.getMessage());
        nf.printStackTrace();
        }

    }
  
    public void addingItem(String mdll, String desc,
        String units, String quants) {
        double ttlCst = 0.0;
        double prices = 0.0;
        int quant = 0;
        CrtItmBeans crtItm = new CrtItmBeans();
        try {
            prices = Double.parseDouble(units);
            quant = Integer.parseInt(quants);
            if(quant>0) {
                ttlCst = prices*quant;
                crtItm.setId(mdll);
                crtItm.setDescription(desc);
                crtItm.setUC(prices);
                crtItm.setQuant(quant);
                crtItm.setTtl(ttlCst);
                crtItems.add(crtItm);
                OrderTtl();
            }
  
        } catch (NumberFormatException nf) {
        System.out.println("Error while parsing from String to primitive types: "+nf.getMessage());
        nf.printStackTrace();
        }
    }
  
    public void addingItem(CrtItmBeans crtItm) {
        crtItems.add(crtItm);
    }
  
    public CrtItmBeans getCrt(int iniceItem) {
        CrtItmBeans crtItm = null;
        if(crtItems.size()>iniceItem) {
            crtItm = (CrtItmBeans) crtItems.get(iniceItem);
        }
        return crtItm;
    }
  
    public ArrayList getCrts() {
        return crtItems;
    }
    
    public void setCartItems(ArrayList crtItems) {
        this.crtItems = crtItems;
    }
    
    public double getOrderCount() {
        return dbOrdTtl;
    
    }
    
    public void setOrderTotal(double dbOrdTtl) {
        this.dbOrdTtl = dbOrdTtl;
    }
  
    protected void OrderTtl() {
        double dblTotal = 0;
        for(int cnt=0;cnt<crtItems.size();cnt++) {
            CrtItmBeans crtItm = (CrtItmBeans) crtItems.get(cnt);
            dblTotal+=crtItm.getTtl();
  
        }
        setOrderTotal(dblTotal);
    }

}