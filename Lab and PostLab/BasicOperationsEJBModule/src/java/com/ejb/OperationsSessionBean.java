/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ejb;

import javax.ejb.Stateless;

/**
 *
 * @author user
 */
@Stateless
public class OperationsSessionBean implements OperationsSessionBeanRemote {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    @Override
    public float add(float x, float y) {
        return x + y;
    }
    
    @Override
    public float substract(float x, float y) {
        return x - y;
    }

    @Override
    public float multiply(float x, float y) {
        return x * y;
    }

    @Override
    public float divide(float x, float y) {
        return x / y;
    }
    
}
