/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package person.bean;

/**
 *
 * @author user
 */
public class Staff implements java.io.Serializable {
    
    //data member
    String name;
    int salary;
    String designation;
    
    //Constructor
    public Staff(String name, int salary, String designation) {
        this.name = name;
        this.salary = salary;
        this.designation = designation;
    }
    
    //Get method
    public String getName()
    {
        return name;
    }
    public int getSalary()
    {
        return salary;
    }
    public String getDesignation()
    {
        return designation;
    }
    
    //Set method
    public void setName(String nm)
    {
        name = nm;
    }
    public void setSalary(int sal)
    {
        salary = sal;
    }
    public void setDesignation(String dsg)
    {
        designation = dsg;
    }
    
}
