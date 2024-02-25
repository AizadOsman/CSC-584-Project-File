/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package postlab1;

/**
 *
 * @author user
 */
public class Student 

{    
    private String studentName;
    private String studentID;
    private String program;
    private double test;
    private double assignment;
    private double finalMark;
    
    
    //default constructor
    public Student()
    {
        studentName = "name";
        studentID = "000"; 
        program = "CS00" ;
        test = 0.0;
        assignment = 0.0;
        finalMark = 0.0;
    }
    
    //accessor, getter
    public String getStudentName()
    {
        return studentName;
    }
    public String getStudentID()
    {
        return studentID;
    }
    public String getProgram()
    {
        return program;
    }
    public double getTest()
    {
        return test;
    }
    public double getAssignment()
    {
        return assignment;
    }
    public double getFinalMark()
    {
        return finalMark;
    }
    
    //mutator, setter
    public void setData (String name, String ID, String program, double test, double assignment, double mark)
    {
        this.studentName = name;
        this.studentID = ID;
        this.program = program;
        this.test = test;
        this.assignment = assignment;
        this.finalMark = mark;
    }
    
    //Printer (toString method)
    public String toString()
    {
        return "Student Name : " +studentName + "\nStudent ID : " +studentID + "\nProgram : " +program + 
                "\nTest mark : " +test + "\nAssignment mark : " +assignment + "\nFinal mark : " +finalMark;
    }
    
    
    //Method to calculate final mark
    public double calculateFinalMarks()
    {
        double finalMarks;
        finalMarks = test + assignment + finalMark;
        return finalMarks;
    }
}

