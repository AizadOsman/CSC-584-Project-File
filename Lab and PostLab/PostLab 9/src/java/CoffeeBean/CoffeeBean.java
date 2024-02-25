package CoffeeBean;

import java.io.Serializable;
public class CoffeeBean implements Serializable
{
    // Data member
    private int numSugar;
    private double price;
    private String typeCoffee;
    
    // Constructor (default)
    public CoffeeBean()
    {
        numSugar = 0;
        price = 0.0;
        typeCoffee = "";
    }
    
    // Constructor (normal)
    public CoffeeBean (int numSugar, double price, String typeCoffee)
    {
        this.numSugar = numSugar;
        this.price = price;
        this.typeCoffee = typeCoffee;
    }
    
    // Accessor
    public int getNumSugar()
    {
        return numSugar;
    }
    public double getPrice()
    {
        return price;
    }
    public String getTypeCoffee()
    {
        return typeCoffee;
    }
    
    // Mutator
    public void setNumSugar(int ns)
    {
        numSugar = ns;
    }
    public void setPrice (double p)
    {
        price = p;
    }
    public void setTypeCoffee (String tc)
    {
        typeCoffee = tc;
    }
}
