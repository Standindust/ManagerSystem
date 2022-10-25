package shopping;
import java.util.*;
import product.*;


public class ShoppingCart {
  HashMap items = null;
  int numberOfItems = 0;

  public ShoppingCart() {
      items = new HashMap();
  }

  public synchronized void add(String ProId, Product product) {
    if(items.containsKey(ProId)) {
        ShoppingCartItem scitem = (ShoppingCartItem) items.get(ProId);
        scitem.incrementQuantity();
    } else {
        ShoppingCartItem newItem = new ShoppingCartItem(product);
        items.put(ProId, newItem);
    }

    numberOfItems++;
  }

  public synchronized void remove(String ProId) {
    if(items.containsKey(ProId)) {
        ShoppingCartItem scitem = (ShoppingCartItem) items.get(ProId);
        scitem.decrementQuantity();

        if(scitem.getQuantity() <= 0)
            items.remove(ProId);

        numberOfItems--;
    }
  }

  public synchronized Collection getItems() {
      return items.values();
  }

  protected void finalize() throws Throwable {
      items.clear();
  }

  public synchronized int getNumberOfItems() {
      return numberOfItems;
  }
  public synchronized double getTotal() {
    double amount = 0.0;

    for(Iterator i = getItems().iterator(); i.hasNext(); ) {
        ShoppingCartItem item = (ShoppingCartItem) i.next();
        Product products = (Product) item.getItem();

        amount += item.getQuantity() * products.getNowPrice();
    }
    return roundOff(amount);
  }

  private double roundOff(double x) {
      long val = Math.round(x*100); // cents
      return val/100.0;
  }

  public synchronized void clear() {
      items.clear();
      numberOfItems = 0;
  }
}

