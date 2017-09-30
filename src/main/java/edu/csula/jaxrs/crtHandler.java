package edu.csula.jaxrs;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class crtHandler extends HttpServlet {
  
    public void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        String act = req.getParameter("action");

            if(act!=null && !act.equals("")) {
                if(act.equals("add")) {
                    addCrt(req);
                } else if (act.equals("Update")) {
                    alteringCrt(req);
                } else if (act.equals("Delete")) {
                    deleteCart(req);
                }
            }
            res.sendRedirect("../Shopping.jsp");
    }
  
    protected void deleteCart(HttpServletRequest req) {
        HttpSession sess = req.getSession();
        String indices = req.getParameter("itemIndice");
        BeansForCart bfc = null;

        Object objCrt = sess.getAttribute("cart");
        if(objCrt!=null) {
            bfc = (BeansForCart) objCrt ;
        } else {
            bfc = new BeansForCart();
        }
            bfc.delCrtItem(indices);
        }
  
    protected void alteringCrt(HttpServletRequest req) {
        HttpSession sess = req.getSession();
        String quants = req.getParameter("quantity");
        String indices = req.getParameter("itemIndice");
  
        BeansForCart bfc = null;

        Object objCrt = sess.getAttribute("cart");
        if(objCrt!=null) {
            bfc = (BeansForCart) objCrt ;
        } else {
            bfc = new BeansForCart();
        }
            bfc.alterCart(indices, quants);
        }
  
    protected void addCrt(HttpServletRequest req) {
        HttpSession sess = req.getSession();
        String mdll = req.getParameter("modelNo");
        String desc = req.getParameter("description");
        String strPrice = req.getParameter("price");
        String quants = req.getParameter("quantity");

        BeansForCart bfc = null;

        Object objCrt = sess.getAttribute("cart");

        if(objCrt!=null) {
            bfc = (BeansForCart) objCrt ;
        } else {
            bfc = new BeansForCart();
            sess.setAttribute("cart", bfc);
        }

        bfc.addingItem(mdll, desc, strPrice, quants);
    }

}