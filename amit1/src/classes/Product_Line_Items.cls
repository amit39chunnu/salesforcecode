/*create a apex class Product_Line_Items with datamembers product of type Product_Info*/
public class Product_Line_Items {
    public Product_Info products;     //reference variable
    /*constructor*/
    public Product_Line_Items(){
        /*initialize the product*/
        products=new Product_Info();        
    }
    /*create a method setData and assign the value of product*/
    public void setData(){
        products.name='Iphone';
        products.price=80000;
        products.quant=3;
        products.discount=2000;
    }
    /*create a method display and print the value of product*/
    public void display(){
        System.debug('Name:'+products.name);
        System.debug('Price:'+products.price);
        System.debug('Quant:'+products.quant);
        System.debug('Discount:'+products.discount);
    }
}