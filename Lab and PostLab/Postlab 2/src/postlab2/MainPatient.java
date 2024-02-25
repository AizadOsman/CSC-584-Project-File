/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package postlab2;

import java.util.*;

/**
 *
 * @author user
 */

//superclass
class Patient 
{
    private String patientName; // patient name
    private int patientNumber; // patient number
    private String patientAddress; // patient address
    
    //normal constructor
    public Patient (String name, int number, String address)
    {
        patientName = name;
        patientNumber = number;
        patientAddress = address;
    }
    
    //mutator
    public void setPatientName (String name)
    {
        patientName = name;
    }
    public void setPatientNumber (int number)
    {
        patientNumber = number;
    }
    public void setPatientAddress (String address)
    {
        patientAddress = address;
    }
    
    //retriever
    public String getPatientName ()
    {
        return patientName;
    }
    public int getPatientNumber ()
    {
        return patientNumber;
    }
    public String getPatientAddress ()
    {
        return patientAddress;
    }
    
    //printer
    public String toString()
    {
        return "Patient name: " + patientName + "Patient number: " + patientNumber + "Patient Address: " + patientAddress;
    }
}

//subclass
class Room extends Patient
{
    private String typeRoom;
    private int noDay;
    
    //constructor
    public Room (String name, int number, String address, String room, int day)
    {
        super(name, number, address);
        typeRoom = room;
        noDay = day;
    }
    
    //mutator
    public void setTypeRoom (String room)
    {
        typeRoom = room;
    }
    public void setNoDay (int day)
    {
        noDay = day;
    }
    
    //retriever
    public String getTypeRoom ()
    {
        return typeRoom;
    }
    public int getNoDay () 
    {
        return noDay;
    }
    
    //printer
    public String toString()
    {
        return "Room type: " + typeRoom + "Period: " + noDay;
    }
    
    //method to calculate room price
    public double calcPayment(int day)
    {
        double roomPrice = 0.0;
        
        if (typeRoom.equalsIgnoreCase("Diamond"))
        {
            roomPrice = day * 200;  
        }
        else if (typeRoom.equalsIgnoreCase("Gold"))
        {
            roomPrice = day * 100;
        }
        else if (typeRoom.equalsIgnoreCase("Silver"))
        {
            roomPrice = day * 80;
        }
        else if (typeRoom.equalsIgnoreCase("Bronze"))
        {
            roomPrice = day * 50;
        }
        
        if (noDay > 20)
        {
            roomPrice = roomPrice * 0.75;
        }
        return roomPrice;
    }
}

//main class
public class MainPatient
{
    public static void main (String [] args)
    {
        double price;
        double total = 0.0;
        int count20=0;
        
        Scanner sc = new Scanner(System.in);
        Scanner rx = new Scanner(System.in);
        
        Patient [] p = new Patient [10];
        
        for (int i=0; i<p.length; i++)
        {
            System.out.print("\nEnter patient name: ");
            String name = sc.nextLine();
            
            System.out.print("Enter patient number: ");
            int num = rx.nextInt();
            
            System.out.print("Enter patient address: ");
            String address = sc.nextLine();
            
            System.out.print("Choose Room Type (Diamond/Gold/Silver/Bronze): ");
            String room = sc.nextLine();
            
            System.out.print("Enter day(s) period: ");
            int day = rx.nextInt();
            
            if (day > 20)
            {
                count20++;
            }
            
            p[i] = new Room(name, num, address, room, day);
            
            price = ((Room)p[i]).calcPayment(day);
            
            total += price;
        }
        System.out.println("\nThe number of patient who stay more than 20 days: " +count20);
        System.out.println("The total Payment: " +total);
        double average = total/p.length;
        System.out.println("The average payment: " +average);
    }
}

