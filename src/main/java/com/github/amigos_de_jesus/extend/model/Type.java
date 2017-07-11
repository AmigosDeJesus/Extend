/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.amigos_de_jesus.extend.model;

/**
 *
 * @author eddyosos
 */
public enum Type {
    TEMPERATURE("Temperature"), 
    ALARM("Alarm"), 
    ELETRICITY("Eletricity"); 

    private final String formated;
    private Type(String formated){
        this.formated = formated;
    }
    @Override    
    public String toString() {
        return formated;
    }
}
