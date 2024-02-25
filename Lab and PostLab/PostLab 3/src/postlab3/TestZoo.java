/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package postlab3;

/**
 *
 * @author user
 */
import java.util.*;
public class TestZoo 
{   
    public static void main (String [] args)
    {
        boolean govServ = false;
        double price=0.0;
        double total=0.0;
        double totalPrice=0.0;
        int dayCount=0;
        int nightCount=0;
        
        Scanner sc = new Scanner(System.in); //for input name,ic,gov,time,category
        Scanner rx = new Scanner(System.in); //for input boolean A,B,C
    
        ZooTaiping [] zoo = new ZooTaiping[20];
        
        for (int i=0; i<zoo.length; i++)
        {
            System.out.print("\nEnter Name: ");
            String name = sc.nextLine();
            
            System.out.print("Enter IC Number: ");
            String ic = sc.nextLine();
            
            System.out.print("Are you a government servant (Y-Yes / N-No): ");
            char gov = sc.nextLine().charAt(0);
            
            if(gov == 'Y')
            {
                govServ = true;
            }
            else if (gov == 'N')
            {
                govServ = false;
            }
            
            System.out.print("Please select time to visit (Day / Night): ");
            String time = sc.nextLine();
            
            if(time.equalsIgnoreCase("Day"))
            {
                System.out.print("\nAre you Adult or Children: ");
                String category = sc.nextLine();
                zoo[i] = new DayVisit(name, ic, govServ, category);
                price = zoo[i].totalCharges();
                
                if(govServ == true)
                {
                    price = price * 0.85;
                }
                total += price;
                dayCount++;         
            }
            else if(time.equalsIgnoreCase("Night"))
            {
                System.out.print("\nSelect Package (Y-Select / N-Diselect)");
                System.out.print("\nPackage A (RM50) (Y/N): ");
                boolean A = rx.nextLine().equalsIgnoreCase("Y")?true:false;
                System.out.print("Package B (RM 75) (Y/N): ");
                boolean B = rx.nextLine().equalsIgnoreCase("Y")?true:false;
                System.out.print("Package C (RM 100)(Y/N): ");
                boolean C = rx.nextLine().equalsIgnoreCase("Y")?true:false;
                
                if(A == true)
                {
                    price = 50.00;
                }
                else if(B == true)
                {
                    price = 75.00;
                }
                else if (C == true)
                {
                    price = 100;
                }   
                zoo[i] = new NightVisit(name, ic, govServ, A, B, C);
                price = zoo[i].totalCharges();
                
                if(govServ == true)
                {
                    price = price * 0.85;
                }
                total += price;
                nightCount++;                
            }
        }
            System.out.println("\n-------------------------------------");    
            System.out.println("Number of Day visitors: " +dayCount);
            System.out.println("Number of Night visitors: " +nightCount);
            System.out.println("Total income of Zoo Taiping: " +total);
            
            //to display Night visitors who purchase package C
            System.out.println("\n-------------------------------------");   
            System.out.print("List of Night Visitors who purchase Package C \n");
            NightVisit nv;
            for(int i=0; i<zoo.length; i++)
            {
                if( zoo[i] instanceof NightVisit)
                {
                    nv = (NightVisit)zoo[i];
                    if(nv.getPackageC()== true)
                    System.out.println(((NightVisit)zoo[i]).toString());
                }
            }
    }
}
