/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.activities;

/**
 *
 * @author user
 */
public class VariousAnimal 
{
    public static void main (String [] args)
    {
        Animal [] A = new Animal [4];
        A[0] = new Dog ("Lassie");
        A[1] = new Cow ("Mabel");
        A[2] = new Snake ("Venom");
        A[3] = new Cat ("Simba");
        
        for (Animal Animal : A)
        {
            Animal.speak();
        }
    }
}



