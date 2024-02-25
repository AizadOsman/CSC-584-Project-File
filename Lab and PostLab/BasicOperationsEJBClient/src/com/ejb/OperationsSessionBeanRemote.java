/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ejb;

import javax.ejb.Remote;

/**
 *
 * @author user
 */
@Remote
public interface OperationsSessionBeanRemote {

    float add(float x, float y);

    float substract(float x, float y);

    float multiply(float x, float y);

    float divide(float x, float y);
    
}
